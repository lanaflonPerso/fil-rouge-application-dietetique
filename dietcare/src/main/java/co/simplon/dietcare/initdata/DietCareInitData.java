package co.simplon.dietcare.initdata;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;

import co.simplon.dietcare.model.Aliment;
import co.simplon.dietcare.model.Category;
import co.simplon.dietcare.repository.AlimentRepository;
import co.simplon.dietcare.repository.CategoryRepository;

@Component
public class DietCareInitData implements ApplicationListener<ContextRefreshedEvent> {

	private final static char CSV_SEPARATOR = ';';
	private CategoryRepository categoryRepo;
	private AlimentRepository alimentRepo;
	
	public DietCareInitData(CategoryRepository categoryRepo, AlimentRepository alimentRepo) {
		super();
		this.categoryRepo = categoryRepo;
		this.alimentRepo = alimentRepo;
	}

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		loadCategoryTable("data/csv/groupes.csv");
		loadAlimentTable("data/csv/aliments.csv");
		loadGlycemicFile("data/csv/glycemique.csv");
	}
	
	// load category table
	private final void loadCategoryTable(String categFileLocation) {

		CSVParser csvParser = new CSVParserBuilder().withSeparator(CSV_SEPARATOR).build();

		try (CSVReader reader = new CSVReaderBuilder(new FileReader(categFileLocation)).withCSVParser(csvParser).build()) {

			// Reading all file content into fileLineList.
			List<String[]> fileLineList = reader.readAll();

			// For each file line, we get first column (which represents category name)
			// and create the Category.
			for (String[] fileLine : fileLineList) {
				Category categ = new Category(fileLine[0]);
				categoryRepo.save(categ);
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
			// We do nothing John Snow, as this is for Dev DB fill up
		} catch (IOException e) {
			e.printStackTrace();
			// We do nothing John Snow, as this is for Dev DB fill up
		}
	}

	// load aliment table
	private final void loadAlimentTable(String alimFileLocation) {
		
		System.exit(0);

		CSVParser csvParser = new CSVParserBuilder().withSeparator(CSV_SEPARATOR).build();

		try (CSVReader reader = new CSVReaderBuilder(new FileReader(alimFileLocation)).withCSVParser(csvParser).build()) {

			// regex for checking decimal format with comma 
			final String regex = "\\d+(,\\d*)?";

			// Reading all file content into fileLineList.
			List<String[]> fileLineList = reader.readAll();

			// Getting all categories from DB to be able to link them to aliment items.
			Map<String, Category> categMap = categoryRepo.findAll().stream()
					.collect(Collectors.toMap(Category::getName, Function.identity()));

			
			 // For each file line we first try to find the corresponding category. Then we
			 // create a new Aliment item with the csv file data.
			 
			List<Aliment> newAlimentList = new ArrayList<>();
			for (String[] fileLine : fileLineList) {
				String categoryStr = "";
				Category categ;

				if (fileLine[0] != null && !fileLine[0].isEmpty() && !fileLine[0].equals("-")) {
					categoryStr += fileLine[0];
				}
				
				categ = categMap.get(categoryStr);

				Aliment alim = new Aliment(null, fileLine[3], "", "",
						fileLine[6].matches(regex) ? new Float(fileLine[6].replace(',', '.')) : 0f,
						fileLine[7].matches(regex) ? new Float(fileLine[7].replace(',', '.')) : 0f,
						fileLine[8].matches(regex) ? new Float(fileLine[8].replace(',', '.')) : 0f,
						fileLine[11].matches(regex) ? new Float(fileLine[11].replace(',', '.')) : 0f, null, categ);

				newAlimentList.add(alim);
				
			}

			alimentRepo.saveAll(newAlimentList);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
			// We do nothing John Snow, as this is for Dev DB fill up
		} catch (IOException e) {
			e.printStackTrace();
			// We do nothing John Snow, as this is for Dev DB fill up
		}
		
		
	}
	
	// set IG for aliments
	private void loadGlycemicFile(String igFileLocation) {

		CSVParser csvParser = new CSVParserBuilder().withSeparator(CSV_SEPARATOR).build();

		try (CSVReader reader = new CSVReaderBuilder(new FileReader(igFileLocation)).withCSVParser(csvParser).build()) {

			List<String[]> fileLineList = reader.readAll();
			List<Aliment> alimToUpdateList = new ArrayList<>();

			for (String[] fileLine : fileLineList) {
				// get IG
				Float glycemicIndex = (StringUtils.isNotEmpty(fileLine[1])) ? new Float(fileLine[1]) : null;

				// find aliment with name containing aliment name from IG file (ignore case)
				List<Aliment> possibleAlimToUpdate = alimentRepo.findByNameContainingIgnoreCase(fileLine[0]);
				for (Aliment alimToUpdate : possibleAlimToUpdate) {
					alimToUpdate.setIg(glycemicIndex);
					alimToUpdateList.add(alimToUpdate);
				}
				
			}

			alimentRepo.saveAll(alimToUpdateList);

		} catch (FileNotFoundException e) {
			// We do nothing John Snow, as this is for Dev DB fill up
			e.printStackTrace();
		} catch (IOException e) {
			// We do nothing John Snow, as this is for Dev DB fill up
			e.printStackTrace();
		}
	}

	
}
