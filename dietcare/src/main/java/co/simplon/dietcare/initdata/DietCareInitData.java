package co.simplon.dietcare.initdata;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

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
		//loadCategoryTable("data/csv/groupes.csv");
		//loadAlimentTable("data/csv/aliments.csv");
	}

	private final void loadAlimentTable(String alimFileLocation) {
		
		System.exit(0);

		CSVParser csvParser = new CSVParserBuilder().withSeparator(CSV_SEPARATOR).build();

		try (CSVReader reader = new CSVReaderBuilder(new FileReader(alimFileLocation)).withCSVParser(csvParser).build()) {

			final String d = "\\d+";

			// Reading all file content into fileLineList.
			List<String[]> fileLineList = reader.readAll();

			// Getting all categories from DB to be able to link them to aliment items.
			Map<String, Category> categMap = categoryRepo.findAll().stream()
					.collect(Collectors.toMap(Category::getName, Function.identity()));

			/*
			 * For each file line we first try to find the corresponding category. Then we
			 * create a new Aliment item with the csv file data.
			 */
			List<Aliment> newAlimentList = new ArrayList<>();
			for (String[] fileLine : fileLineList) {
				String categoryStr = "";
				Category categ;
				/*
				if (fileLine[2] != null && !fileLine[2].isEmpty() && !fileLine[2].equals("-")) {
					groupFullHierarchy += fileLine[2];
				}
				
				if (fileLine[1] != null && !fileLine[1].isEmpty() && !fileLine[1].equals("-")) {
					groupFullHierarchy += fileLine[1];
				}
				*/
				if (fileLine[0] != null && !fileLine[0].isEmpty() && !fileLine[0].equals("-")) {
					categoryStr += fileLine[0];
				}
				
				categ = categMap.get(categoryStr);

				/*Aliment alim = new Aliment(fileLine[3], categ, null, fileLine[4].matches(d) ? new BigDecimal(fileLine[4]) : null,
						fileLine[5].matches(d) ? new BigDecimal(fileLine[5]) : null,
						fileLine[6].matches(d) ? new BigDecimal(fileLine[6]) : null,
						fileLine[7].matches(d) ? new BigDecimal(fileLine[7]) : null,
						fileLine[8].matches(d) ? new BigDecimal(fileLine[8]) : null,
						fileLine[9].matches(d) ? new BigDecimal(fileLine[9]) : null,
						fileLine[10].matches(d) ? new BigDecimal(fileLine[10]) : null,
						fileLine[11].matches(d) ? new BigDecimal(fileLine[11]) : null,
						fileLine[12].matches(d) ? new BigDecimal(fileLine[12]) : null,
						fileLine[13].matches(d) ? new BigDecimal(fileLine[13]) : null,
						fileLine[14].matches(d) ? new BigDecimal(fileLine[14]) : null,
						fileLine[15].matches(d) ? new BigDecimal(fileLine[15]) : null,
						fileLine[16].matches(d) ? new BigDecimal(fileLine[16]) : null,
						fileLine[17].matches(d) ? new BigDecimal(fileLine[17]) : null,
						fileLine[18].matches(d) ? new BigDecimal(fileLine[18]) : null,
						fileLine[19].matches(d) ? new BigDecimal(fileLine[19]) : null,
						fileLine[20].matches(d) ? new BigDecimal(fileLine[20]) : null,
						fileLine[21].matches(d) ? new BigDecimal(fileLine[21]) : null,
						fileLine[22].matches(d) ? new BigDecimal(fileLine[22]) : null,
						fileLine[23].matches(d) ? new BigDecimal(fileLine[23]) : null,
						fileLine[24].matches(d) ? new BigDecimal(fileLine[24]) : null,
						fileLine[25].matches(d) ? new BigDecimal(fileLine[25]) : null,
						fileLine[26].matches(d) ? new BigDecimal(fileLine[26]) : null,
						fileLine[27].matches(d) ? new BigDecimal(fileLine[27]) : null,
						fileLine[28].matches(d) ? new BigDecimal(fileLine[28]) : null,
						fileLine[29].matches(d) ? new BigDecimal(fileLine[29]) : null,
						fileLine[30].matches(d) ? new BigDecimal(fileLine[30]) : null,
						fileLine[31].matches(d) ? new BigDecimal(fileLine[31]) : null,
						fileLine[32].matches(d) ? new BigDecimal(fileLine[32]) : null,
						fileLine[33].matches(d) ? new BigDecimal(fileLine[33]) : null,
						fileLine[34].matches(d) ? new BigDecimal(fileLine[34]) : null,
						fileLine[35].matches(d) ? new BigDecimal(fileLine[35]) : null,
						fileLine[36].matches(d) ? new BigDecimal(fileLine[36]) : null,
						fileLine[37].matches(d) ? new BigDecimal(fileLine[37]) : null,
						fileLine[38].matches(d) ? new BigDecimal(fileLine[38]) : null,
						fileLine[39].matches(d) ? new BigDecimal(fileLine[39]) : null,
						fileLine[40].matches(d) ? new BigDecimal(fileLine[40]) : null,
						fileLine[41].matches(d) ? new BigDecimal(fileLine[41]) : null,
						fileLine[42].matches(d) ? new BigDecimal(fileLine[42]) : null);

				newAlimentList.add(alim);*/
				
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
	
	

	
}
