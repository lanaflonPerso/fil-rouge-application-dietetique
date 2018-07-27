--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-07-27 09:56:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;


--
-- TOC entry 2859 (class 0 OID 17880)
-- Dependencies: 198
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, name) FROM stdin;
1	entrées et plats composés
2	fruits, légumes, légumineuses et oléagineux
3	produits céréaliers
4	viandes, œufs, poissons
5	lait et produits laitiers
6	boissons
7	produits sucrés
8	glaces et sorbets
9	matières grasses
10	aides culinaires et ingrédients divers
11	aliments infantiles
\.


--
-- TOC entry 2861 (class 0 OID 17888)
-- Dependencies: 200
-- Data for Name: dietcomponent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dietcomponent (id, description, name, visual) FROM stdin;
1		Céleri rémoulade, préemballé	
2		Salade de thon et légumes, appertisée, égouttée	
3		Salade composée avec viande ou poisson, appertisée, égouttée	
4		Champignon à la grecque	
5		Salade de pommes de terre maison	
6		Taboulé ou Salade de couscous, préemballé	
7		Salade de pomme de terre à la piémontaise, préemballée	
8		Salade de riz	
9		Salade de pâtes, végétarienne	
10		Crudité, sans assaisonnement (aliment moyen)	
11		Salade de pâtes aux légumes, avec poisson ou viande	
12		Salade César au poulet (salade verte, fromage, croûtons, sauce)	
13		Salade de chou ou Coleslaw, avec sauce, préemballée	
14		Taboulé ou Salade de couscous au poulet, préemballé	
15		Soupe aux lentilles, préemballée à réchauffer	
16		Soupe à la volaille et aux légumes, préemballée à réchauffer	
17		Soupe aux légumes variés, préemballée à réchauffer	
18		Soupe de poissons et / ou crustacés, préemballée à réchauffer	
19		Soupe aux légumes variés, déshydratée reconstituée	
20		Soupe aux poireaux et pommes de terre, préemballée à réchauffer	
21		Soupe à la volaille et aux vermicelles, préemballée à réchauffer	
22		Bouillon de viande et légumes type pot-au-feu, prêt à consommer	
23		Soupe à l'oignon, préemballée à réchauffer	
24		Soupe aux champignons, préemballée à réchauffer	
25		Soupe à la carotte, préemballée à réchauffer	
26		Soupe à la tomate, préemballée à réchauffer	
27		Soupe chorba frik, à base de viande et de frik	
28		Soupe minestrone, préemballée à réchauffer	
29		Soupe au pistou, déshydratée reconstituée	
30		Soupe de poissons et / ou crustacés, déshydratée reconstituée	
31		Soupe asiatique, avec pâtes, déshydratée reconstituée	
32		Soupe marocaine, déshydratée reconstituée	
33		Soupe aux poireaux et pommes de terre, déshydratée reconstituée	
34		Soupe à la volaille et aux légumes, déshydratée reconstituée	
35		Bouillon de boeuf, déshydraté reconstitué	
36		Soupe aux asperges, déshydratée reconstituée	
37		Soupe à la tomate et aux vermicelles, préemballée à réchauffer	
38		Soupe aux céréales et aux légumes, déshydratée reconstituée	
39		Soupe à la tomate, déshydratée reconstituée	
40		Soupe aux champignons, déshydratée reconstituée	
41		Soupe à l'oignon, déshydratée reconstituée	
42		Soupe au potiron, préemballée à réchauffer	
43		Bouillon de volaille, déshydraté reconstitué	
44		Bouillon de légumes, déshydraté reconstitué	
45		Soupe à la tomate et aux vermicelles, déshydratée reconstituée	
46		Soupe à la volaille et aux vermicelles, déshydratée reconstituée	
47		Soupe au pistou, préemballée à réchauffer	
48		Soupe au potiron, déshydratée reconstituée	
49		Soupe asiatique, avec pâtes, préemballée à réchauffer	
50		Soupe minestrone, déshydratée reconstituée	
51		Soupe au cresson, déshydratée reconstituée	
52		Soupe au cresson, préemballée à réchauffer	
53		Soupe aux légumes avec fromage, préemballée à réchauffer	
54		Soupe aux légumes verts, préemballée à réchauffer	
55		Soupe aux légumes verts, déshydratée reconstituée	
56		Soupe aux pois cassés, préemballée à réchauffer	
57		Soupe froide type Gaspacho ou Gazpacho	
58		Soupe aux asperges, préemballée à réchauffer	
59		Soupe (aliment moyen)	
60		Soupe miso	
61		Tripes à la mode de Caen	
62		Tripes à la mode de Caen, préemballées	
63		Tripes à la tomate ou à la provençale	
64		Blanquette de veau	
65		Boeuf bourguignon	
66		Canard en sauce (poivre vert, chasseur, etc.)	
67		Lapin à la moutarde	
68		Coq au vin	
69		Paupiette de veau	
70		Paupiette de volaille	
71		Viande en sauce (aliment moyen)	
72		Poulet au curry et au lait de coco	
73		Meloukhia, plat à base de boeuf et corete	
74		Palette à la diable	
75		Langue de bœuf sauce madère	
76		Porc au caramel	
77		Boulettes au bœuf, à la sauce tomate	
78		Paupiette de veau, cuite au four	
79		Carpaccio de bœuf, avec marinade	
80		Yakitori (brochettes japonaises grillées en sauce)	
81		Hachis Parmentier à la viande	
82		Couscous au mouton	
83		Couscous à la viande ou au poulet, allégé	
84		Poêlée de pommes de terre préfrites, lardons ou poulet, et autres, sans légumes verts	
85		Couscous royal (avec plusieurs viandes)	
86		Couscous au poulet	
87		Couscous à la viande	
88		Parmentier de canard	
89		Parmentier de canard, cuit	
90		Cassoulet, appertisé	
91		Choucroute garnie	
92		Petit salé ou saucisse aux lentilles	
93		Pot-au-feu	
94		Boeuf aux carottes	
95		Potée auvergnate (chou et porc)	
96		Cassoulet au porc, appertisé	
97		Cassoulet au canard ou oie, appertisé	
98		Tomate farcie	
99		Chou farci	
100		Chili con carne	
101		Moussaka	
102		Navarin d'agneau aux légumes	
103		Tajine de mouton	
104		Osso buco	
105		Poulet basquaise	
106		Tajine de poulet	
107		Chop suey (porc ou poulet)	
108		Légumes farcis (sauf tomate)	
109		Moules marinières (oignons et vin blanc)	
110		Moules farcies (matière grasse, persillade…), crues	
111		Gratin ou cassolette de poisson et / ou fruits de mer, à cuire	
112		Gratin ou cassolette de poisson et / ou fruits de mer, cuit	
113		Saumon à l'oseille	
114		Poisson blanc à la bordelaise	
115		Poisson blanc à la provençale ou niçoise (sauce tomate)	
116		Poisson blanc à la florentine (sauce aux épinards)	
117		Poisson blanc à la marinière (sauce aux oignons, vin blanc, moules)	
118		Poisson blanc à la sauce moutarde	
119		Poisson blanc à la parisienne (sauce aux champignons)	
120		Poisson blanc à l'estragon	
121		Poisson blanc sauce oseille	
122		Saumon farci	
123		Brochette de poisson	
124		Brochette de crevettes	
125		Poisson en sauce, surgelé	
126		Poisson cuit (aliment moyen)	
127		Poisson blanc, cuit (aliment moyen)	
128		Poisson blanc, de mer, cuit (aliment moyen)	
129		Paëlla	
130		Couscous au poisson	
131		Gratin de poisson et purée ou brandade aux pommes de terre ou parmentier de poisson	
132		Sushi ou Maki aux produits de la mer	
133		Terrine ou mousse de légumes	
134		Flan de légumes	
135		Haricots blancs à la sauce tomate, appertisés	
136		Piperade basquaise	
137		Poêlée de légumes assaisonnés sans champignon, surgelée, crue	
138		Poêlée de légumes assaisonnés à l'asiatiques ou wok de légumes, surgelée, crue	
139		Poêlée de légumes assaisonnés grillée, méridionale ou méditerranéenne, surgelée, crue	
140		Poêlée de légumes assaisonnés aux champignons ("champêtre"), surgelée	
141		Tofu, nature	
142		Escalope végétale ou steak à base de soja	
143		Choucroute, sans garniture, égouttée	
144		Ratatouille cuisinée	
145		Épinards à la crème	
146		Gratin d'aubergine	
147		Gratin dauphinois	
148		Endive au jambon	
149		Gratin de chou-fleur	
150		Gratin de légumes	
151		Riste d'aubergines (aubergines, tomates, oignons)	
152		Palet ou galette de légumes, préfrit, surgelé	
153		Palet ou galette de légumes, préfrit, surgelé, cuit	
154		Choucroute, sans garniture, égouttée, cuite	
155		Tomate à la provençale	
156		Beignet de légumes	
157		Falafel ou Boulette de pois-chiche et/ou fève, frite	
158		Gratin de légumes en sauce blanche type béchamel, cuit	
159		Blé dur précuit cuisiné, en sachet micro-ondable	
160		Blé dur précuit, grains entiers, cuisiné, à poêler	
161		Ravioli à la viande, sauce tomate, appertisé	
162		Lasagnes ou cannelloni à la viande (bolognaise)	
163		Pâtes à la bolognaise (spaghetti, tagliatelles…)	
164		Riz cantonais	
165		Ravioli chinois à la vapeur à la crevette, cuit	
166		Gratin de pâtes	
167		Lasagnes ou cannelloni aux légumes	
168		Pâtes à la carbonara (spaghetti, tagliatelles…)	
169		Lasagnes ou cannelloni au poisson	
170		Pâtes fraîches farcies (ex : raviolis, ravioles du Dauphiné), au fromage, cuites	
171		Couscous de légumes	
172		Pâtes fraîches farcies (ex : raviolis), au fromage et aux légumes, cuites	
173		Pâtes fraîches farcies (ex : raviolis), à la viande (ex : bolognaise), crues	
174		Pâtes fraîches farcies (ex : raviolis), à la viande (ex : bolognaise), cuites	
175		Pâtes fraîches farcies (ex : raviolis, ravioles du Dauphiné), au fromage, crues	
176		Pâtes fraîches farcies (ex : raviolis), au fromage et aux légumes, crues	
177		Nouilles sautées/poêlées aux crevettes	
178		Riz blanc, cuit, avec poulet	
179		Riz blanc, cuit, avec légumes et viande	
180		Risotto, aux légumes	
181		Risotto, aux fruits de mer	
182		Risotto, aux fromages	
183		Raviolis aux légumes, sauce tomate, appertisés	
184		Pâtes fraîches farcies (ex : raviolis), aux légumes, cuites	
185		Pâtes en sauce aux fromages (spaghetti, tagliatelles…)	
186		Pâtes fraîches farcies (ex : ravioli), aux légumes, crues	
187		Pâtes fraîches farcies (ex : raviolis), cuites (aliment moyen)	
188		Feuille de vigne farcie au riz ou dolmas, égouttée	
189		Lasagnes ou cannelloni aux légumes, cuits	
190		Lasagnes ou canelloni aux légumes et au fromage de chèvre, cuits	
191		Lasagnes ou cannelloni au fromage et aux épinards	
192		Aligot (purée de pomme de terre à la tomme fraîche)	
193		Soufflé au fromage	
194		Tartiflette	
195		Gougère	
196		Fondue savoyarde (fromages, vin, pain)	
197		Fromage pané au jambon	
198		Pizza au fromage ou Pizza margherita	
199		Quiche lorraine	
200		Crêpe ou Galette fourrée béchamel jambon	
201		Crêpe ou Galette fourrée béchamel jambon fromage	
202		Crêpe ou Galette fourrée béchamel champignon	
203		Tarte aux légumes	
204		Pizza jambon fromage	
205		Tarte au fromage	
206		Tarte à la provençale	
207		Pizza à la viande, type bolognaise	
208		Burritos	
209		Fajitas	
210		Pizza au chorizo ou salami	
211		Pizza aux fruits de mer	
212		Pizza au saumon	
213		Pizza au chèvre et lardons	
214		Pizza aux légumes ou Pizza 4 saisons	
215		Pizza champignons fromage	
216		Pizza 4 fromages	
217		Pizza (aliment moyen)	
218		Pissaladière	
219		Tarte à l'oignon	
220		Pizza jambon fromage champignons ou pizza royale, reine ou regina	
221		Crêpe ou Galette fourrée béchamel fromage	
222		Flammenkueche ou Tarte flambée aux lardons	
223		Crêpe ou Galette fourrée béchamel jambon fromage champignon	
224		Tarte ou Tourte aux poireaux	
225		Tarte au saumon	
226		Tourte au riesling	
227		Tarte à la tomate	
228		Crêpe ou Galette complète (œuf, jambon, fromage)	
229		Tarte aux noix de Saint-Jacques	
230		Pastilla au poulet	
231		Pizza aux lardons, oignons et fromage	
232		Crêpe ou Galette aux noix de St Jacques	
233		Tarte ou quiche salée (aliment moyen)	
234		Crêpe ou Galette fourrée béchamel champignon, cuite	
235		Tarte au maroilles ou Flamiche au maroilles	
236		Crêpe ou Galette fourrée au poisson et / ou fruits de mer	
237		Ficelle picarde	
238		Tarte épinard chèvre	
239		Tielle sétoise	
240		Pizza au thon	
241		Pizza kebab	
242		Pizza au poulet	
243		Pizza type raclette ou tartiflette	
244		Pizza au speck ou jambon cru	
245		Focaccia, garnie	
246		Fougasse, garnie	
247		Croque-monsieur	
248		Hot-dog	
249		Hamburger, provenant de fast food	
250		Cheeseburger, provenant de fast food	
251		Double cheeseburger, provenant de fast food	
252		Burger au poisson	
253		Sandwich grec ou Kebab, pita, crudités	
254		Sandwich grec ou Kebab, baguette, crudités	
255		Sandwich baguette, thon, crudités (tomate, salade), mayonnaise	
256		Sandwich panini, jambon cru, mozzarella, tomates	
257		Sandwich baguette, jambon, oeuf dur, crudités (tomate, salade), beurre	
258		Sandwich baguette, poulet, crudités (tomate, salade), mayonnaise	
259		Sandwich baguette, jambon emmental	
260		Sandwich baguette, saumon fumé, beurre	
261		Sandwich baguette, thon, maïs, crudités	
262		Burger au poulet	
263		Pan bagnat	
264		Sandwich baguette, jambon, beurre	
265		Sandwich baguette, camembert, beurre	
266		Sandwich baguette, pâté, cornichons	
267		Sandwich baguette, saucisson, beurre	
268		Sandwich baguette, jambon, emmental, beurre	
269		Sandwich (aliment moyen)	
270		Toasts ou Canapés salés, garnitures diverses	
271		Sandwich baguette, crudités diverses, mayonnaise	
272		Sandwich baguette, dinde, crudités (tomate, salade), mayonnaise	
273		Sandwich baguette, oeuf, crudités (tomate, salade), mayonnaise	
274		Sandwich baguette, porc, crudités (tomate, salade), mayonnaise	
275		Sandwich baguette, merguez, ketchup moutarde	
276		Sandwich baguette, salami, beurre	
277		Croque-madame	
278		Sandwich baguette (aliment moyen)	
279		Sandwich pain de mie, garnitures diverses	
280		Croque-monsieur, rayon frais	
281		Sandwich pain de mie complet, jambon, crudités, fromage optionnel	
282		Sandwich pain de mie complet, thon, crudités, mayonnaise	
283		Sandwich pain de mie complet, jambon, fromage	
284		Sandwich pain de mie complet, poulet, crudités, mayonnaise	
285		Cake salé (garniture : fromage, légumes, viande, poisson, volaille, etc.)	
286		Samossas ou Samoussas	
287		Feuilleté au poisson et / ou fruits de mer	
288		Spécialité chinoise ou bouchées à la vapeur, cuite	
289		Feuilleté aux escargots	
290		Feuilleté ou Friand au fromage	
291		Feuilleté ou Friand à la viande	
292		Bouchée à la reine, à la viande/volaille/quenelle	
293		Croissant au jambon	
294		Rouleau de printemps	
295		Nem ou Pâté impérial	
296		Brick garni (garniture : crevettes, légumes, volaille, viande, poisson, etc.)	
297		Bouchée à la reine, au poisson et fruits de mer	
298		Feuilleté ou Friand jambon fromage	
299		Beignet de viande, volaille ou poisson, fait maison	
300		Brick à l'oeuf	
301		Brick au boeuf	
302		Brick à la pomme de terre	
303		Feuilleté salé (aliment moyen)	
304		Bouchée à la reine, garnie (aliment moyen)	
305		Nem ou Pâté impérial, au poulet, cuit	
306		Nem ou Pâté impérial, au porc, cuit	
307		Nem ou Pâté impérial, aux crevettes et/ou au crabe, cuit	
308		Croissant au jambon fromage	
309		Avocat, pulpe, cru	
310		Bette ou blette, crue	
311		Carotte, crue	
312		Champignon, tout type, cru	
313		Salade ou chicorée frisée, crue	
314		Chou rouge, cru	
315		Chou-fleur, cru	
316		Concombre, pulpe et peau, cru	
317		Courgette, pulpe et peau, crue	
318		Cresson de fontaine, cru	
319		Céleri branche, cru	
320		Endive, crue	
321		Fenouil, cru	
322		Laitue, crue	
323		Oignon, cru	
324		Pissenlit, cru	
325		Poireau, cru	
326		Poivron, vert, jaune ou rouge, cru	
327		Potiron, cru	
328		Radis rouge, cru	
329		Tomate, crue	
330		Artichaut, cru	
331		Aubergine, crue	
332		Cardon, cru	
333		Céleri-rave, cru	
334		Champignon de Paris ou champignon de couche, cru	
335		Brocoli, cru	
336		Chou de Bruxelles, cru	
337		Épinard, cru	
338		Haricot vert, cru	
339		Navet, pelé, cru	
340		Chou-rave, cru	
341		Chou vert, cru	
342		Haricot vert, surgelé, cru	
343		Petits pois, crus	
344		Asperge, pelée, crue	
345		Chou-fleur, surgelé, cru	
346		Épinard, surgelé, cru	
347		Petits pois, surgelés, crus	
348		Poivron vert, cru	
349		Poivron rouge, cru	
350		Radis noir, cru	
351		Scarole, crue	
352		Betterave rouge, crue	
353		Échalote, crue	
354		Mâche, crue	
355		Légumes, mélange surgelé, crus	
356		Champignon, chanterelle ou girolle, crue	
357		Champignon, morille, crue	
358		Maïs doux, en épis, surgelé, cru	
359		Oseille, crue	
360		Champignon, pleurote, crue	
361		Chou blanc, cru	
362		Tomate verte, crue	
363		Haricot de Lima, cru	
364		Courge musquée, pulpe, crue	
365		Potimarron, pulpe, cru	
366		Courge hokkaïdo, pulpe, crue	
367		Courge melonnette, pulpe, crue	
368		Courge doubeurre (butternut), pulpe, crue	
369		Courge, crue	
370		Courge spaghetti, pulpe, crue	
371		Piment, cru	
372		Champignon, oronge vraie, crue	
373		Champignon, cèpe, cru	
374		Champignon, rosé des prés, cru	
375		Chicorée rouge, crue	
376		Chicorée verte, crue	
377		Citrouille, pulpe, crue	
378		Chou chinois ou pak-choi ou pé-tsai, cru	
379		Poivron jaune, cru	
380		Laitue romaine, crue	
381		Tomate cerise, crue	
382		Pois mange-tout ou pois gourmand, cru	
383		Panais, cru	
384		Haricot mungo germé ou pousse de "soja", cru	
385		Haricot beurre, cru	
386		Salsifis noir, cru	
387		Bambou, pousse, crue	
388		Cresson alénois, cru	
389		Laitue iceberg, crue	
390		Rutabaga, cru	
391		Haricot beurre, surgelé, cru	
392		Brocoli, surgelé, cru	
393		Chou de Bruxelles, surgelé, cru	
394		Carotte, surgelée, crue	
395		Concombre, pulpe, cru	
396		Petits pois et carottes, surgelés, crus	
397		Roquette, crue	
398		Chou frisé, cru	
399		Champignon de Paris ou champignon de couche, surgelé, cru	
400		Courgette, pulpe et peau, surgelée, crue	
401		Crosne, surgelé, cru	
402		Artichaut, fond, surgelé, cru	
403		Maïs doux, surgelé, cru	
404		Navet, surgelé, cru	
405		Oignon, surgelé, cru	
406		Poireau, surgelé, cru	
407		Salsifis, surgelé, cru	
408		Légumes pour potages, surgelés, crus	
409		Julienne ou brunoise de légumes, surgelée, crue	
410		Légumes pour ratatouille, surgelés	
411		Printanière de légumes, surgelée, crue (haricots verts, carottes, pomme de terre, petits pois, oignons)	
412		Haricot plat, cru	
413		Épinard, jeunes pousses pour salades, cru	
414		Mesclun ou salade, mélange de jeunes pousses	
415		Asperge, verte, crue	
416		Chou romanesco ou brocoli à pomme, cru	
417		Asperge, blanche ou violette, pelée, crue	
418		Salicorne (Salicornia sp.), fraîche	
419		Légumes pour couscous, surgelés, crus	
420		Salade verte, crue, sans assaisonnement	
421		Banane plantain, crue	
422		Artichaut, cuit	
423		Asperge, bouillie/cuite à l'eau	
424		Aubergine, cuite	
425		Betterave rouge, cuite	
426		Bette ou blette, cuite	
427		Brocoli, cuit	
428		Carotte, appertisée, égouttée	
429		Carotte, cuite	
430		Champignon, tout type, appertisé, égoutté	
431		Chou de Bruxelles, cuit	
432		Chou vert, cuit	
433		Chou-fleur, cuit	
434		Coeur de palmier, appertisé, égoutté	
435		Courgette, pulpe et peau, cuite	
436		Céleri branche, cuit	
437		Céleri-rave, cuit	
438		Épinard, cuit	
439		Haricot mungo germé ou pousse de "soja", appertisé, égoutté	
440		Haricot vert, cuit	
441		Navet, cuit	
442		Oignon, cuit	
443		Petits pois, appertisés, égouttés	
444		Petits pois, cuits	
445		Poireau, cuit	
446		Potiron, appertisé, égoutté	
447		Salsifis, cuit	
448		Tomate, pelée, appertisée, égouttée	
449		Maïs doux, en épis, cuit	
450		Macédoine de légumes, appertisée, égouttée	
451		Épinard, appertisé, égoutté	
452		Haricot vert, appertisé, égoutté	
453		Haricot beurre, appertisé, égoutté	
454		Maïs doux, appertisé, égoutté	
455		Artichaut, appertisé, égoutté	
456		Tomate, concentré, appertisé	
457		Haricot vert, surgelé, cuit	
458		Asperge, appertisée, égouttée	
459		Chou de Bruxelles, appertisé, égoutté	
460		Céleri branche, appertisé, égoutté	
461		Champignon de Paris ou champignon de couche, appertisé, égoutté	
462		Salsifis, appertisé, égoutté	
463		Poivron vert, cuit	
464		Poivron rouge, cuit	
465		Petits pois et carottes, appertisés, égouttés	
466		Chou-rave, bouilli/cuit à l'eau	
467		Chou rouge, bouilli/cuit à l'eau	
468		Potiron, cuit	
469		Champignon de Paris ou champignon de couche, bouilli/cuit à l'eau	
470		Fenouil, bouilli/cuit à l'eau	
471		Épinard, surgelé, cuit	
472		Chou-fleur, surgelé, cuit	
473		Petits pois, surgelés, cuits	
474		Champignon de Paris ou champignon de couche, sauté/poêlé, sans matière grasse	
475		Panais, cuit	
476		Fondue de poireau	
477		Courge spaghetti, pulpe, cuite	
478		Artichaut, coeur, appertisé, égoutté	
479		Artichaut, fond, appertisé, égoutté	
480		Tétragone cornue, cuite	
481		Rutabaga, cuit	
482		Tomate, pulpe, appertisée	
483		Tomate, purée, appertisée	
484		Bambou, pousses, appertisées, égouttées	
485		Brocoli, surgelé, cuit	
486		Chou de Bruxelles, surgelé, cuit	
487		Carotte, surgelée, cuite	
488		Champignon, lentin comestible ou shiitaké, cuit	
489		Petits pois et carottes, surgelés, cuits	
490		Pois mange-tout ou pois gourmand, bouilli/cuit à l'eau	
491		Chou frisé, cuit	
492		Chou chinois (pak-choi ou pé-tsai), cuit	
493		Cardon, cuit	
494		Tomate, pulpe et peau, bouillie/cuite à l'eau	
495		Pois mange-tout ou pois gourmands, cuits	
496		Échalote, cuite	
497		Haricots verts, purée	
498		Légumes (3-4 sortes en mélange), purée	
499		Brocoli, purée	
500		Tomate, coulis, appertisé (purée de tomates mi-réduite à 11%)	
501		Carotte, purée	
502		Courgette, purée	
503		Tomate, double concentré, appertisé	
504		Macédoine de légumes, surgelée	
505		Poivron rouge, appertisé, égoutté	
506		Céleri-rave, purée	
507		Petits pois, purée	
508		Épinard, purée	
509		Tomate, pulpe et peau, rôtie/cuite au four	
510		Légumes pour couscous, cuits	
511		Légume cuit (aliment moyen)	
512		Gombo, fruit, cuit	
513		Oignon, séché	
514		Tomate, séchée	
515		Champignon, lentin comestible ou shiitaké, séché	
516		Tomate, séchée, à l'huile	
517		Tapioca ou Perles du Japon, cru	
518		Pomme de terre, sans peau, cuite au four	
519		Pomme de terre, bouillie/cuite à l'eau	
520		Chips de pommes de terre, standard	
521		Pomme de terre, sans peau, crue	
522		Pomme de terre, appertisée, égouttée	
523		Pomme de terre noisette, surgelée, crue	
524		Pomme de terre vapeur, sous vide	
525		Pomme de terre, sautée/poêlée	
526		Pomme de terre, flocons déshydratés, au lait ou à la crème	
527		Pomme de terre, purée à base de flocons, reconstituée avec lait entier, matière grasse	
528		Pomme de terre, purée, avec lait et beurre, non salée	
529		Pomme de terre, purée à base de flocons, reconstituée avec lait demi-écrémé et eau, non salée	
530		Pomme de terre dauphine, surgelée, crue	
531		Pomme de terre dauphine, surgelée, cuite	
532		Pomme de terre, flocons déshydratés, nature	
533		Pomme de terre nouvelle, crue	
534		Potatoes ou Wedges ou Quartiers de pommes de terre épicés, surgelées, cuites	
535		Pomme de terre, rôtie/cuite au four	
536		Pomme de terre rissolée, surgelée, cuite	
537		Pomme de terre de conservation, sans peau, bouillie/cuite à l'eau	
538		Pomme de terre primeur, sans peau, bouillie/cuite à l'eau	
539		Frites de pommes de terre, surgelées, rôties/cuites au four	
540		Frites de pommes de terre, surgelées, cuites en friteuse	
541		Pomme de terre duchesse, surgelée, cuite	
542		Pomme de terre noisette, surgelée, cuite	
543		Pomme de terre sautée/poêlée à la graisse de canard	
544		Chips de pommes de terre, à l'ancienne	
545		Chips de pommes de terre et assimilés, allégées en matière grasse	
546		Rostis ou Galette de pomme de terre	
547		Pomme de terre duchesse, surgelée, crue	
548		Pomme de terre rissolée, surgelée, crue	
549		Frites de pommes de terre, surgelées, pour cuisson rôtie/ au four	
550		Frites de pommes de terre, surgelées, pour cuisson micro-ondes	
551		Frites de pommes de terre, surgelées, pour cuisson en friteuse	
552		Pomme de terre, purée (aliment moyen)	
553		Pomme de terre, cuite (aliment moyen)	
554		Patate douce, crue	
555		Patate douce, cuite	
556		Patate douce, purée, cuisinée à la crème	
557		Topinambour, cuit	
558		Topinambour, cru	
559		Banane plantain, cuite	
560		Taro, tubercule, cru	
561		Taro, tubercule, cuit	
562		Igname, épluchée, crue	
563		Igname, épluchée, bouillie/cuite à l'eau	
564		Manioc, racine crue	
565		Manioc, racine cuite	
566		Fruit à pain, cru	
567		Fève, cuite	
568		Haricot blanc, cuit	
569		Haricot rouge, cuit	
570		Lentille, cuite	
571		Pois cassé, cuit	
572		Pois chiche, cuit	
573		Haricot flageolet, appertisé, égouttés	
574		Lentille, cuisinée, appertisée, égouttée	
575		Haricot blanc, appertisé, égoutté	
576		Haricot flageolet, cuit	
577		Haricot rouge, appertisé, égoutté	
578		Haricot mungo, cuit	
579		Pois chiche, appertisé, égoutté	
580		Haricot flageolet, vert, cuit	
581		Fève, pelée, surgelée, cuite à l'eau	
582		Fève, surgelée, cuite à l'eau	
583		Lentille verte, cuite	
584		Lentille blonde, cuite	
585		Lentille corail, cuite	
586		Légume sec, cuit (aliment moyen)	
587		Fève à écosser, fraîche	
588		Lentille, germée	
589		Lupin, graine crue	
590		Fève, fraîche, surgelée	
591		Haricot flageolet, surgelé	
592		Fève, pelée, surgelée, crue	
593		Haricot blanc, sec	
594		Lentille, sèche	
595		Pois cassé, sec	
596		Pois chiche, sec	
597		Fève, sèche	
598		Haricot rouge, sec	
599		Haricot mungo, sec	
600		Lentille corail, sèche	
601		Haricot flageolet, vert, sec	
602		Lentille verte, sèche	
603		Lentille blonde, sèche	
604		Abricot, dénoyauté, cru	
605		Ananas, pulpe, cru	
606		Banane, pulpe, crue	
607		Cassis, cru	
608		Cerise, dénoyautée, crue	
609		Citron, pulpe, cru	
610		Coing, cru	
611		Figue, crue	
612		Fraise, crue	
613		Framboise, crue	
614		Fruit de la passion ou maracudja, pulpe et pépins, cru	
615		Grenade, pulpe et pépins, crue	
616		Groseille, crue	
617		Groseille à maquereau, crue	
618		Kiwi, pulpe et graines, cru	
619		Litchi, pulpe, cru	
620		Mangue, pulpe, crue	
621		Melon cantaloup (par ex.: Charentais, de Cavaillon) pulpe, cru	
622		Myrtille, crue	
623		Mûre (de ronce), crue	
624		Nectarine ou brugnon, pulpe et peau, crue	
625		Orange, pulpe, crue	
626		Papaye, pulpe, crue	
627		Pastèque, pulpe, crue	
628		Poire, pulpe et peau, crue	
629		Pomme, pulpe et peau, crue	
630		Pomelo (dit Pamplemousse), pulpe, cru	
631		Prune Reine-Claude, crue	
632		Pêche, pulpe et peau, crue	
633		Raisin blanc, à gros grain (type Italia ou Dattier), cru	
634		Raisin noir, cru	
635		Rhubarbe, tige, crue	
636		Pomme, pulpe, crue	
637		Carambole, pulpe, crue	
638		Figue de Barbarie, pulpe et graines, crue	
639		Kaki, pulpe, cru	
640		Citron vert ou Lime, pulpe, cru	
641		Mûre noire (du mûrier), crue	
642		Tamarin, fruit immature, pulpe, cru	
643		Clémentine, pulpe, crue	
644		Goyave, pulpe, crue	
645		Pomme Canada, pulpe, crue	
646		Mandarine, pulpe, crue	
647		Prune, crue	
648		Poire, pulpe, crue	
649		Griotte, crue	
650		Raisin, cru	
651		Canneberge ou cranberry, crue	
652		Citron, zeste, cru	
653		Sureau, baie, crue	
654		Myrtille, surgelée, crue	
655		Salade de fruits, crue	
656		Framboise, surgelée, crue	
657		Mûre (de ronce), surgelée, crue	
658		Pomelo (dit Pamplemousse) jaune, pulpe, cru	
659		Pomelo (dit Pamplemousse) rose, pulpe, cru	
660		Kumquat, sans pépin, cru	
661		Pamplemousse chinois, pulpe, cru	
662		Pomme Golden, pulpe et peau, crue	
663		Melon miel ou melon honeydew, pulpe, cru	
664		Fruits rouges, crus (framboises, fraises, groseilles, cassis)	
665		Compote de pomme	
666		Rhubarbe, tige, cuite, sucrée	
667		Compote, tout type de fruits	
668		Compote, tout type de fruits, allégée en sucres	
669		Compote, tout type de fruits, allégée en sucres, rayon frais	
670		Dessert de fruits, tout type de fruits (en taux de sucres : compotes allégées en sucres < desserts de fruits < compotes allégée)	
671		Purée de fruits, tout type de fruits, type "compote sans sucres ajoutés"	
672		Pomme, pulpe, rôtie/cuite au four	
673		Pomme, pulpe, bouillie/cuite à l'eau	
674		Macédoine ou cocktail ou salade de fruits, au sirop, appertisé, égoutté	
675		Macédoine ou cocktail ou salade de fruits, au sirop, appertisé, non égoutté	
676		Macédoine ou cocktail ou salade de fruits, au sirop léger, appertisé, égoutté	
677		Macédoine ou cocktail ou salade de fruits, au sirop léger, appertisé, non égoutté	
678		Abricot au sirop léger, appertisé, égoutté	
679		Abricot au sirop léger, appertisé, non égoutté	
680		Abricot au sirop, appertisé, égoutté	
681		Abricot au sirop, appertisé, non égoutté	
682		Ananas au sirop et jus d'ananas, appertisé, égoutté	
683		Ananas au sirop et jus d'ananas, appertisé, non égoutté	
684		Ananas au sirop léger, appertisé, égoutté	
685		Ananas au sirop léger, appertisé, non égoutté	
686		Pêche au sirop léger, appertisée, égouttée	
687		Pêche au sirop léger, appertisée, non égouttée	
688		Poire au sirop léger, appertisée, non égouttée	
689		Abricot, dénoyauté, sec	
690		Datte, pulpe et peau, sèche	
691		Figue, sèche	
692		Pruneau, sec	
693		Raisin, sec	
694		Banane, pulpe, sèche	
695		Pomme, sèche	
696		Pêche, sèche	
697		Farine de châtaigne	
698		Amande (avec peau)	
699		Cacahuète ou Arachide	
700		Cacahuète, grillée, salée	
701		Noisette	
702		Noix, séchée, cerneaux	
703		Noix de coco, amande mûre, fraîche	
704		Noix de coco, amande, sèche	
705		Noix du Brésil	
706		Pistache, grillée, salée	
707		Sésame, graine	
708		Tournesol, graine	
709		Crème de marrons	
710		Noix de coco, amande immature, fraîche	
711		Crème de marrons vanillée, appertisée	
712		Mélange apéritif de graines salées et raisins secs	
713		Noix de cajou, grillée, salée	
714		Châtaigne, bouillie/cuite à l'eau	
715		Châtaigne, grillée	
716		Noix, fraîche	
717		Châtaigne, crue	
718		Pignon de pin	
719		Noix de pécan	
720		Noix de macadamia	
721		Cucurbitacées, graine	
722		Luzerne, graine germée	
723		Luzerne, graine	
724		Noisette grillée	
725		Lin, graine	
726		Sésame, graine décortiquée	
727		Cacahuète, grillée	
728		Sésame, grillé, graine décortiquée	
729		Châtaigne ou Marron, appertisé	
730		Amande, mondée, émondée ou blanchie	
731		Amande, grillée, salée	
732		Noix de macadamia, grillée, salée	
733		Pistache, grillée	
734		Tournesol, graine, grillé, salé	
735		Noix de pécan, salées	
736		Chia, graine, séchée	
737		Mélange apéritif de graines (non salées) et fruits séchés	
738		Mélange apéritif de graines (non salées) et raisins secs	
739		Noisette grillée, salée	
740		Lin, brun, graine	
741		Pâte d'amande, préemballée	
742		Beurre de cacahuète ou Pâte d'arachide	
743		Tahin ou Purée de sésame	
744		Arachide, bouillie/cuite à l'eau, salée	
745		Soja, graine entière	
746		Blé dur précuit, grains entiers, cuit, non salé	
747		Nouilles asiatiques cuites, aromatisées	
748		Nouilles asiatiques cuites, nature, non salées	
749		Riz complet, cuit, non salé	
750		Riz blanc, cuit, non salé	
751		Riz blanc étuvé, cuit, non salé	
752		Riz rouge, cuit, non salé	
753		Riz sauvage, cuit, non salé	
754		Orge perlée, bouilli/cuite à l'eau, non salée	
755		Mil, cuit, non salé	
756		Quinoa, bouilli/cuit à l'eau, non salé	
757		Polenta ou semoule de maïs, cuite, non salée	
758		Couscous (semoule de blé dur roulée précuite à la vapeur), cuite, non salée	
759		Boulgour de blé, cuit, non salé	
760		Pâtes sèches standard, cuites, non salées	
761		Pâtes fraîches, aux œufs, cuites, non salées	
762		Pâtes sèches, aux œufs, cuites, non salées	
763		Pâtes sèches, sans gluten, cuites, non salées	
764		Pâtes sèches, au blé complet, cuites, non salées	
765		Vermicelle de riz, cuite, non salée	
766		Vermicelle de soja, cuite, non salée	
767		Gnocchi à la semoule, cuit	
768		Gnocchi à la pomme de terre, cuit	
769		Gnocchi, cuit (aliment moyen)	
770		Frik (blé dur immature concassé), cuit, non salé	
771		Épeautre, cru	
772		Blé de Khorasan, cru	
773		Blé tendre entier ou froment, cru	
774		Blé germé, cru	
775		Blé dur entier, cru	
776		Blé dur précuit, entier, cru	
777		Riz blanc, cru	
778		Riz blanc étuvé, cru	
779		Riz complet, cru	
780		Riz sauvage, cru	
781		Riz rouge, cru	
782		Riz thaï ou basmati, cru	
783		Riz, mélange de variétés (blanc, complet, rouge, sauvage, etc.), cru	
784		Maïs entier, cru	
785		Avoine, crue	
786		Orge entière, crue	
787		Orge perlée, crue	
788		Mil entier, cru	
789		Quinoa, cru	
790		Amarante, crue	
791		Sorgho entier, cru	
792		Sarrasin entier, cru	
793		Seigle entier, cru	
794		Semoule de blé dur, crue	
795		Mélange de céréales et légumineuses, cru	
796		Polenta ou semoule de maïs, précuite, sèche	
797		Couscous (semoule de blé dur roulée précuite à la vapeur), crue	
798		Boulgour de blé, cru	
799		Pâtes sèches standard, crues	
800		Pâtes fraîches, aux œufs, crues	
801		Pâtes sèches, aux œufs, crues	
802		Nouilles asiatiques aromatisées, déshydratées	
803		Pâtes sèches, au blé complet, crues	
804		Pâtes sèches, sans gluten, crues	
805		Vermicelle de riz, sèche	
806		Vermicelle de soja, sèche	
807		Gnocchi à la pomme de terre, cru	
808		Gnocchi à la semoule, cru	
809		Frik (blé dur immature concassé), cru	
810		Pain (aliment moyen)	
811		Pain, baguette, courante	
812		Pain, baguette ou boule, au levain	
813		Pain, baguette, de tradition française	
814		Pain, baguette ou boule, bis (à la farine T80 ou T110) 	
815		Pain courant français, 400g ou boule	
816		Pain, baguette ou boule, bio (à la farine T55 jusqu'à T110)	
817		Pain, baguette ou boule, de campagne	
818		Pain complet ou intégral (à la farine T150)	
819		Pain de mie, complet	
820		Pain de mie, au son	
821		Pain de mie, multicéréale	
822		Pain au son	
823		Pain de seigle, et froment	
824		Pain, sans gluten	
825		Pain, baguette, sans sel	
826		Pain panini	
827		Pain pita	
828		Pain de mie, courant	
829		Pain de mie, sans croûte, préemballé	
830		Pain de mie brioché, préemballé	
831		Pain, baguette ou boule, aux céréales et graines, artisanal	
832		Muffin anglais, complet, petit pain spécial, préemballé	
833		Muffin anglais, petit pain spécial, préemballé	
834		Bagel	
835		Pain pour hamburger ou hot dog (bun), préemballé	
836		Pain blanc maison (avec farine pour machine à pain)	
837		Pain de campagne maison (avec farine pour machine à pain)	
838		Pain pour hamburger ou hot dog (bun), complet, préemballé	
839		Tortilla souple (à garnir), à base de maïs	
840		Tortilla souple (à garnir), à base de blé	
841		Blini	
842		Pain grillé, domestique	
843		Biscotte classique	
844		Biscotte briochée	
845		Biscotte sans adjonction de sel	
846		Biscotte multicéréale	
847		Biscotte complète ou riche en fibres	
848		Crackers de table au froment	
849		Galette de riz soufflé complet	
850		Galettes multicéréales soufflées	
851		Pain grillé, tranches, au froment	
852		Pain grillé brioché, tranché, préemballé	
853		Pain grillé suédois au froment	
854		Pain grillé suédois aux graines de lin	
855		Tartine craquante, extrudée et grillée	
856		Pain grillé suédois au blé complet	
857		Pain grillé suédois aux fruits	
858		Pain grillé, tranches, multicéréale	
859		Croûtons	
860		Croûtons à tartiner	
861		Croûtons nature, préemballés	
862		Chapelure	
863		Gressins	
864		Croûton à l'ail aux fines herbes ou aux oignons, préemballé	
865		Pain brioché ou viennois	
866		Viennoiserie (aliment moyen)	
867		Croissant, sans précision	
868		Croissant ordinaire, artisanal	
869		Croissant au beurre, artisanal	
870		Croissant aux amandes, artisanal	
871		Pain au lait, artisanal	
872		Pain au lait, préemballé	
873		Pain au lait aux pépites de chocolat, préemballé	
874		Pain aux raisins (viennoiserie)	
875		Pain au chocolat feuilleté, artisanal	
876		Pain au chocolat, préemballé	
877		Brioche aux pépites de chocolat	
878		Brioche fourrée au chocolat	
879		Brioche fourrée aux fruits	
880		Brioche fourrée crème pâtissière (type "chinois"), préemballée	
881		Brioche, préemballée	
882		Brioche, sans précision	
883		Brioche, de boulangerie traditionnelle	
884		Couronne de Noël (Brioche) aux fruits confits, préemballée	
885		Brioche pur beurre	
886		Chouquette	
887		Chausson aux pommes	
888		Flocons d'avoine, bouillis/cuits à l'eau	
889		Grains de blé soufflés au miel ou caramel, enrichis en vitamines et minéraux	
890		Céréales pour petit déjeuner chocolatées, non fourrées, enrichies en vitamines et minéraux	
891		Céréales pour petit déjeuner riches en fibres, avec ou sans fruits, enrichies en vitamines et minéraux	
892		Céréales pour petit déjeuner (aliment moyen)	
893		Muesli (aliment moyen)	
894		Pétales de maïs natures, enrichis en vitamines et minéraux	
895		Riz soufflé nature, enrichi en vitamines et minéraux	
896		Céréales pour petit déjeuner riches en fibres, au chocolat, enrichies en vitamines et minéraux	
897		Pétales de blé chocolatés, enrichis en vitamines et minéraux	
898		Pétales de blé chocolatés (non enrichis en vitamines et minéraux)	
899		Riz soufflé chocolaté (non enrichi en vitamines et minéraux)	
900		Céréales chocolatées pour petit déjeuner, non fourrées, (non enrichies en vitamines et minéraux)	
901		Pétales de maïs natures (non enrichis en vitamines et minéraux)	
902		Céréales pour petit déjeuner fourrées au chocolat ou chocolat-noisettes, enrichies en vitamines et minéraux	
903		Céréales pour petit déjeuner fourrées au chocolat ou chocolat-noisettes	
904		Céréales pour petit déjeuner fourrées, fourrage autre que chocolat, enrichies en vitamines et minéraux	
905		Céréales pour petit déjeuner "équilibre" nature ou au miel, enrichies en vitamines et minéraux	
906		Céréales pour petit déjeuner "équilibre" au chocolat, enrichies en vitamines et minéraux	
907		Céréales pour petit déjeuner "équilibre" aux fruits, enrichies en vitamines et minéraux	
908		Céréales pour petit déjeuner "équilibre" aux fruits secs (à coque), enrichis en vitamines et minéraux	
909		Céréales pour petit déjeuner "équilibre" au chocolat (non enrichies en vitamines et minéraux)	
910		Céréales pour petit déjeuner "équilibre" aux fruits (non enrichies en vitamines et minéraux)	
911		Céréales pour petit déjeuner "équilibre" nature (non enrichies en vitamines et minéraux)	
912		Céréales pour petit déjeuner, enrichies en vitamines et minéraux (aliment moyen)	
913		Céréales pour petit déjeuner, non enrichies en vitamines et minéraux (aliment moyen)	
914		Pétales de maïs glacés au sucre (non enrichis en vitamines et minéraux)	
915		Muesli croustillant aux fruits et/ou fruits secs, graines (non enrichi en vitamines et minéraux)	
916		Muesli croustillant au chocolat (non enrichi en vitamines et minéraux)	
917		Muesli floconneux aux fruits ou fruits secs, enrichi en vitamines et minéraux	
918		Muesli croustillant aux fruits ou fruits secs, enrichi en vitamines et minéraux	
919		Muesli croustillant au chocolat, avec ou sans fruits, enrichi en vitamines et minéraux	
920		Muesli floconneux aux fruits ou fruits secs, sans sucres ajoutés	
921		Grains de blé soufflés chocolatés, enrichis en vitamines et minéraux	
922		Céréales pour petit déjeuner très riches en fibres, enrichies en vitamines et minéraux	
923		Pétales de maïs glacés au sucre, enrichis en vitamines et minéraux	
924		Pétales de blé avec noix, noisettes ou amandes, enrichis en vitamines et minéraux	
925		Muesli floconneux ou de type traditionnel	
926		Boules de maïs soufflées au miel (non enrichies en vitamines et minéraux)	
927		Blé khorasan complet soufflé	
928		Riz soufflé chocolaté, enrichi en vitamines et minéraux	
929		Boules de maïs soufflées au miel, enrichies en vitamines et minéraux	
930		Céréales complètes soufflées, enrichies en vitamines et minéraux	
931		Multi-céréales soufflées ou extrudées, enrichies en vitamines et minéraux	
932		Muesli floconneux aux fruits ou fruits secs (non enrichi en vitamines et minéraux)	
933		Muesli enrichi en vitamines et minéraux (aliment moyen)	
934		Flocon d'avoine précuit	
935		Muesli non enrichi en vitamines et minéraux (aliment moyen)	
936		Barre céréalière pour petit déjeuner au lait, chocolatée ou non, enrichie en vitamines et minéraux	
937		Barre céréalière "équilibre" aux fruits, enrichie en vitamines et minéraux	
938		Barre céréalière "équilibre" chocolatée, enrichie en vitamines et minéraux	
939		Barre céréalière diététique hypocalorique	
940		Barre céréalière chocolatée	
941		Barre céréalière aux fruits	
942		Barre céréalière aux amandes ou noisettes	
943		Tartine craquante, extrudée et grillée, fourrée au chocolat	
944		Tartine craquante, extrudée et grillée, fourrée aux fruits	
945		Macaron sec	
946		Biscuit sec, sans précision	
947		Biscuit sec nature	
948		Biscuit sec à teneur garantie en vitamines	
949		Biscuit sec à teneur garantie en vitamines et minéraux	
950		Biscuit sec aux fruits, hyposodé	
951		Biscuit sec croquant au chocolat, allégé en matière grasse	
952		Biscuit sec fourré aux fruits, allégé en matière grasse	
953		Spéculoos	
954		Biscuit sec, avec matière grasse végétale	
955		Biscuit sec, petits fours en assortiment	
956		Biscuit sec petit beurre	
957		Biscuit sec avec tablette de chocolat	
958		Biscuit sec petit beurre au chocolat	
959		Biscuit sec au lait	
960		Biscuit sec croquant (ex : tuile) sans chocolat, allégé en matière grasse	
961		Biscuit sec pour petit déjeuner	
962		Biscuit sec pour petit déjeuner, allégé en sucres	
963		Biscuit sec chocolaté, préemballé	
964		Biscuit sec fourré à la pâte ou purée de fruits	
965		Biscuit sec avec nappage chocolat	
966		Barre biscuitée fourrée aux fruits, allégée en matière grasse	
967		Biscuit sec pour petit déjeuner, au chocolat	
968		Biscuit aux céréales pour petit déjeuner, enrichis en vitamines et minéraux	
969		Biscuit sec au beurre, sablé, galette ou palet	
970		Biscuit sec au beurre, sablé, galette ou palet, au chocolat	
971		Biscuit sec chocolaté, type barquette	
972		Biscuit sec chocolaté, type tartelette	
973		Biscuit sec chocolaté, type galette	
974		Biscuit sec, sablé, galette ou palet, aux fruits	
975		Biscuit sec fourré fruits à coque (non ou légèrement chocolaté)	
976		Florentin (biscuit sec sucré chocolaté aux amandes)	
977		Biscuit pâtissier meringué	
978		Sablé à la noix de coco	
979		Sablé pâtissier	
980		Sablé aux fruits (pomme, fruits rouges, etc.)	
981		Sablé au cacao ou chocolat, au praliné ou autre	
982		Goûter sec fourré ("sandwiché") parfum lait ou vanille	
983		Goûter sec fourré ("sandwiché") parfum chocolat	
984		Goûter sec fourré ("sandwiché") parfum fruits	
985		Gaufrette ou éventail sans fourrage	
986		Gaufrette fourrée chocolat, préemballée	
987		Gaufrette fourrée fruits à coque (noisette, amande, praline, etc.), chocolatée ou non, préemballée	
988		Gaufrette, fourrée vanille, préemballée	
989		Gaufrette fourrée, aux fruits	
990		Cigarette	
991		Crêpe dentelle	
992		Crêpe dentelle au chocolat, préemballée	
993		Biscuit sec aux œufs à la cuillère (cuiller) ou Boudoir	
994		Biscuit sec type langue de chat ou cigarette russe	
995		Meringue	
996		Biscuit sec ou tuile, aux amandes	
997		Biscuit sec type tuile, aux fruits	
998		Biscuit sec feuilleté, type palmier ou autres	
999		Palmier, artisanal	
1000		Biscuit sec (génoise) nappage aux fruits, type barquette	
1001		Biscuit sec nappé aux fruits, tartelette	
1002		Biscuit moelleux fourré à l'orange et enrobé de sucre glace	
1003		Cookie aux pépites de chocolat	
1004		Cône ou cornet classique, pour glace	
1005		Génoise sèche fourrée aux fruits et nappée de chocolat	
1006		Biscuit sec pauvre en glucides	
1007		Pop-corn ou Maïs éclaté, à l'huile, salé	
1008		Pop-corn ou Maïs éclaté, à l'air, non salé	
1009		Pop-corn ou Maïs éclaté, au caramel	
1010		Chips de crevette	
1011		Chips de maïs ou tortilla chips	
1012		Biscuit apéritif soufflé, à base de pomme de terre	
1013		Biscuit apéritif, mini bretzel ou sticks	
1014		Biscuit apéritif soufflé, à base de pomme de terre et de soja	
1015		Biscuit apéritif (aliment moyen)	
1016		Biscuit apéritif soufflé, à base de maïs, sans cacahuète	
1017		Biscuit apéritif, crackers, garni ou fourré, au fromage	
1018		Biscuit apéritif, crackers, nature	
1019		Biscuit apéritif, crackers, nature, allégé en matière grasse	
1020		Biscuit apéritif soufflé, à base de maïs, à la cacahuète	
1021		Biscuit apéritif à base de pomme de terre, type tuile salée	
1022		Cacahuètes (arachide) enrobées d'un biscuit, pour apéritif	
1023		Biscuit apéritif feuilleté	
1024		Crêpe dentelle (pour apéritif) au fromage, préemballée	
1025		Gâteau (aliment moyen)	
1026		Gâteau Paris-Brest (pâte à choux crème mousseline praliné)	
1027		Gâteau au chocolat type forêt noire (génoise au chocolat et crème multi-couches, avec ou sans cerises)	
1028		Gâteau mousse de fruits sur génoise, type miroir, bavarois	
1029		Entremets type Opéra	
1030		Fraisier ou framboisier	
1031		Baba au rhum, préemballé	
1032		Canelé	
1033		Macaron moelleux fourré à la confiture ou à la crème	
1034		Bûche de Noël pâtissière	
1035		Brownie au chocolat	
1368		Agneau, côte première, crue	
1036		Rocher coco ou Congolais (petit gâteau à la noix de coco)	
1037		Biscuit de Savoie	
1038		Quatre-quarts ou barre pâtissière, préemballé	
1039		Gâteau au citron, tout type	
1040		Far aux pruneaux	
1041		Kouign Amann	
1042		Pain d'épices	
1043		Baklava ou Baklawa (pâtisserie orientale aux amandes et sirop)	
1044		Corne de gazelle (pâtisserie orientale aux amandes et sirop)	
1045		Chou à la crème (chantilly ou pâtissière)	
1046		Chou à la crème chantilly	
1047		Chou à la crème pâtissière	
1048		Éclair	
1049		Tarte aux fruits et crème pâtissière	
1050		Tarte normande aux pommes (garniture farine, œufs, crème, sucre, calvados)	
1051		Tarte au citron	
1052		Tarte ou tartelette aux pommes	
1053		Tarte aux fraises	
1054		Crumble aux pommes	
1055		Tarte aux abricots	
1056		Tarte aux fruits rouges	
1057		Tarte Tatin aux pommes	
1058		Tarte au chocolat, fabrication artisanale	
1059		Tarte ou tartelette aux fruits	
1060		Flan pâtissier aux oeufs ou à la parisienne	
1061		Charlotte aux fruits	
1062		Gâteau au chocolat	
1063		Gâteau moelleux au chocolat, préemballé	
1064		Gâteau au yaourt	
1065		Gâteau au fromage blanc	
1066		Gâteau moelleux nature type génoise	
1067		Galette des rois feuilletée	
1068		Galette des rois feuilletée, fourrée frangipane, et Pithiviers	
1069		Crêpe, nature, préemballée, rayon frais	
1070		Crêpe, nature, préemballée, rayon température ambiante	
1071		Galette de sarrasin, nature, préemballée	
1072		Gâteau basque, crème pâtissière	
1073		Gâteau basque, cerises	
1074		Crêpe préemballée, fourrée au sucre	
1075		Crêpe maison, fourrée à la confiture	
1076		Crêpe maison, fourrée au chocolat ou à la pâte à tartiner chocolat et noisettes	
1077		Crêpe préemballée, fourrée chocolat	
1078		Crêpe préemballée, fourrée fraise	
1079		Gaufre moelleuse (type bruxelloise ou liégeoise), nature ou sucrée, préemballée	
1080		Gaufre moelleuse (type bruxelloise ou liégeoise), chocolatée, préemballée	
1081		Gaufre croustillante (fine ou sèche), nature ou sucrée, préemballée	
1082		Gaufre croustillante (fine ou sèche), chocolatée, préemballée	
1083		Beignet rond moelleux, sans fourrage, saupoudré de sucre	
1084		Beignet à la confiture	
1085		Beignet fourré aux fruits, préemballé	
1086		Beignet fourré goût chocolat, préemballé	
1087		Pâtisserie (aliment moyen)	
1088		Cake aux fruits	
1089		Gâteau marbré	
1090		Gâteau sablé aux fruits, préemballé	
1091		Gâteau moelleux aux fruits	
1092		Gâteau moelleux aux fruits à coque	
1093		Gâteau moelleux fourré au chocolat ou aux pépites de chocolat ou au lait	
1094		Génoise fourrée et nappée au chocolat	
1095		Gâteau moelleux fourré aux fruits type mini-roulé ou mini-cake fourré	
1096		Muffin, aux myrtilles ou au chocolat	
1097		Madeleine traditionnelle, pur beurre	
1098		Madeleine chocolatée, préemballée	
1099		Madeleine ordinaire, préemballée	
1100		Tarte aux poires amandine	
1101		Gâteau aux amandes type financier	
1102		Gâteau aux amandes, préemballé	
1103		Mille-feuille	
1104		Fécule de pomme de terre	
1105		Flocon d'avoine	
1106		Farine de blé tendre ou froment T110	
1107		Farine de blé tendre ou froment T150	
1108		Farine de blé tendre ou froment T65	
1109		Farine de blé tendre ou froment T55 (pour pains)	
1110		Farine de blé tendre ou froment avec levure incorporée	
1111		Farine de blé tendre ou froment T45 (pour pâtisserie)	
1112		Farine de blé tendre ou froment T80	
1113		Farine d'épeautre (grand épeautre)	
1114		Amidon de maïs ou fécule de maïs	
1115		Farine de riz	
1116		Farine de seigle T170	
1117		Farine de seigle T85	
1118		Farine de seigle T130	
1119		Farine de sarrasin	
1120		Farine de maïs	
1121		Farine d'orge	
1122		Farine de millet	
1123		Farine de pois chiche	
1124		Farine de soja	
1125		Amidon de riz	
1126		Pâte à pizza fine, crue	
1127		Préparation pour pâte à pizza	
1128		Pâte brisée, crue	
1129		Pâte brisée, matière grasse végétale, cuite	
1130		Pâte brisée, pur beurre, crue	
1131		Pâte brisée, pur beurre, surgelée, crue	
1132		Pâte feuilletée, matière grasse végétale, crue	
1133		Pâte feuilletée, surgelée, crue	
1134		Pâte feuilletée, cuite	
1135		Pâte feuilletée pur beurre, crue	
1136		Pâte feuilletée pur beurre, surgelée crue	
1137		Pâte feuilletée pur beurre, cuite	
1138		Feuille de brick, cuite à sec sans matière grasse	
1139		Pâte sablée, crue	
1140		Pâte sablée, cuite	
1141		Pâte sablée pur beurre, crue	
1142		Pâte phyllo ou Pâte filo, crue	
1143		Pâte sablée pur beurre, surgelée, crue	
1144		Pâte sablée pur beurre, cuite	
1145		Pâte à pizza crue	
1146		Khatfa feuille de brick, préemballée	
1147		Pâte à pizza cuite	
1148		Foie gras, canard, bloc (aliment moyen)	
1149		Viande blanche, cuite (aliment moyen)	
1150		Viande rouge, cuite (aliment moyen)	
1151		Viande cuite (aliment moyen)	
1152		Volaille, cuite (aliment moyen)	
1153		Abat, cuit (aliment moyen)	
1154		Boeuf, entrecôte, partie maigre, grillée/poêlée	
1155		Boeuf, braisé	
1156		Boeuf, gîte à la noix, cuit	
1157		Boeuf, faux-filet, rôti/cuit au four	
1158		Boeuf, faux-filet, grillé/poêlé	
1159		Boeuf, plat de côtes, braisé	
1160		Boeuf, hampe, grillée/poêlée	
1161		Boeuf, joue, braisée ou bouillie	
1162		Boeuf, jarret, bouilli/cuit à l'eau	
1163		Boeuf, tende de tranche, grillée/poêlée	
1164		Boeuf, tende de tranche, rôtie/cuite au four	
1165		Boeuf, steak ou bifteck, grillé	
1166		Boeuf, onglet, grillé	
1167		Boeuf, rumsteck, grillé	
1168		Boeuf, boule de macreuse, grillée/poêlée	
1169		Boeuf, rosbif, rôti/cuit au four	
1170		Boeuf, bavette d'aloyau, grillée/poêlée	
1171		Boeuf, boule de macreuse, rôtie/cuite au four	
1172		Boeuf, à bourguignon ou pot-au-feu, cuit	
1173		Boeuf, collier, braisé	
1174		Bœuf, steak haché 5% MG, cuit	
1175		Bœuf, steak haché 10% MG, cuit	
1176		Bœuf, steak haché 15% MG, cuit	
1177		Bœuf, steak haché 20% MG, cuit	
1178		Bœuf, steak haché, cuit (aliment moyen)	
1179		Boeuf, paleron, braisé ou bouilli	
1180		Boeuf, queue, bouillie/cuite à l'eau	
1181		Veau, côte, grillée/poêlée	
1182		Veau, carré, sauté/poêlé	
1183		Veau, escalope, cuite	
1184		Veau, noix, grillée/poêlée	
1185		Veau, noix, rôtie	
1186		Veau, filet, rôti/cuit au four	
1187		Veau, rôti, cuit	
1188		Veau, épaule, grillée/poêlée	
1189		Veau, épaule, braisée ou bouillie	
1190		Veau, viande, cuite (aliment moyen)	
1191		Veau, jarret, braisé ou bouilli	
1192		Veau, tête, bouillie/cuite à l'eau	
1193		Veau, collier, braisé ou bouilli	
1194		Porc, longe, cuite	
1195		Porc, épaule, cuite	
1196		Porc, côte, grillée	
1197		Porc, rouelle de jambon, cuite	
1198		Porc, carré, cuit	
1199		Porc, filet, maigre, en rôti, cuit	
1200		Porc, filet mignon, cuit	
1201		Porc, viande, cuite (aliment moyen)	
1202		Porc, rôti, cuit	
1203		Porc, travers, braisé	
1204		Porc, échine, rôtie/cuite au four	
1205		Porc, escalope de jambon, cuite	
1206		Poulet, cuisse, viande et peau, rôtie/cuite au four	
1207		Poulet, viande et peau, rôti/cuit au four	
1208		Poulet, cuisse, viande, rôti/cuit au four	
1209		Poulet, filet, sans peau, cuit	
1210		Poulet, cuisse, viande, bouilli/cuit à l'eau	
1211		Poulet, cuisse, viande et peau, bouilli/cuit à l'eau	
1212		Poulet, poitrine, viande et peau, rôti/cuit au four	
1213		Poulet, aile, viande et peau, rôti/cuit au four	
1214		Dinde, viande, rôtie/cuite au four	
1215		Dinde, escalope, sautée/poêlée	
1216		Dinde, escalope, rôtie/cuite au four	
1217		Agneau, côtelette, grillée	
1218		Agneau, gigot, rôti/cuit au four	
1219		Agneau, épaule, rôtie/cuite au four	
1220		Agneau, épaule, maigre, rôtie/cuite au four	
1221		Agneau, collier, braisé ou bouilli	
1222		Agneau, côte filet, grillée/poêlée	
1223		Agneau, côte première, grillée/poêlée	
1224		Agneau, selle, partie maigre, rôtie/cuite au four	
1225		Agneau, gigot, grillé/poêlé	
1226		Agneau, gigot, braisé	
1227		Agneau, selle, partie maigre, grillée/poêlée	
1228		Agneau, côte ou côtelette, cuite (aliment moyen)	
1229		Agneau, viande, cuite (aliment moyen)	
1230		Agneau, côte ou côtelette, grillée/poêlée (aliment moyen)	
1231		Chevreuil, rôti/cuit au four	
1232		Sanglier, rôti/cuit au four	
1233		Cerf, rôti/cuit au four	
1234		Gibier à poil, cuit (aliment moyen)	
1235		Faisan, viande, rôtie/cuite au four	
1236		Gibier à plumes, viande, cuit (aliment moyen)	
1237		Cheval, viande, rôtie/cuite au four	
1238		Cheval, tende de tranche, grillée/poêlée	
1239		Cheval, faux-filet, grillé/poêlé	
1240		Cheval, entrecôte, grillée/poêlée	
1241		Cheval, faux-filet, rôti/cuit au four	
1242		Cheval, tende de tranche, rôtie/cuite au four	
1243		Chevreau, cuit	
1244		Lapin, viande braisée	
1245		Lapin, viande cuite	
1246		Lapin de garenne, viande, cuite	
1247		Chapon, viande et peau, rôti/cuit au four	
1248		Caille, viande et peau, cuite	
1249		Canard, viande et peau, rôti/cuit au four	
1250		Canard, viande, rôtie/cuite au four	
1251		Canard, magret, grillé/poêlé	
1252		Oie, viande, rôtie/cuite au four	
1253		Oie, viande et peau, rôtie/cuite au four	
1254		Pigeon, viande, rôtie/cuite au four	
1255		Autruche, viande cuite	
1256		Cervelle, agneau, cuite	
1257		Cervelle, porc, braisée	
1258		Cervelle, veau, cuite	
1259		Coeur, boeuf, cuit	
1260		Coeur, poulet, cuit	
1261		Coeur, dinde, cuit	
1262		Coeur, agneau, cuit	
1263		Foie, agneau, cuit	
1264		Foie, génisse, cuit	
1265		Foie, veau, cuit	
1266		Foie, porc, cuit	
1267		Foie, poulet, cuit	
1268		Foie, dinde, cuit	
1269		Langue, veau, cuite	
1270		Langue, boeuf, cuite	
1271		Ris, agneau, cuit	
1272		Ris, veau, braisé ou sauté/poêlé	
1273		Rognon, cuit (aliment moyen)	
1274		Rognon, boeuf, cuit	
1275		Rognon, porc, cuit	
1276		Rognon, agneau, braisé	
1277		Rognon, veau, braisé ou sauté/poêlé	
1278		Gésier, canard, confit, appertisé	
1279		Boeuf, côte, crue	
1280		Boeuf, épaule, crue	
1281		Boeuf, gîte à la noix, cru	
1282		Boeuf, entrecôte, crue	
1283		Boeuf, faux-filet, cru	
1284		Boeuf, faux-filet, label rouge, cru	
1285		Boeuf, plat de côtes, cru	
1286		Boeuf, hampe, crue	
1287		Boeuf, joue, crue	
1288		Boeuf, jarret, cru	
1289		Boeuf, tende de tranche, crue	
1290		Boeuf, steak ou bifteck, cru	
1291		Boeuf, boule de macreuse, crue	
1292		Boeuf, onglet, cru	
1293		Boeuf, rumsteck, cru	
1294		Boeuf, bavette d'aloyau, crue	
1295		Boeuf, à bourguignon ou pot-au-feu, cru	
1296		Bœuf, steak haché 5% MG, cru	
1297		Bœuf, steak haché 10% MG, cru	
1298		Bœuf, steak haché 15% MG, cru	
1299		Bœuf, steak haché 20% MG, cru	
1300		Boeuf, paleron, cru	
1301		Veau, côte, crue	
1302		Veau, carré, cru	
1303		Veau, escalope, crue	
1304		Veau, noix, crue	
1305		Veau, filet, cru	
1306		Veau, steak haché 20% MG, cru	
1307		Veau, steak haché 15% MG, cru	
1308		Veau, poitrine, crue	
1309		Veau, rôti, cru	
1310		Veau, épaule, crue	
1311		Veau, pied, cru	
1312		Veau, jarret, cru	
1313		Veau, collier, cru	
1314		Porc, épaule, crue	
1315		Porc, poitrine, crue	
1316		Porc, longe, crue	
1317		Porc, jarret, cru	
1318		Porc, côte, crue	
1319		Porc, rouelle de jambon, crue	
1320		Porc, carré, cru	
1321		Porc, filet, maigre, cru	
1322		Porc, filet mignon, cru	
1323		Porc, rôti, cru	
1324		Porc, échine, crue	
1325		Porc, travers, cru	
1326		Porc, escalope de jambon, crue	
1327		Porc, bardière découennée, crue	
1328		Porc, gorge, découennée, crue	
1329		Porc, hachage sans jarret, sans bateau, découenné, dégraisssé, désossé, cru	
1330		Porc, jambon sans jarret, sans bateau, découenné, dégraisssé, désossé, cru	
1331		Porc, jambonneau arrière, découenné, dégraisssé, désossé, cru	
1332		Porc, maigre 90/10, cru	
1333		Porc, maigre 80/20, cru	
1334		Porc, palette, découennée, dégraisssée, désossée, crue	
1335		Porc, couenne, crue	
1336		Porc, poitrine cutter, sans mouille, crue	
1337		Porc, rôti filet avec chaînette, cru	
1338		Poulet, cuisse, viande et peau, cru	
1339		Poulet, viande, crue	
1340		Poulet (var. blanc), viande et peau, cru	
1341		Poulet fermier, viande et peau, cru	
1342		Poulet, viande et peau, cru	
1343		Poulet, filet, sans peau, cru	
1344		Poulet, haut de cuisse, viande, cru	
1345		Poulet éviscéré sans abats, cru	
1346		Poulet, pilon, cru	
1347		Poulet, aile, viande et peau, cru	
1348		Poulet, cuisse, viande, cru	
1349		Poulet, poitrine, viande et peau, cru	
1350		Dinde, viande et peau, crue	
1351		Dinde, viande, crue	
1352		Dinde, escalope, crue	
1353		Dinde, cuisse, viande et peau, crue	
1354		Dinde, cuisse, viande sans peau, crue	
1355		Dinde, aile, crue	
1356		Mouton, viande, crue	
1357		Mouton, épaule, crue	
1358		Mouton, pied, cru	
1359		Mouton, tête, crue	
1360		Mouton, gigot, cru	
1361		Agneau, côtelette, crue	
1362		Agneau, gigot, cru	
1363		Agneau, épaule, crue	
1364		Agneau, épaule, maigre, crue	
1365		Agneau, collier, cru	
1366		Agneau, selle, crue	
1367		Agneau, côte filet, crue	
1369		Agneau, côte ou côtelette, crue (aliment moyen)	
1370		Sanglier, cru	
1371		Lièvre, viande crue	
1372		Chevreuil, cru	
1373		Cerf, cru	
1374		Faisan, viande, cru	
1375		Faisan, viande et peau, cru	
1376		Cheval, viande, crue	
1377		Cheval, steak, cru	
1378		Cheval, tende de tranche, crue	
1379		Cheval, faux-filet, cru	
1380		Cheval, entrecôte, crue	
1381		Chevreau, cru	
1382		Lapin, viande crue	
1383		Lapin de garenne, viande, crue	
1384		Poule, viande et peau, crue	
1385		Poule, viande ,crue	
1386		Poule, cuisse, crue	
1387		Chapon, viande et peau, cru	
1388		Caille, viande et peau, crue	
1389		Caille, viande, crue	
1390		Canard, viande, crue	
1391		Canard, cuisse avec peau, sans os, crue	
1392		Canard, viande et peau, cru	
1393		Canard, magret, cru	
1394		Oie, viande crue	
1395		Oie, viande et peau, crue	
1396		Pigeon, cru	
1397		Pintade, crue	
1398		Pintade, poitrine, crue	
1399		Pintade, cuisse, crue	
1400		Autruche, viande crue	
1401		Cervelle, agneau, crue	
1402		Cervelle, porc, crue	
1403		Cervelle, veau, crue	
1404		Coeur, boeuf, cru	
1405		Coeur, poulet, cru	
1406		Coeur, dinde, cru	
1407		Coeur, agneau, cru	
1408		Coeur, porc, cru	
1409		Coeur, veau, cru	
1410		Foie, agneau, cru	
1411		Foie, génisse, cru	
1412		Foie, veau, cru	
1413		Foie, volaille, cru	
1414		Foie, lapin, cru	
1415		Foie, poulet, cru	
1416		Foie, dinde, cru	
1417		Foie, porc, cru	
1418		Foie, oie, cru	
1419		Foie, canard, cru	
1420		Langue, boeuf, crue	
1421		Langue, veau, crue	
1422		Langue, porc, crue	
1423		Ris, agneau, cru	
1424		Ris, veau, cru	
1425		Rognon, boeuf, cru	
1426		Rognon, porc, cru	
1427		Rognon, agneau, cru	
1428		Rognon, veau, cru	
1429		Tripes, boeuf, crues	
1430		Sang, boeuf, cru	
1431		Gésier, poulet, cru	
1432		Charcuterie (aliment moyen)	
1433		Jambon persillé en gelée	
1434		Jambon de porc à cuire ou Jambon à rôtir/cuire au four	
1435		Filet de bacon	
1436		Jambon cuit, fumé	
1437		Jambon cuit, supérieur	
1438		Jambon cuit, supérieur, avec couenne	
1439		Jambon cuit, supérieur, découenné	
1440		Jambon à l'os braisé	
1441		Jambon cuit, supérieur, découenné dégraissé	
1442		Jambon cuit, supérieur, à teneur réduite en sel	
1443		Jambon cuit, choix	
1444		Épaule de porc, cuite, choix, découennée dégraissée	
1445		Jambon cuit, choix, avec couenne	
1446		Jambon cuit, choix, découenné dégraissé	
1447		Rond de jambon cuit	
1448		Dés, allumettes, râpé ou haché de jambon	
1449		Épaule de porc, cuite, standard, découennée dégraissée	
1450		Jambon cuit, de Paris, découenné dégraissé	
1451		Dés, allumettes, râpé ou haché de jambon de volaille	
1452		Jambonneau, cuit	
1453		Jambon de poulet ou Blanc de poulet en tranche	
1454		Jambon de dinde ou Blanc de dinde en tranche	
1455		Jambon cru	
1456		Jambon cru, fumé	
1457		Jambon sec, découenné, dégraissé	
1458		Jambon cru, fumé, allégé en matière grasse	
1459		Jambon de Bayonne	
1460		Jambon sec	
1461		Jambon sec de Parme	
1462		Jambon sec Serrano	
1463		Coppa	
1464		Pancetta ou Poitrine roulée sèche	
1465		Saucisson sec	
1466		Saucisson sec pur porc	
1467		Saucisson sec pur porc, qualité supérieure	
1468		Rosette ou Fuseau	
1469		Saucisse sèche	
1470		Saucisson sec aux noix et/ou noisettes	
1471		Chipolata, cuite	
1472		Saucisse de Toulouse, cuite	
1473		Chair à saucisse, crue	
1474		Chair à saucisse, pur porc, crue	
1475		Chair à saucisse, porc et bœuf, crue	
1476		Saucisse de Morteau	
1477		Saucisse de Montbéliard	
1478		Saucisse de Morteau, bouillie/cuite à l'eau	
1479		Saucisse de Toulouse, crue	
1480		Chipolata, crue	
1481		Saucisse suisse à cuire	
1482		Saucisse alsacienne fumée ou Gendarme	
1483		Saucisse de volaille, façon charcutière	
1484		Saucisse de volaille, type Knack	
1485		Saucisse de Francfort	
1486		Merguez, crue	
1487		Merguez, pur bœuf, crue	
1488		Merguez, porc et bœuf, crue	
1489		Merguez, bœuf, mouton et porc, crue	
1728		Foie de morue, cru	
1490		Merguez, boeuf et mouton, cuite	
1491		Merguez, boeuf et mouton, crue	
1492		Saucisse de foie	
1493		Diot, cru	
1494		Saucisse de Strasbourg ou Knack	
1495		Saucisse cocktail	
1496		Saucisse viennoise, crue	
1497		Saucisse de jambon pur porc	
1498		Saucisse de bière	
1499		Saucisse de langue à la pistache	
1500		Saucisse (aliment moyen)	
1501		Confit de foie de porc	
1502		Confit de foie de volaille	
1503		Pâté au poivre vert	
1504		Pâté ou terrine de campagne	
1505		Pâté breton	
1506		Terrine de canard	
1507		Pâté de lapin	
1508		Terrine de lapin	
1509		Pâté de gibier	
1510		Pâté ou terrine aux champignons (forestier)	
1511		Pâté de foie de porc, supérieur	
1512		Pâté de foie de porc	
1513		Mousse de foie de porc supérieure ou Crème de foie	
1514		Mousse de foie de porc	
1515		Mousse de canard	
1516		Pâté de foie de volaille	
1517		Pâté de foie d'oie	
1518		Pâté (aliment moyen)	
1519		Pâté en croûte	
1520		Rillettes traditionnelles de porc	
1521		Rillettes pur porc	
1522		Rillettes de Tours	
1523		Rillettes du Mans	
1524		Rillettes pur oie	
1525		Rillettes de canard	
1526		Rillettes d'oie	
1527		Rillettes de poulet	
1528		Quenelle de veau, en sauce	
1529		Quenelle de volaille, crue	
1530		Quenelle de volaille, en sauce	
1531		Quenelle de poisson, en sauce	
1532		Quenelle de poisson, crue	
1533		Quenelle nature, crue	
1534		Confit de canard, viande (cuisse), sans peau, réchauffé	
1535		Confit de canard	
1536		Canard, magret fumé	
1537		Foie gras, canard, entier, cuit	
1538		Foie gras, canard, bloc, sans morceaux	
1539		Foie gras, canard, bloc, 30% de morceaux	
1540		Foie gras, canard, bloc, 50% de morceaux	
1541		Foie gras de canard, cru	
1542		Galantine (aliment moyen)	
1543		Roulade de porc pistachée	
1544		Jambon en croûte	
1545		Fromage de tête	
1546		Museau de porc vinaigrette	
1547		Museau de boeuf	
1548		Andouille	
1549		Andouille de Guéméné	
1550		Andouille, réchauffée à la poêle	
1551		Andouille de Vire	
1552		Andouillette, crue	
1553		Andouillette, sautée/poêlée	
1554		Andouillette de Troyes, crue	
1555		Boudin noir, rayon frais	
1556		Boudin noir, sauté/poêlé	
1557		Boudin noir ou blanc, sauté/poêlé (aliment moyen)	
1558		Boudin blanc truffé, cru	
1559		Museau de boeuf en vinaigrette	
1560		Lardon nature, cru	
1561		Poitrine de porc, fumée, crue	
1562		Bresaola	
1563		Lardon nature, cuit	
1564		Corned-beef, appertisé	
1565		Oreille de porc demi-sel	
1566		Pied de porc demi-sel	
1567		Poitrine de porc demi-sel	
1568		Lardon fumé, cru	
1569		Lardon fumé, cuit	
1570		Viande des Grisons	
1571		Haché de volaille	
1572		Rôti de volaille en salaison, cuit	
1573		Chorizo	
1574		Chorizo supérieur, doux ou fort, type saucisse sèche	
1575		Chorizo supérieur, doux ou fort, type charcuterie en tranches	
1576		Salami	
1577		Salami pur porc	
1578		Salami porc et boeuf	
1579		Salami type danois	
1580		Saucisson à l'ail	
1581		Saucisson cuit pur porc	
1582		Saucisson de Paris	
1583		Saucisson de Paris, fumé	
1584		Saucisson brioché, cuit	
1585		Cervelas	
1586		Cervelas obernois	
1587		Cervelas à l'ail, pur porc	
1588		Mortadelle	
1589		Mortadelle, pur porc	
1590		Mortadelle, porc et boeuf	
1591		Mortadelle pistachée pur porc	
1592		Haché à base de bœuf ou Préparation de viande hachée de boeuf, 15% MG, cru	
1593		Cordon bleu de volaille	
1594		Boeuf, boulettes cuites	
1595		Veau, escalope panée, cuite	
1596		Boulettes au porc et au bœuf (à la suédoise), crues	
1597		Boulettes au bœuf et à l'agneau (type kefta), crues	
1598		Brochette de volaille	
1599		Brochette de boeuf	
1600		Brochette mixte de viande	
1601		Volaille, croquette panée ou nuggets	
1602		Brochette d'agneau	
1603		Brochette de porc, crue	
1604		Poulet, croquette panée ou nuggets	
1605		Poulet, manchons marinés, rôtis/cuits au four	
1606		Poulet, escalope panée	
1607		Dinde, escalope viennoise ou milanaise ou escalope panée	
1608		Saumon, cuit, sans précision (aliment moyen)	
1609		Cabillaud, cuit, sans précision (aliment moyen)	
1610		Hareng fumé, filet, doux	
1611		Carrelet ou plie, cuit à la vapeur	
1612		Églefin, cuit à la vapeur	
1613		Hareng, frit	
1614		Hareng fumé, au naturel	
1615		Hareng, grillé/poêlé	
1616		Lieu noir, cuit	
1617		Limande-sole, cuite à la vapeur	
1618		Maquereau, rôti/cuit au four	
1619		Maquereau, frit	
1620		Merlan, frit	
1621		Merlan, cuit à la vapeur	
1622		Cabillaud, rôti/cuit au four	
1623		Morue, salée, bouillie/cuite à l'eau	
1624		Cabillaud, cuit à la vapeur	
1625		Mulet, rôti/cuit au four	
1626		Raie, rôtie/cuite au four	
1627		Roussette ou petite roussette ou saumonette, cuite	
1628		Saumon fumé	
1629		Saumon, cuit à la vapeur	
1630		Thon, rôti/cuit au four	
1631		Sole, cuite à la vapeur	
1632		Sole, rôtie/cuite au four	
1633		Sole, bouillie/cuite à l'eau	
1634		Sole, frite	
1635		Raie, cuite au court-bouillon	
1636		Lotte ou baudroie, grillée/poêlée	
1637		Maquereau, fumé	
1638		Haddock (fumé) ou églefin fumé	
1639		Espadon, rôti/cuit au four	
1640		Turbot, rôti/cuit au four	
1641		Merlu, cuit à l'étouffée	
1642		Églefin, grillé/poêlé	
1643		Sardine, grillée	
1644		Vivaneau, cuit	
1645		Rascasse, cuite à la vapeur	
1646		Lieu ou colin d'Alaska, fumé	
1647		Saumon, cuit au micro-ondes, élevage	
1648		Saumon, bouilli/cuit à l'eau, élevage	
1649		Dorade grise, ou daurade grise, ou griset, rôtie/cuite au four	
1650		Saumon, grillé/poêlé	
1651		Saumon, élevage, rôti/cuit au four	
1652		Hareng fumé, à l'huile	
1653		Julienne ou Lingue, cuite	
1654		Flétan du Groënland ou flétan noir ou flétan commun, cuit à la vapeur	
1655		Sole, poêlée	
1656		Anguille, cuite (aliment moyen)	
1657		Anguille, rôtie/cuite au four	
1658		Anguille, bouillie/cuite à l'eau	
1659		Brochet, rôti/cuit au four	
1660		Carpe, rôtie/cuite au four	
1661		Perche, rôtie/cuite au four	
1662		Truite, rôtie/cuite au four	
1663		Truite, cuite à la vapeur	
1664		Truite arc en ciel, élevage, rôtie/cuite au four	
1665		Truite arc en ciel, élevage, cuite à la vapeur	
1666		Panga, Pangasius, ou poisson-chat du Mékong, filet, cuit	
1667		Truite d'élevage, fumée	
1668		Bar commun ou loup, rôti/cuit au four	
1669		Bar rayé ou bar d'Amérique, cru	
1670		Lieu ou colin d'Alaska, cru	
1671		Flétan de l'Atlantique ou flétan blanc, cru	
1672		Hareng, cru	
1673		Lotte ou baudroie, crue	
1674		Saumon, cru, élevage	
1675		Turbot sauvage, cru	
1676		Cabillaud, cru	
1677		Merlu, cru	
1678		Lieu noir, surgelé, cru	
1679		Merlu, filet, surgelé, cru	
1680		Maquereau, cru	
1681		Raie, crue	
1682		Thon, cru	
1683		Carrelet ou plie, cru	
1684		Limande, crue	
1685		Sole, crue	
1686		Rascasse, crue	
1687		Thon albacore ou thon jaune, cru	
1688		Sardine, crue	
1689		Thon listao ou Bonite à ventre rayé, cru	
1690		Thon rouge, cru	
1691		Bar commun ou loup, cru, sans précision	
1692		Roussette ou petite roussette ou saumonette, crue	
1693		Bar ou loup de l'Atlantique, cru	
1694		Thon germon ou thon blanc, cru	
1695		Anchois commun, cru	
1696		Dorade royale, ou daurade ou vraie daurade, crue, sauvage	
1697		Espadon, cru	
1698		Éperlan, cru	
1699		Cardine franche, crue	
1700		Rouget-barbet de roche, cru	
1701		Dorade royale ou daurade ou vraie daurade, crue, élevage	
1702		Mulet, cru	
1703		Truite de mer, crue	
1704		Merlan, cru	
1705		Morue, salée, sèche	
1706		Dorade grise, ou daurade grise, ou griset, crue	
1707		Bogue, crue	
1708		Bonite, crue	
1709		Maquereau espagnol ou maquereau blanc ou billard, cru	
1710		Denté, cru	
1711		Saint-Pierre, cru	
1712		Grondin, cru	
1713		Corb, cru	
1714		Capelan, cru	
1715		Dorade rose, ou daurade rose, crue	
1716		Rouget-barbet de roche, vapeur	
1717		Saupe, crue	
1718		Chinchard, cru	
1719		Églefin, cru	
1720		Congre, cru	
1721		Grenadier (de roche), cru	
1722		Lieu jaune ou colin, cru	
1723		Julienne ou Lingue, crue	
1724		Grand sébaste, ou dorade sébaste, ou daurade sébaste, cru	
1725		Tacaud, cru	
1726		Lieu noir, cru	
1727		Limande-sole, crue	
1729		Vivaneau, cru	
1730		Lavaret, cru	
1731		Sabre, cru	
1732		Flétan du Groënland ou flétan noir ou flétan commun, cru	
1733		Carangue, cru	
1734		Coulirou, cru	
1735		Saumon, cru, sauvage	
1736		Requin, cru	
1737		Orphie commune, crue	
1738		Lompe, crue	
1739		Brème, cru	
1740		Omble chevalier, cru	
1741		Loup tacheté, cru	
1742		Sprat, cru	
1743		Turbot, cru	
1744		Corégone lavaret, cru	
1745		Mérou, cru	
1746		Lingue bleue ou Lingue, crue	
1747		Sole tropicale ou Sole langue, crue	
1748		Turbot d'élevage, cru	
1749		Plie commune, crue	
1750		Bar commun ou loup (Méditerranée), cru, sauvage	
1751		Bar commun ou loup (Méditerranée), cru, élevage	
1752		Sébaste du nord, ou dorade sébaste, ou daurade sébaste, crue	
1753		Hoki, tout lieu de pêche, cru	
1754		Grenadier bleu ou hoki de Nouvelle-Zélande, cru	
1755		Grondin perlon, cru	
1756		Merlu blanc du Cap, surgelé, cru	
1757		Chinchard maigre, cru	
1758		Chinchard gras, cru	
1759		Hareng maigre, cru	
1760		Hareng gras, cru	
1761		Joëls (petits poissons entiers) pour friture, crus	
1762		Empereur, filet, sans peau, cru	
1763		Rouget-barbet, filet avec peau, surgelé, cru (Thaïlande, Sénégal…)	
1764		Carpe, crue, élevage	
1765		Truite d'élevage, crue	
1766		Truite arc en ciel, crue, élevage	
1767		Perche, crue	
1768		Brochet, cru	
1769		Esturgeon, cru	
1770		Anguille, crue	
1771		Pangasius ou Poisson-chat, cru	
1772		Tilapia, cru	
1773		Truite saumonée, crue	
1774		Lotte de rivière, crue	
1775		Sandre, cru	
1776		Perche du Nil, crue	
1777		Coquille Saint-Jacques, noix et corail, cuite	
1778		Crevette, cuite	
1779		Homard, bouilli/cuit à l'eau	
1780		Moule, bouillie/cuite à l'eau	
1781		Bulot ou Buccin, cuit	
1782		Langouste, bouillie/cuite à l'eau	
1783		Crabe ou Tourteau, bouilli/cuit à l'eau	
1784		Clam, Praire ou Palourde, bouilli/cuit à l'eau	
1785		Écrevisse, cuite	
1786		Calmar ou calamar ou encornet, bouilli/cuit à l'eau	
1787		Fruits de mer (aliment moyen)	
1788		Poulpe, cuit	
1789		Fruits de mer, cuits, surgelés	
1790		Calmar ou calamar ou encornet, frit ou poêlé avec matière grasse	
1791		Escargot, sans matière grasse ajoutée, cuit	
1792		Calmar ou calamar ou encornet, cru	
1793		Coquille Saint-Jacques, noix et corail, crue	
1794		Escargot, cru	
1795		Homard, cru	
1796		Huître, sans précision, crue	
1797		Moule commune, crue	
1798		Langouste, crue	
1799		Seiche, crue	
1800		Clam, Praire ou Palourde, cru	
1801		Poulpe, cru	
1802		Bulot ou Buccin, cru	
1803		Crevette, crue	
1804		Langoustine, crue	
1805		Moule de Méditerranée, crue	
1806		Écrevisse, crue	
1807		Huître creuse, crue	
1808		Huître plate, crue	
1809		Crevette, surgelée, crue	
1810		Crabe, cru	
1811		Ormeau, cru	
1812		Coquille Saint-Jacques, noix, crue	
1813		Pecten d'Amérique ou Peigne du canada, noix, crue	
1814		Pétoncle ou Peigne du Pérou, noix, crue	
1815		Crevette rose, crue	
1816		Grenouille, cuisse, crue	
1817		Rillettes de crabe	
1818		Rillettes de poisson	
1819		Rillettes de saumon	
1820		Rillettes de thon	
1821		Rillettes de maquereau	
1822		Terrine de poisson	
1823		Terrine de fruits de mer, avec ou sans poisson	
1824		Tarama, préemballé	
1825		Calmar ou Calamar ou encornet, à la romaine (beignet)	
1826		Crabe, miettes et ou pattes décortiquées, appertisé, égoutté	
1827		Langoustine, panée, frite	
1828		Beignet de crevette	
1829		Moule, appertisée, égouttée	
1830		Escargot en sauce au beurre persillé, cuit	
1831		Moules à la sauce catalane ou escabèche (tomate), appertisée, égouttée	
1832		Accra de poisson	
1833		Carpaccio de saumon avec marinade	
1834		Anchois, filets roulés aux câpres, semi-conserve, égoutté	
1835		Anchois, filets à l'huile, semi-conserve, égoutté	
1836		Carrelet ou plie, pané, frit	
1837		Oeufs de lompe, semi-conserve	
1838		Caviar, semi-conserve	
1839		Hareng mariné ou rollmops	
1840		Limande-sole, panée, frite	
1841		Pilchard, sauce tomate, appertisé, égoutté	
1842		Poisson, croquette ou beignet ou nuggets, frit	
1843		Poisson pané, surgelé, cru	
1844		Poisson pané, frit	
1845		Sardine, à l'huile, appertisée, égouttée	
1846		Sardine, sauce tomate, appertisée, égouttée	
1847		Thon, au naturel, appertisé, égoutté	
1848		Sardine, à l'huile d'olive, appertisée, égouttée	
1849		Surimi, bâtonnets, tranche ou râpé saveur crabe	
1850		Oeufs de cabillaud, fumés, semi-conserve	
1851		Thon à l'huile, appertisé, égoutté	
1852		Thon germon ou thon blanc, cuit à la vapeur sous pression	
1853		Maquereau, filet sauce tomate, appertisé, égoutté	
1854		Maquereau, filet sauce moutarde, appertisé, égoutté	
1855		Maquereau, filet au vin blanc, appertisé, égoutté	
1856		Saumon, appertisé, égoutté	
1857		Maquereau, au naturel, appertisé, égoutté	
1858		Merlan, pané	
1859		Foie de morue, appertisé, égoutté	
1860		Anchois au sel (anchoité, semi-conserve)	
1861		Thon germon ou thon blanc, à l'huile d'olive, appertisé, égoutté	
1862		Thon albacore ou thon jaune, au naturel, appertisé, égoutté	
1863		Maquereau, mariné	
1864		Anchois commun, mariné	
1865		Sardine, filets sans arêtes à l'huile d'olive, appertisés, égouttés	
1866		Surimi, fourré au fromage	
1867		Miettes de thon à la tomate, appertisées	
1868		Thon, à la catalane ou à l'escabèche (sauce tomate), appertisé	
1869		Miettes de thon à l'huile, appertisées	
1870		Oeufs de saumon, semi-conserve	
1871		Oeuf, blanc (blanc d'oeuf), cuit	
1872		Oeuf, jaune (jaune d'oeuf), cuit	
1873		Oeuf, dur	
1874		Oeuf, poché	
1875		Oeuf, à la coque	
1876		Oeuf, brouillé, avec matière grasse	
1877		Oeuf, au plat, sans matière grasse	
1878		Oeuf, cru	
1879		Oeuf, blanc (blanc d'oeuf), cru	
1880		Oeuf, jaune (jaune d'oeuf), cru	
1881		Oeuf de caille, cru	
1882		Oeuf de cane, cru	
1883		Oeuf d'oie, cru	
1884		Oeuf de dinde, cru	
1885		Oeuf, jaune (jaune d'oeuf), en poudre	
1886		Oeuf, blanc (blanc d'oeuf), en poudre	
1887		Oeuf, en poudre	
1888		Omelette au fromage	
1889		Omelette aux lardons	
1890		Omelette aux champignons	
1891		Omelette aux fines herbes	
1892		Tortilla espagnole aux oignons (omelette aux pommes de terre et oignons)	
1893		Omelette, garnitures diverses : légumes, fromages, viandes... (aliment moyen)	
1894		Lait entier, UHT	
1895		Lait entier, pasteurisé	
1896		Lait demi-écrémé, UHT	
1897		Lait demi-écrémé, pasteurisé	
1898		Lait demi-écrémé, UHT, enrichi en vitamines	
1899		Lait écrémé, UHT	
1900		Lait écrémé, pasteurisé	
1901		Lait demi-écrémé, à teneur réduite en lactose	
1902		Lait de chèvre, entier, UHT	
1903		Lait de chèvre, demi-écrémé, UHT	
1904		Lait de chèvre, entier, cru	
1905		Lait de jument, entier	
1906		Lait de brebis, entier	
1907		Lait en poudre, entier	
1908		Lait concentré non sucré, entier	
1909		Lait concentré sucré, entier	
1910		Lait en poudre, demi-écrémé	
1911		Lait en poudre, écrémé	
1912		Lait, teneur en matière grasse inconnue, UHT (aliment moyen)	
1913		Boisson lactée, lait fermenté ou yaourt à boire, aromatisé, sucré	
1914		Boisson lactée, lait fermenté ou yaourt à boire, aux fruits, sucré	
1915		Boisson lactée, lait fermenté ou yaourt à boire, nature, sucré	
1916		Boisson lactée, lait fermenté ou yaourt à boire, nature, sucré, au L Casei	
1917		Lait fermenté ou spécialité laitière type yaourt, aromatisé, sucré, au bifidus	
1918		Lait fermenté ou spécialité laitière type yaourt, aux fruits, sucré, au bifidus	
1919		Lait fermenté ou spécialité laitière type yaourt, nature, au bifidus	
1920		Yaourt à la grecque, au lait de brebis	
1921		Yaourt à la grecque, sur lit de fruits	
1922		Yaourt au lait de chèvre, nature, 5% MG environ	
1923		Yaourt, lait fermenté ou spécialité laitière, aux céréales, 0% MG	
1924		Yaourt, lait fermenté ou spécialité laitière, aromatisé, avec édulcorants, 0% MG	
1925		Yaourt, lait fermenté ou spécialité laitière, aromatisé, sucré	
1926		Yaourt, lait fermenté ou spécialité laitière, aromatisé, sucré, à la crème	
1927		Yaourt, lait fermenté ou spécialité laitière, aux céréales	
1928		Yaourt, lait fermenté ou spécialité laitière, aux copeaux de chocolat, à la crème, sucré	
1929		Yaourt, lait fermenté ou spécialité laitière, aux fruits, avec édulcorants, 0% MG	
1930		Yaourt, lait fermenté ou spécialité laitière, aux fruits, avec édulcorants, 0% MG, enrichi en vitamine D	
1931		Yaourt, lait fermenté ou spécialité laitière, aux fruits, sucré	
1932		Yaourt, lait fermenté ou spécialité laitière, aux fruits, sucré, à la crème	
1933		Yaourt, lait fermenté ou spécialité laitière, aux fruits, sucré, enrichi en vitamine D	
1934		Yaourt, lait fermenté ou spécialité laitière, nature	
1935		Yaourt, lait fermenté ou spécialité laitière, nature, 0% MG	
1936		Yaourt, lait fermenté ou spécialité laitière, nature, à la crème	
1937		Yaourt, lait fermenté ou spécialité laitière, nature, sucré	
1938		Yaourt ou spécialité laitière nature (aliment moyen)	
1939		Yaourt ou spécialité laitière nature ou aux fruits (aliment moyen)	
1940		Spécialité laitière type encas, riche en protéines, sur lit de fruits, sucrée	
1941		Yaourt, lait fermenté ou spécialité laitière, aromatisé ou aux fruits, 0% MG (aliment moyen)	
1942		Yaourt, lait fermenté ou spécialité laitière, aromatisé ou aux fruits, non allégé en MG (aliment moyen)	
1943		Yaourt, lait fermenté ou spécialité laitière, aromatisé ou aux fruits, avec édulcorants (aliment moyen)	
1944		Yaourt, lait fermenté ou spécialité laitière, aromatisé ou aux fruits, sucré (aliment moyen)	
1945		Yaourt, lait fermenté ou spécialité laitière, aromatisé ou aux fruits, sucré, non allégé en MG (aliment moyen)	
1946		Yaourt, lait fermenté ou spécialité laitière, aromatisé ou aux fruits (aliment moyen)	
1947		Lait fermenté à boire, nature, maigre	
1948		Lait fermenté à boire, nature, au lait entier	
1949		Yaourt à la grecque, nature	
1950		Kéfir	
1951		Fromage blanc nature ou aux fruits (aliment moyen)	
1952		Faisselle, 6% MG environ	
1953		Fromage blanc nature, 0% MG	
1954		Fromage blanc nature, 3% MG environ	
1955		Fromage blanc nature, gourmand, 8% MG environ	
1956		Fromage blanc ou spécialité laitière, aux fruits, sucré, gourmand, 7% MG environ	
1957		Fromage frais type petit suisse, aux fruits, 2-3% MG	
1958		Fromage frais type petit suisse, aux fruits, 2-3% MG, enrichi en calcium et vitamine D	
1959		Fromage frais type petit suisse, nature, 0% MG	
1960		Fromage frais type petit suisse, nature, 4% MG environ	
1961		Fromage frais type petit suisse, nature, 10% MG environ	
1962		Fromage frais type petit suisse, aromatisé aux fruits, 2-3% MG, enrichi en calcium et vitamine D	
1963		Crème dessert, allégée en MG, rayon frais	
1964		Flan aux œufs, rayon frais	
1965		Lait emprésuré aromatisé, rayon frais	
1966		Lait gélifié aromatisé, nappé caramel, rayon frais	
1967		Lait gélifié aromatisé, rayon frais	
1968		Liégeois ou viennois (chocolat, café, caramel ou vanille), rayon frais	
1969		Lait gélifié aromatisé, allégé en matière grasse et en sucre, rayon frais	
1970		Panna cotta, rayon frais	
1971		Gâteau de semoule aux raisins et caramel, rayon frais	
1972		Gâteau de riz au caramel, rayon frais	
1973		Milk-shake, provenant de fast food	
1974		Crème dessert au chocolat, rayon frais	
1975		Mousse au chocolat (base laitière), rayon frais	
1976		Crème caramel, rayon frais	
1977		Crème aux œufs (petit pot de crème chocolat, vanille, etc.), rayon frais	
1978		Riz au lait, rayon frais	
1979		Crème brûlée, rayon frais	
1980		Crème dessert à la vanille, appertisée	
1981		Ile flottante, rayon frais	
1982		Semoule au lait, rayon frais	
1983		Mousse aux fruits, rayon frais	
1984		Crème dessert à la vanille, rayon frais	
1985		Crème dessert, rayon frais (aliment moyen)	
1986		Mousse liégeoise (chocolat, café, caramel ou vanille), rayon frais	
1987		Préparation pour mousse au chocolat	
1988		Crème dessert au café, rayon frais	
1989		Crème dessert au caramel, rayon frais	
1990		Crème dessert, appertisée (aliment moyen)	
1991		Crème dessert au chocolat, appertisée	
1992		Crème dessert, rayon frais ou appertisée (aliment moyen)	
1993		Cheesecake ou Gâteau au fromage frais, rayon frais	
1994		Dessert au soja, aux fruits, rayon frais	
1995		Dessert au soja, nature, rayon frais	
1996		Tiramisu, rayon frais	
1997		Mousse à la crème de marrons, rayon frais	
1998		Dessert au soja aromatisé, rayon frais	
1999		Profiteroles (crème pâtissière et sauce chocolat), rayon frais	
2000		Gâteau de semoule, appertisé	
2001		Mousse au chocolat traditionnelle, rayon frais	
2002		Clafoutis aux fruits, rayon frais	
2003		Liégeois aux fruits	
2004		Gâteau de riz, appertisé	
2005		Gâteau au chocolat, cœur fondant, rayon frais	
2006		Pain perdu	
2007		Lait de poule, sans alcool	
2008		Crème pâtissière	
2009		Fromage (aliment moyen)	
2010		Camembert, sans précision	
2011		Fromage à pâte molle et croûte fleurie (type camembert)	
2012		Camembert au lait cru	
2013		Fromage à pâte molle double crème environ 30% MG	
2014		Fromage rond à pâte molle et croûte fleurie 5 à 11% MG type camembert allégé en matière grasse	
2015		Coulommiers	
2016		Fromage rond à pâte molle et croûte fleurie environ 11% MG type coulommiers allégé en matière grasse	
2017		Fromage rond à pâte molle et croûte fleurie environ 5% MG type camembert allégé en matière grasse	
2018		Brie, sans précision	
2019		Brie de Meaux	
2020		Brie de Melun	
2021		Carré de l'Est	
2022		Chaource	
2023		Maroilles laitier	
2024		Maroilles fermier	
2025		Neufchâtel	
2026		Fromage à pâte molle triple crème environ 40% MG	
2027		Fromage à pâte molle et croûte lavée (aliment moyen)	
2028		Fromage à pâte molle et croûte lavée, allégé environ 13% MG	
2029		Maroilles, sans précision	
2030		Livarot	
2031		Époisses	
2032		Munster	
2033		Langres	
2034		Pont l'Évêque	
2035		Reblochon	
2036		Fromage à pâte molle à croûte lavée, au lait pasteurisé (type Vieux Pané)	
2037		Saint-Marcellin	
2038		Fromage à pâte molle et croûte mixte (lavée et fleurie) colorée	
2039		Mont d'or ou Vacherin du Haut-Doubs (produit en France) ou Vacherin-Mont d'Or (produit en Suisse)	
2040		Saint-Félicien	
2041		Fromage de chèvre lactique affiné, au lait cru (type Crottin de Chavignol, Picodon, Rocamadour, Sainte-Maure de Touraine)	
2042		Fromage de chèvre lactique affiné, au lait pasteurisé (type bûchette ou crottin)	
2043		Fromage de chèvre lactique affiné (type bûchette, crottin, Sainte-Maure)	
2044		Sainte-Maure de Touraine (fromage de chèvre)	
2045		Fromage de chèvre demi-sec	
2046		Fromage de chèvre bûche	
2047		Fromage de chèvre bûche, allégé en matière grasse	
2048		Fromage de chèvre à pâte molle non pressée non cuite croûte naturelle, au lait pasteurisé	
2049		Fromage de chèvre sec	
2050		Fromage de chèvre à pâte molle et croûte fleurie type camembert	
2051		Fromage de brebis à pâte molle et croûte fleurie	
2052		Chabichou (fromage de chèvre)	
2053		Pélardon (fromage de chèvre)	
2054		Crottin de chèvre, au lait cru	
2055		Crottin de chèvre, sans précision	
2056		Crottin de Chavignol (fromage de chèvre)	
2057		Picodon (fromage de chèvre)	
2058		Pouligny Saint-Pierre (fromage de chèvre)	
2059		Sainte-Maure (fromage de chèvre)	
2060		Selles-sur-Cher (fromage de chèvre)	
2061		Chevrot (fromage de chèvre)	
2062		Rocamadour (fromage de chèvre)	
2063		Valençay (fromage de chèvre)	
2064		Roquefort	
2065		Fourme de Montbrison	
2066		Fromage bleu au lait de vache	
2067		Fromage bleu d'Auvergne	
2068		Fourme d'Ambert	
2069		Fromage bleu des Causses	
2070		Gorgonzola	
2071		Bleu de Gex ou Fromage bleu du Haut-jura ou Bleu de septmoncel (AOC)	
2072		Fromage bleu de Bresse	
2073		Fromage bleu de Bresse allegé environ 15% MG	
2074		Fromage à pâte pressée cuite (aliment moyen)	
2075		Beaufort	
2076		Comté	
2077		Abondance	
2078		Gruyère IGP France	
2079		Gruyère	
2080		Emmental ou emmenthal	
2081		Fromage à pate pressée cuite type emmental ou emmenthal, allégé en matière grasse	
2082		Emmental ou emmenthal râpé	
2083		Ossau-Iraty	
2084		Parmesan	
2085		Fontina	
2086		Grana Padano	
2087		Fromage à pâte ferme environ 14% MG type Masdaam à teneur réduite en MG	
2088		Provolone	
2089		Cantal entre-deux	
2090		Cantal, Salers ou Laguiole	
2091		Salers	
2092		Cheddar	
2093		Edam	
2094		Mimolette jeune	
2095		Gouda	
2096		Mimolette demi-vieille	
2097		Mimolette vieille	
2098		Mimolette, sans précision	
2099		Fromage à pâte ferme environ 27% MG type Maasdam	
2100		Mimolette extra-vieille	
2101		Morbier	
2102		Fromage de brebis des Pyrénées	
2103		Saint-Nectaire, laitier	
2104		Raclette (fromage)	
2105		Saint-Nectaire, fermier	
2106		Saint-Nectaire, sans précision	
2107		Saint-Paulin (fromage à pâte pressée non cuite demi-ferme)	
2108		Tomme ou tome de vache	
2109		Tomme ou tome de montagne ou de Savoie	
2110		Tomme ou tome, allégée en matière grasse, environ 13% MG	
2111		Asiago	
2112		Fromage de brebis Corse à pâte molle	
2113		Tome des Bauges	
2114		Fromage de brebis à pâte pressée	
2115		Fromage de lactosérum de brebis	
2116		Fromage fondu en tranchettes	
2117		Fromage fondu en portions ou en cubes environ 20% MG	
2118		Fromage fondu double crème, environ 31% MG	
2119		Cancoillotte (spécialité fromagère fondue)	
2120		Spécialité fromagère fondante au fromage blanc et aux noix	
2121		Snack pour enfants à base de fromage fondu et de gressins	
2122		Fromage type feta, au lait de vache	
2123		Feta de brebis	
2124		Fromage type feta, au lait de vache, à l'huile et aux aromates	
2125		Spécialité fromagère non affinée environ 25% MG, type fromage en barquette à tartiner ou coque fromagère	
2126		Spécialité fromagère non affinée environ 20% MG, type fromage en barquette à tartiner ou coque fromagère	
2127		Fromage de chèvre frais, au lait pasteurisé (type bûchette fraîche)	
2128		Fromage de chèvre frais, au lait cru (type palet ou crottin frais)	
2129		Fromage de chèvre frais, au lait pasteurisé ou cru (type crottin frais ou bûchette fraîche)	
2130		Fromage de chèvre à tartiner, nature	
2131		Spécialité fromagère non affinée à tartiner environ 30-40 % MG aromatisée (ex: ail et fines herbes)	
2132		Mascarpone	
2133		Ricotta	
2134		Mozzarella au lait de vache	
2135		Crème de lait, 30% MG, épaisse, rayon frais	
2136		Crème de lait, 30% MG, semi-épaisse, UHT	
2137		Crème chantilly, sous pression, UHT	
2138		Crème de lait, 15 à 20% MG, légère, semi-épaisse, UHT	
2139		Crème de lait, 15 à 20% MG, légère, épaisse, rayon frais	
2140		Spécialité à base de crème légère 8% MG, fluide ou épaisse	
2141		Boisson à base de riz, nature	
2142		Eau de source, embouteillée (aliment moyen)	
2143		Eau minérale, embouteillée, faiblement minéralisée (aliment moyen)	
2144		Eau minérale (aliment moyen)	
2145		Eau minérale, plate (aliment moyen)	
2146		Eau minérale, gazeuse (aliment moyen)	
2147		Eau du robinet	
2148		Eau embouteillée de source	
2149		Eau minérale Abatilles, embouteillée, non gazeuse, faiblement minéralisée (Arcachon, 33)	
2150		Eau minérale Aix-les-Bains, embouteillée, non gazeuse, faiblement minéralisée (Aix-les-Bains, 73)	
2151		Eau minérale Aizac, embouteillée, gazeuse, faiblement minéralisée (Aizac, 07)	
2152		Eau minérale Amanda, embouteillée, non gazeuse, fortement minéralisée (St-Amand, 59)	
2153		Eau minérale Arcens, embouteillée, gazeuse, moyennement minéralisée (Arcens, 07)	
2154		Eau minérale Ardesy, embouteillée, gazeuse, fortement minéralisée (Ardes, 63)	
2155		Eau minérale Auvergne, embouteillée, gazeuse, fortement minéralisée (Cornillon, 38)	
2156		Eau minérale Celtic, embouteillée, gazeuse ou non gazeuse, très faiblement minéralisée (Niederbronn, 67)	
2157		Eau minérale Chambon, embouteillée, non gazeuse, faiblement minéralisée (Chambon, 45)	
2158		Eau minérale Chantemerle, embouteillée, non gazeuse, faiblement minéralisée (Le Pestrin, 07)	
2159		Eau minérale Chateauneuf, embouteillée, gazeuse, fortement minéralisée (Chateauneuf, 63)	
2160		Eau minérale Chateldon, embouteillée, gazeuse, fortement minéralisée (Chateldon, 63)	
2161		Eau minérale Clos de l'Abbaye, embouteillée, non gazeuse, moyennement minéralisée (St-Amand, 59)	
2162		Eau minérale Contrex, embouteillée, non gazeuse, fortement minéralisée (Contrexéville, 88)	
2163		Eau minérale Dax, embouteillée, non gazeuse, moyennement minéralisée (Dax, 40)	
2164		Eau minérale Didier, embouteillée, gazeuse, fortement minéralisée (Martinique)	
2165		Eau minérale Didier, embouteillée non gazeuse, fortement minéralisée (Martinique)	
2166		Eau minérale Evian, embouteillée, non gazeuse, faiblement minéralisée (Evian, 74)	
2167		Eau minérale Hépar, embouteillée, non gazeuse, fortement minéralisée (Vittel, 88)	
2168		Eau minérale Hydroxydase, embouteillée, gazeuse, fortement minéralisée (Le Breuil sur Couze, 63)	
2169		Eau minérale Vernière, embouteillée, gazeuse, moyennement minéralisée (Les Aires, 34)	
2170		Eau minérale Luchon, embouteillée, non gazeuse, faiblement minéralisée (Luchon, 31)	
2171		Eau minérale Mont-Roucous, embouteillée, très faiblement minéralisée (Lacaune, 81)	
2172		Eau de source Ogeu, embouteillée, faiblement minéralisée (Ogeu, 64)	
2173		Eau minérale Orée du bois, embouteillée, non gazeuse, moyennement minéralisée (St-Amand, 59)	
2174		Eau minérale Orezza, embouteillée, gazeuse, moyennement minéralisée (Rapaggio, 20B)	
2175		Eau minérale Parot, embouteillée, gazeuse, moyennement minéralisée (St-Romain-le-Puy, 42)	
2176		Eau minérale Plancoet, embouteillée, gazeuse ou non gazeuse, faiblement minéralisée (Plancoet, 22)	
2177		Eau minérale Propiac, embouteillée, non gazeuse, fortement minéralisée (Propiac, 26)	
2178		Eau minérale Puits St-Georges, embouteillée, gazeuse, moyennement minéralisée (St-Romain-le-Puy, 42)	
2179		Eau minérale Quézac, embouteillée, gazeuse, moyennement minéralisée (Quézac, 48)	
2180		Eau minérale Reine des basaltes, embouteillée, gazeuse, moyennement minéralisée (Asperjoc, 07)	
2181		Eau minérale Rozana, embouteillée, gazeuse, fortement minéralisée (Beauregard, 63)	
2182		Eau minérale Sail-les-Bains, embouteillée, non gazeuse, faiblement minéralisée (Sail-les-Bains, 42)	
2183		Eau minérale Salvetat, embouteillée, gazeuse, moyennement minéralisée (La Salvetat, 34)	
2184		Eau minérale Soultzmatt , embouteillée, gazeuse, moyennement minéralisée ( Soultzmatt, 68)	
2185		Eau minérale St-Amand, embouteillée, gazeuse ou non gazeuse, moyennement minéralisée (St-Amand, 59)	
2186		Eau minérale St-Antonin, embouteillée, non gazeuse, fortement minéralisée (St-Antonin-Noble-Val, 82)	
2187		Eau minérale St-Diéry, embouteillée, gazeuse, fortement minéralisée (St-Diéry, 63)	
2188		Eau minérale Ste-Marguerite, embouteillée, gazeuse, moyennement minéralisée (St-Maurice, 63)	
2189		Eau minérale St-Yorre, embouteillée, gazeuse, fortement minéralisée (Saint-Yorre, 03)	
2190		Eau minérale Thonon, embouteillée, non gazeuse, faiblement minéralisée (Thonon, 74)	
2191		Eau minérale Ventadour, embouteillée, gazeuse, faiblement minéralisée (Le Pestrin, 07)	
2192		Eau minérale Vernet, embouteillée, gazeuse, faiblement minéralisée (Prades, 07)	
2193		Eau minérale Vichy Célestins, embouteillée, gazeuse, fortement minéralisée (Saint-Yorre, 03)	
2194		Eau minérale Vittel, embouteillée, non gazeuse, moyennement minéralisée (Vittel, 88)	
2195		Eau minérale Volvic, embouteillée, non gazeuse, faiblement minéralisée (Volvic, 63)	
2196		Eau minérale Volvic active, embouteillée, gazeuse, faiblement minéralisée (Volvic, 63)	
2197		Eau minérale Wattwiller, embouteillée, gazeuse ou non gazeuse, faiblement minéraliséee (Wattwiller, 68)	
2198		Eau minérale Perrier, embouteillée, gazeuse, faiblement minéralisée (Vergèse, 30)	
2199		Eau minérale Badoit, embouteillée, gazeuse, moyennement minéralisée (St-Galmier, 42)	
2200		Eau minérale Avra, embouteillée, non gazeuse, faiblement minéralisée (Grèce)	
2201		Eau minérale Beckerich, embouteillée, non gazeuse, faiblement minéralisée (Luxembourg)	
2202		Eau minérale Caramulo, embouteillée, non gazeuse, très faiblement minéralisée (Portugal)	
2203		Eau minérale Chaudfontaine, embouteillée, non gazeuse, faiblement minéralisée (Belgique)	
2204		Eau minérale Christinen Brunnen, embouteillée, non gazeuse, moyennement minéralisée (Allemagne)	
2205		Eau minérale Courmayeur, embouteillée, non gazeuse, fortement minéralisée (Italie)	
2206		Eau minérale Highland spring, embouteillée, non gazeuse, faiblement minéralisée (Écosse)	
2207		Eau minérale Levissima, embouteillée, non gazeuse, faiblement minéralisée (Italie)	
2208		Eau minérale Luso, embouteillée, non gazeuse, très faiblement minéralisée (Portugal)	
2209		Eau minérale Néro, embouteillée, non gazeuse, faiblement minéralisée (Grèce)	
2210		Eau minérale Penacova, embouteillée, non gazeuse, très faiblement minéralisée (Portugal)	
2211		Eau minérale San Benedetto, embouteillée, faiblement minéralisée (Italie)	
2212		Eau minérale San Bernardo, embouteillée, très faiblement minéralisée (Italie)	
2213		Eau minérale San Pellegrino, embouteillée, gazeuse, moyennement minéralisée (Italie)	
2214		Eau minérale Spa-Reine, embouteillée, gazeuse ou non non gazeuse, moyennement minéralisée (Belgique)	
2215		Eau minérale Talians, embouteillée, non gazeuse, fortement minéralisée (Italie)	
2216		Eau minérale Valvert, embouteillée, non gazeuse, faiblement minéralisée (Belgique)	
2217		Eau minérale Appollinaris, embouteillée, non gazeuse, fortement minéralisée (Allemagne)	
2218		Eau de source Cristaline, embouteillée, non gazeuse	
2219		Eau minérale Biovive, embouteillée, non gazeuse, faiblement minéralisée (Dax, 40)	
2220		Eau minérale La Cairolle, embouteillée, non gazeuse, fortement minéralisée (Les Aires, 34)	
2221		Eau minérale Cilaos, embouteillée, gazeuse, fortement minéralisée (Cilaos, 974)	
2222		Eau minérale La Française, embouteillée, non gazeuse, fortement minéralisée (Propiac, 26)	
2223		Eau minérale Montcalm, embouteillée, non gazeuse, très faiblement minéralisée (Auzat, 09)	
2224		Eau minérale Montclar, embouteillée, non gazeuse, faiblement minéralisée (Montclar, 04)	
2225		Eau minérale Nessel, embouteillée, gazeuse, moyennement minéralisée (Soultzmatt, 68)	
2226		Eau minérale Ogeu, embouteillée, gazeuse, faiblement minéralisée (Ogeu-les-Bains, 64)	
2227		Eau minérale Ogeu, embouteillée, non gazeuse, faiblement minéralisée (Ogeu-les-Bains, 64)	
2228		Eau minérale Prince Noir, embouteillée, non gazeuse, fortement minéralisée (St-Antonin-Noble-Val, 82)	
2229		Eau minérale St-Alban, embouteillée, gazeuse, moyennement minéralisée (St-Alban, 42)	
2230		Eau minérale St-Géron, embouteillée, gazeuse, moyennement minéralisée (St-Géron, 43)	
2231		Eau minérale St-Michel-de-Mourcairol, embouteillée, gazeuse, moyennement minéralisée (Les Aires, 34)	
2232		Eau minérale Treignac, embouteillée, non gazeuse, très faiblement minéralisée (Treignac, 19)	
2233		Eau minérale Vals, embouteillée, gazeuse, moyennement minéralisée (Vals-les-Bains, 07)	
2234		Eau minérale Vauban, embouteillée, non gazeuse, moyennement minéralisée (St-Amand-les-Eaux, 59)	
2235		Eau minérale Carola, embouteillée, gazeuse ou non gazeuse, moyennement minéralisée (Ribeauville, 68)	
2236		Eau minérale Mont-Blanc, embouteillée, non gazeuse, faiblement minéralisée (Italie)	
2237		Eau minérale Eden (La Goa), embouteillée, non gazeuse, faiblement minéralisée (Suisse)	
2238		Jus d'ananas, à base de concentré	
2239		Jus multifruit, pur jus, multivitaminé	
2240		Jus de fruits (aliment moyen)	
2241		Jus de carotte, pur jus	
2242		Jus de citron, maison	
2243		Jus multifruit - base orange, multivitaminé	
2244		Jus d'orange, à base de concentré	
2245		Jus d'orange, maison	
2246		Jus de pomme, à base de concentré	
2247		Jus de pamplemousse (pomélo), à base de concentré	
2248		Jus de raisin, pur jus	
2249		Jus de grenade, pur jus	
2250		Jus de pruneau	
2251		Jus de raisin, à base de concentré	
2252		Jus de mangue, frais	
2253		Jus de fruit de la passion ou maracudja, frais	
2254		Jus de pamplemousse (pomélo), maison	
2255		Jus de tomate, pur jus, salé à 3 g/L	
2256		Jus de pamplemousse (pomelo), pur jus	
2257		Jus de citron, pur jus	
2258		Jus de citron vert, maison	
2259		Jus de citron vert, pur jus	
2260		Jus de tomate, pur jus, salé à 6g/L	
2261		Jus de clémentine ou mandarine, pur jus	
2262		Jus multifruit, pur jus, standard	
2263		Jus de grenade, frais	
2264		Jus de tomate, pur jus (aliment moyen)	
2265		Jus multifruit, à base de concentré, standard	
2266		Jus d'orange, pur jus	
2267		Jus de fruits, pur jus (aliment moyen)	
2268		Jus d'ananas, pur jus	
2269		Jus de pomme, pur jus	
2270		Jus de légumes, pur jus (aliment moyen)	
2271		Jus de fruits, à base de concentré (aliment moyen)	
2272		Smoothie	
2273		Nectar d'abricot	
2274		Nectar de papaye	
2275		Nectar de poire	
2276		Nectar multifruit, multivitaminé	
2277		Nectar multifruit, standard	
2278		Nectar de fruit de la passion ou maracuja	
2279		Nectar de banane	
2280		Nectar de goyave	
2281		Nectar de mangue	
2282		Nectar de pêche	
2283		Nectar d'orange	
2284		Boisson gazeuse, sans jus de fruit, non sucrée, avec édulcorants	
2285		Limonade, sucrée	
2286		Eau de coco	
2287		Boisson à l'eau minérale ou de source, aromatisée, sucrée	
2288		Tonic ou bitter, non sucré, avec édulcorants	
2289		Tonic ou bitter, sucré, avec édulcorants	
2290		Boisson au thé, aromatisée, sucrée, avec édulcorants	
2291		Limonade, sucrée, avec édulcorants	
2292		Cola, sucré	
2293		Boisson gazeuse aux fruits (de 10 à 50% de jus), sucrée	
2294		Boisson plate aux fruits, (à moins de 10% de jus), non sucrée, avec édulcorants	
2295		Boisson plate aux fruits (à moins de 10% de jus), sucrée	
2296		Boisson gazeuse, sans jus de fruit, sucrée	
2297		Boisson à l'eau minérale ou de source, aromatisée, non sucrée, sans édulcorant	
2298		Boisson rafraîchissante sans alcool (aliment moyen)	
2299		Boisson à l'eau minérale ou de source, aromatisée, non sucrée, avec édulcorants	
2300		Boisson gazeuse, sans jus de fruit, à teneur réduite en sucres	
2301		Boisson gazeuse aux fruits (à moins de 10% de jus), sucrée, avec édulcorants	
2302		Limonade, non sucrée, avec édulcorants	
2303		Cola, sucré, avec édulcorants	
2304		Diabolo (limonade et sirop)	
2305		Boisson gazeuse aux fruits (teneur en jus non spécifiée), sucrée (aliment moyen)	
2306		Boisson gazeuse aux fruits (à moins de 10% de jus), sucrée	
2307		Boisson préparée à partir de sirop à diluer type menthe, fraise, etc, sucré, dilué dans l'eau	
2308		Cola, non sucré, avec édulcorants	
2309		Boisson au thé, aromatisée, teneur en sucre et édulcorant inconnue (aliment moyen)	
2310		Cola, teneur en sucre et édulcorant inconnue (aliment moyen)	
2311		Boisson au thé, aromatisée, non sucrée, avec édulcorants	
2312		Cola, sucré, sans caféine	
2313		Cola, non sucré, avec édulcorants, sans caféine	
2314		Boisson au thé, aromatisée, sucrée	
2315		Boisson gazeuse, sans jus de fruit, sucrée, avec édulcorants	
2316		Boisson plate aux fruits (10 à 50% de jus), à teneur réduite en sucres	
2317		Boisson plate aux fruits (teneur en jus non spécifiée), sucrée	
2318		Boisson plate aux fruits (10 à 50% de jus), sucrée	
2319		Boisson gazeuse aux fruits (à moins de 10% de jus), non sucrée, avec édulcorants	
2320		Tonic ou bitter, sucré	
2321		Boisson gazeuse aux fruits (à moins de 10% de jus), non sucrée, sans édulcorant	
2322		Boisson énergisante, sucrée	
2323		Boisson énergisante, non sucrée, avec édulcorants	
2324		Boisson au jus de fruit et au lait	
2325		Boisson lactée aromatisée (arôme inconnu), sucrée, au lait partiellement écrémé, enrichie et/ou restaurée en vitamines et/ou minéraux (aliment moyen)	
2326		Boisson lactée aromatisée au chocolat, sucrée, au lait partiellement écrémé, enrichie et/ou restaurée en vitamines et/ou minéraux	
2327		Boisson lactée aromatisée à la fraise, sucrée, au lait partiellement écrémé, enrichie à la vitamine D	
2328		Lait de coco ou Crème de coco	
2329		Boisson à l'amande	
2330		Boisson au soja, nature	
2331		Boisson au soja, nature, enrichie en calcium	
2332		Boisson au soja, aromatisée, sucrée	
2333		Boisson au soja, aromatisée, sucrée, enrichie en calcium	
2334		Boisson à base d'avoine, nature	
2335		Boisson au soja et jus de fruits concentrés	
2336		Café, non instantané, non sucré, prêt à boire	
2337		Thé infusé, non sucré	
2338		Tisane infusée, non sucrée	
2339		Café décaféiné, non instantané, non sucré, prêt à boire	
2340		Café expresso, non instantané, non sucré, prêt à boire	
2341		Café décaféiné, instantané, non sucré, prêt à boire	
2342		Café, instantané, non sucré, prêt à boire	
2343		Boisson cacaotée ou au chocolat, instantanée, sucrée, prête à boire (reconstituée avec du lait demi-écrémé standard)	
2344		Boisson cacaotée ou au chocolat, instantanée, sucrée, enrichie en vitamines, prête à boire (reconstituée avec du lait demi-écrémé standard)	
2345		Café au lait, café crème ou cappuccino, instantané ou non, non sucré, prêt à boire	
2346		Chicorée et café, instantané, non sucré, prête à boire (reconstituée avec du lait demi-écrémé standard)	
2347		Thé noir, infusé, non sucré	
2348		Thé vert, infusé, non sucré	
2349		Thé oolong, infusé, non sucré	
2350		Chicorée, instantanée, non sucrée, prête à boire (reconstituée avec du lait demi-écrémé standard)	
2351		Chicorée et café, instantané, non sucré, prêt à boire (reconstituée avec de l'eau)	
2352		Café, moulu	
2353		Café, poudre soluble	
2354		Sirop à diluer, sucré	
2355		Boisson concentrée à diluer, sans sucres ajoutés, avec édulcorants, type "sirop 0%"	
2356		Café, décaféiné, poudre soluble	
2357		Cacao, non sucré, poudre soluble	
2358		Poudre cacaotée ou au chocolat pour boisson, sucrée	
2359		Poudre maltée, cacaotée ou au chocolat pour boisson, sucrée, enrichie en vitamines et minéraux	
2360		Chicorée et café, poudre soluble	
2361		Chicorée, poudre soluble	
2362		Café au lait ou cappuccino, poudre soluble	
2363		Café au lait ou cappuccino au chocolat, poudre soluble	
2364		Poudre cacaotée ou au chocolat sucrée pour boisson, enrichie en vitamines et minéraux	
2365		Poudre cacaotée ou au chocolat pour boisson, sucrée, enrichie en vitamines	
2366		Citron ou Lime, spécialité à diluer pour boissons, sans sucres ajoutés	
2367		Vin doux	
2368		Pétillant de fruits	
2369		Vin blanc 11°	
2370		Vin blanc mousseux	
2371		Vin rouge 10°	
2372		Vin rouge 11°	
2373		Vin rouge 12°	
2374		Vin rosé 11°	
2375		Champagne	
2376		Vin rouge 13°	
2377		Vin blanc mousseux aromatisé	
2378		Vin (aliment moyen)	
2379		Vin blanc sec 11°	
2380		Bière brune	
2381		Bière "coeur de marché" (4-5° alcool)	
2382		Bière forte (>8° alcool)	
2383		Cidre brut	
2384		Cidre doux	
2385		Bière faiblement alcoolisée (3° alcool)	
2386		Bière "spéciale" (5-6° alcool)	
2387		Bière "de spécialités" ou d'abbaye, régionales ou d'une brasserie (degré d'alcool variable)	
2388		Cidre traditionnel	
2389		Cidre bouché demi-sec	
2390		Cidre aromatisé (framboise)	
2391		Bière sans alcool (<1,2° alcool)	
2392		Pastis	
2393		Eau de vie	
2394		Gin	
2395		Liqueur	
2396		Rhum	
2397		Whisky	
2398		Apéritif à base de vin ou vermouth	
2399		Vodka	
2400		Apéritif anisé sans alcool	
2401		Cocktail à base de rhum	
2402		Cocktail à base de whisky	
2403		Alcool pur	
2404		Marsala	
2405		Marsala aux oeufs	
2406		Sangria	
2407		Kir (au vin blanc)	
2408		Kir royal (au champagne)	
2409		Crème de cassis	
2410		Cocktail type punch, 16% alcool	
2411		Eau de vie de vin, type armagnac, cognac	
2412		Saké ou Alcool de riz	
2413		Cocktail sans alcool (à base de jus de fruits et de sirop)	
2414		Panaché (limonade et bière)	
2415		Panaché préemballé (<1° alc.)	
2416		Édulcorant à l'aspartame, en pastilles	
2417		Édulcorant à l'aspartame, en poudre	
2418		Vermicelles multicolores	
2419		Miel	
2420		Sucre blanc	
2421		Sucre roux	
2422		Sirop d'érable	
2423		Sucre vanillé	
2424		Édulcorant à la saccharine	
2425		Mélasse de canne	
2426		Sucre allégé à l'aspartame	
2427		Fructose	
2428		Édulcorant à base d'extrait de stévia	
2429		Sirop d'agave	
2430		Barre chocolatée biscuitée	
2431		Barre chocolatée non biscuitée enrobée	
2432		Barre à la noix de coco, enrobée de chocolat	
2433		Chocolat au lait, tablette	
2434		Chocolat noir à moins de 70% de cacao, à croquer, tablette	
2435		Chocolat au lait aux céréales croustillantes, tablette	
2436		Chocolat blanc, tablette	
2437		Barres ou confiserie chocolatées au lait	
2438		Chocolat au lait aux fruits secs (noisettes, amandes, raisins, praline), tablette	
2439		Chocolat au lait sans sucres ajoutés, avec édulcorants, tablette	
2440		Chocolat blanc aux fruits secs (noisettes, amandes, raisins, praliné) , tablette	
2441		Chocolat noir sans sucres ajoutés, avec édulcorants, en tablette	
2442		Pâte à tartiner chocolat et noisette	
2443		Confiserie au chocolat dragéifiée	
2444		Cacahuètes enrobées de chocolat dragéifiées	
2445		Bouchée chocolat fourrage fruits à coques et/ou praliné	
2446		Rocher chocolat fourré praliné	
2447		Chocolat noir aux fruits (orange, framboise, poire), tablette	
2448		Chocolat noir aux fruits secs (noisettes, amandes, raisins, praline), tablette	
2449		Barre chocolatée aux fruits secs	
2450		Chocolat noir fourrage confiseur à la menthe	
2451		Barre goûter frais au lait et chocolat	
2452		Chocolat noir à 70% cacao minimum, extra, dégustation, tablette	
2453		Chocolat au lait fourré	
2454		Chocolat noir fourré praliné, tablette	
2455		Chocolat au lait fourré au praliné, tablette	
2456		Chocolat noir à 40% de cacao minimum, à pâtisser, tablette	
2457		Bonbon / bouchée au chocolat fourrage gaufrettes / biscuit	
2458		Barre chocolat au lait avec nougat	
2459		Barre goûter frais au lait et chocolat avec génoise	
2460		Chocolat, en tablette (aliment moyen)	
2461		Bonbons, tout type	
2462		Chewing-gum, sucré	
2463		Pâte de fruits	
2464		Zeste d'orange confit	
2465		Marron glacé	
2466		Fruit confit	
2467		Nougat ou touron	
2468		Dragée amande	
2469		Guimauve ou marshmallow	
2470		Chewing-gum, sans sucre	
2471		Bonbon dur et sucette	
2472		Bonbon gélifié	
2473		Bonbon au caramel, mou	
2474		Calissons d'Aix en Provence	
2475		Chewing-gum, teneur en sucre inconnue (aliment moyen)	
2476		Confiture de fraise (extra ou classique)	
2477		Confiture d'abricot (extra ou classique)	
2478		Confiture de cerise (extra ou classique)	
2479		Marmelade d'orange	
2480		Confiture de lait	
2481		Confiture de framboise (extra ou classique)	
2482		Confiture, tout type de fruits, allégée en sucres (extra ou classique)	
2483		Glace à l'eau ou sorbet ou crème glacée, tout parfum (aliment moyen)	
2484		Barre glacée chocolatée	
2485		Glace ou crème glacée, bâtonnet, enrobé de chocolat	
2486		Glace ou crème glacée, cône (taille standard)	
2487		Glace ou crème glacée, en bac	
2488		Glace au yaourt	
2489		Glace ou crème glacée, gourmande, en bac	
2490		Glace ou crème glacée, gourmande, en pot	
2491		Glace ou crème glacée, mini cône	
2492		Glace ou crème glacée, pot individuel	
2493		Glace ou crème glacée, bac ou pot (aliment moyen)	
2494		Glace ou crème glacée, petit pot enfant	
2495		Sorbet, bâtonnet	
2496		Sorbet, en bac	
2497		Glace à l'eau	
2498		Profiterole avec glace vanille et sauce chocolat	
2499		Pêche melba	
2500		Dessert glacé type mystère ou vacherin	
2501		Dessert glacé, type sundae	
2502		Dessert glacé feuilleté, à partager	
2503		Omelette norvégienne	
2504		Poire belle Hélène	
2505		Nougat glacé	
2506		Citron givré ou Orange givrée (sorbet)	
2507		Coupe glacée type café ou chocolat liégeois	
2508		Bûche glacée	
2509		Coupe glacée parfum pêche Melba ou poire Belle-Hélène	
2510		Beurre à 82% MG, doux	
2511		Huile de beurre ou Beurre concentré	
2512		Beurre à 80% MG, demi-sel	
2513		Beurre à 80% MG, salé	
2514		Beurre à 82% MG, doux, tendre	
2515		Beurre à 60-62% MG, à teneur réduite en matière grasse, doux	
2516		Beurre à 60-62% MG, à teneur réduite en matière grasse, demi-sel	
2517		Beurre ou assimilé allégé (léger ou à teneur reduite en matière grasse), doux (aliment moyen)	
2518		Beurre à teneur en matière grasse inconnue (allégé ou non), demi-sel (aliment moyen)	
2519		Beurre ou assimilé à teneur en matière grasse inconnue, doux (aliment moyen)	
2520		Beurre à 39-41% MG, léger, doux	
2521		Matière grasse laitière à 25% MG, légère, "à tartiner", doux	
2522		Matière grasse laitière à 20% MG, légère, "à tartiner", doux	
2523		Carotte, déshydratée	
2524		Beurre de cacao	
2525		Matière grasse ou graisse végétale solide (type margarine) pour friture	
2526		Huile pour friture, sans précision	
2527		Huile de palme, sans précision	
2528		Huile de palme raffinée	
2529		Huile végétale (aliment moyen)	
2530		Huile d'amandes d'abricot	
2531		Huile d'amande	
2532		Huile d'arachide	
2533		Huile d'avocat	
2534		Huile de germe de blé	
2535		Huile de carthame	
2536		Huile de colza	
2537		Huile de coton	
2538		Huile de lin	
2539		Huile de maïs	
2540		Huile de noisette	
2541		Huile de noix	
2542		Huile d'olive vierge extra	
2543		Huile de pépins de raisin	
2544		Huile de sésame	
2545		Huile de soja	
2546		Huile de tournesol	
2547		Huile combinée (mélange d'huiles)	
2548		Huile combinée, mélange d'huile d'olive et de graines	
2549		Huile d'argan ou d'argane	
2550		Matière grasse végétale (type margarine) à 80% MG, salé	
2551		Matière grasse végétale ou margarine, 80% MG, doux	
2552		Matière grasse végétale (type margarine) à 70% MG, doux	
2553		Matière grasse végétale (type margarine) à 60% de MG, allégée, au tournesol, doux	
2554		Matière grasse végétale (type margarine), teneur en matière grasse inconue, doux (aliment moyen)	
2555		Matière grasse végétale (type margarine), teneur réduite en matière grasse inconnue, doux (aliment moyen)	
2556		Matière grasse végétale (type margarine), à tartiner, à 30-40% MG, légère, doux	
2557		Matière grasse végétale (type margarine), à tartiner, à 30-40% MG, légère, demi-sel	
2558		Matière grasse végétale (type margarine), à tartiner, à 30-40% MG, légère, doux, aux esters de stérol végétal	
2559		Matière grasse végétale (type margarine), à tartiner, à 30-40% MG, légère, doux, riche en oméga 3	
2560		Matière grasse végétale (type margarine) à 50-63% MG, allégée, doux, riche en oméga 3	
2561		Matière grasse végétale (type margarine) à 50-63% MG, allégée, demi-sel	
2562		Matière grasse végétale (type margarine) à 50-63% MG, allégée, doux, aux esters de stérol végétal	
2563		Matière grasse végétale (type margarine) à 50-63% MG, allégée, demi-sel, riche en oméga 3	
2564		Matière grasse végétale (type margarine) à 50-63% MG, allégée, doux	
2565		Matière grasse végétale (type margarine) à 30-40% MG, légère, demi-sel, aux esters de stérol végétal	
2566		Matière grasse mélangée (végétale et laitière) à 50-63% MG	
2567		Matière grasse mélangée (végétale et laitière) à 50-63% MG, demi-sel	
2568		Matière grasse mélangée (végétale et laitière), à tartiner, à 30-40% MG	
2569		Matière grasse mélangée (végétale et laitière), à tartiner, à 30-40% MG, demi-sel	
2570		Huile de foie de morue	
2571		Huile de sardine	
2572		Huile de saumon	
2573		Huile de hareng	
2574		Saindoux	
2575		Lard gras, cru	
2576		Graisse de poulet	
2577		Graisse de canard	
2578		Graisse d'oie	
2579		Graisse de dinde	
2580		Huile de paraffine	
2581		Ketchup	
2582		Sauce tartare, préemballée	
2583		Mayonnaise (70% MG min.)	
2584		Mayonnaise à teneur réduite en matière grasse ou Mayonnaise allégée	
2585		Sauce barbecue, préemballée	
2586		Sauce soja, préemballée	
2587		Sauce vinaigrette allégée en MG (25 à 50% d'huile), préemballée	
2588		Sauce vinaigrette (50 à 75% d'huile), préemballée	
2589		Harissa (sauce condimentaire)	
2590		Sauce bourguignonne, préemballée	
2591		Sauce moutarde, préemballée	
2592		Sauce au yaourt	
2593		Sauce américaine, préemballée	
2594		Sauce aïoli, préemballée	
2595		Sauce crudités ou Sauce salade, préemballée	
2596		Sauce Nuoc Mâm ou Sauce au poisson, préemballée	
2597		Sauce burger, préemballée	
2598		Sauce crudités ou Sauce salade, allégée en matière grasse, préemballée	
2599		Sauce kebab, préemballée	
2600		Sauce rouille, préemballée	
2601		Sauce au poivre, condimentaire, froide, préemballée	
2602		Caviar de tomates	
2603		Sauce teriyaki, préemballée	
2604		Guacamole, préemballé	
2605		Houmous	
2606		Sauce béchamel, préemballée	
2607		Sauce béarnaise, préemballée	
2608		Sauce hollandaise, préemballée	
2609		Sauce tomate aux oignons, préemballée	
2610		Sauce armoricaine, préemballée	
2611		Sauce tomate à la viande ou Sauce bolognaise, préemballée	
2612		Sauce au poivre vert, préemballée	
2613		Sauce madère, préemballée	
2614		Sauce à l'échalote à la crème, préemballée	
2615		Sauce carbonara, préemballée	
2616		Sauce chasseur, préemballée	
2617		Sauce au curry, préemballée	
2618		Sauce au beurre blanc, préemballée	
2619		Sauce béchamel, maison	
2620		Sauce au beurre, préemballée	
2621		Sauce à la crème	
2622		Sauce aux champignons, préemballée	
2623		Sauce à la crème aux épices	
2624		Sauce à la crème aux herbes	
2625		Sauce aigre douce, préemballée	
2626		Sauce au vin rouge	
2627		Sauce basquaise ou Sauce aux poivrons, préemballée	
2628		Sauce tomate aux champignons, préemballée	
2629		Sauce tomate aux olives, préemballée	
2630		Sauce pesto, préemballée	
2631		Sauce au poivre, chaude, préemballée	
2632		Sauce au fromage pour risotto ou pâtes, préemballée	
2633		Sauce au roquefort, préemballée	
2634		Sauce aux champignons et à la crème, préemballée	
2635		Sauce grand veneur, préemballée	
2636		Sauce indienne type tandoori ou tikka masala, préemballée	
2637		Sauce tomate aux petits légumes, préemballée	
2638		Sauce tomate au fromage, préemballée	
2639		Sauce pesto rosso, préemballée	
2640		Sauce chaude (aliment moyen)	
2641		Meloukhia, sauce, artisanale	
2642		Sauce au chocolat	
2643		Crème anglaise, préemballée	
2644		Cornichon, au vinaigre	
2645		Moutarde	
2646		Vinaigre	
2647		Moutarde à l'ancienne	
2648		Câpres, au vinaigre	
2649		Tapenade	
2650		Oignon au vinaigre	
2651		Vinaigre de cidre	
2652		Vinaigre balsamique	
2653		Cornichon, aigre-doux	
2654		Olive noire, en saumure	
2655		Olive verte, en saumure	
2656		Olive noire, à l'huile (à la grecque)	
2657		Olives vertes, fourrées ou farcies (anchois, poivrons, etc.)	
2658		Bouillon de boeuf, déshydraté	
2659		Fond de veau pour sauces et cuisson, déshydraté	
2660		Fond de volaille pour sauces et cuisson, déshydraté	
2661		Court-bouillon pour poissons, déshydraté	
2662		Bouillon de volaille, déshydraté	
2663		Gelée au madère, déshydratée	
2664		Gelée au madère	
2665		Préparation culinaire à base de soja, type "crème de soja"	
2666		Fond de veau, préemballé	
2667		Pizza, sauce garniture pour	
2668		Bouillon de viande et légumes type pot-au-feu, déshydraté	
2669		Bouillon de viande et légumes type pot-au-feu, non dégraissé, déshydraté	
2670		Bouillon de viande et légumes type pot-au-feu, dégraissé, déshydraté	
2671		Sel blanc alimentaire, non iodé, non fluoré (marin, ignigène ou gemme)	
2672		Sel au céleri	
2673		Sel blanc alimentaire, iodé, non fluoré (marin, ignigène ou gemme)	
2674		Fleur de sel, non iodée, non fluorée	
2675		Sel marin gris, non iodé, non fluoré	
2676		Sel blanc alimentaire, iodé, fluoré à 25 mg /100g (marin, ignigène ou gemme)	
2677		Curry, poudre	
2678		Gingembre, poudre	
2679		Poivre noir, poudre	
2680		Poivre blanc, poudre	
2681		Poivre gris, poudre	
2682		Cannelle, poudre	
2683		Coriandre, graine	
2684		Safran	
2685		Cumin, graine	
2686		Noix de muscade	
2687		Paprika	
2688		Clou de girofle	
2689		Laurier, feuille	
2690		Quatre épices	
2691		Pavot, graine	
2692		Carvi, graine	
2693		Vanille, extrait alcoolique	
2694		Fenouil, graine	
2695		Gingembre, racine crue	
2696		Cardamome, poudre	
2697		Fenugrec, graine	
2698		Epice (aliment moyen)	
2699		Poivre de Cayenne ou piment de Cayenne	
2700		Curcuma, poudre	
2701		Vanille, extrait aqueux	
2702		Ail, cru	
2703		Cerfeuil, frais	
2704		Ciboule ou Ciboulette, fraîche	
2705		Persil, frais	
2706		Raifort, cru	
2707		Menthe, fraîche	
2708		Basilic, frais	
2709		Romarin, frais	
2710		Sauge, fraîche	
2711		Thym, frais	
2712		Herbes aromatiques fraîches (aliment moyen)	
2713		Estragon, frais	
2714		Aneth, frais	
2715		Coriandre, fraiche	
2716		Ail séché, poudre	
2717		Persil, séché	
2718		Menthe, séchée	
2719		Basilic, séché	
2720		Marjolaine, séchée	
2721		Origan, séché	
2722		Romarin, séché	
2723		Sauge, séchée	
2724		Thym, séché	
2725		Herbes de Provence, séchées	
2726		Sarriette, séchée	
2727		Meloukhia, feuilles de corète séchées, en poudre	
2728		Agar (algue), cru	
2729		Spiruline (Spirulina sp.), séchée ou déshydratée	
2730		Wakamé (Undaria pinnatifida), séchée ou déshydratée	
2731		Laitue de mer (Ulva sp.), séchée ou déshydratée	
2732		Kombu royal (Saccharina latissima), séchée ou déshydratée	
2733		Nori (Porphyra sp.), séchée ou déshydratée	
2734		Dulse (Palmaria palmata), séchée ou déshydratée	
2735		Kombu ou kombu japonais (Laminaria japonica), séchée ou déshydratée	
2736		Kombu breton (Laminaria digitata), séchée ou déshydratée	
2737		Haricot de mer (Himanthalia elongata), séchée ou déshydratée	
2738		Gracilaire ou ogonori (Gracilaria verrucosa), séchée ou déshydratée	
2739		Fucus vésiculeux (Fucus serratus ou Fucus vesiculosus), séché ou déshydraté	
2740		Ao-nori (Enteromorpha sp.), séchée ou déshydratée	
2741		Lichen de mer ou pioca ou goémon rouge (Chondrus crispus), séché ou déshydraté	
2742		Ascophylle noueux ou goémon noir (Ascophyllum nodosum), séché ou déshydraté	
2743		Wakamé atlantique (Alaria esculenta), séchée ou déshydratée	
2744		Boisson diététique pour le sport	
2745		Substitut de repas hypocalorique, crème dessert	
2746		Substitut de repas hypocalorique, prêt à boire	
2747		Substitut de repas hypocalorique, poudre reconstituée avec lait écrémé	
2748		Substitut de repas hypocalorique, poudre reconstituée avec lait écrémé, type milk-shake	
2749		Son de blé	
2750		Son d'avoine	
2751		Son de maïs	
2752		Son de riz	
2753		Son (aliment moyen)	
2754		Germe de blé	
2755		Gélatine, sèche	
2756		Levure alimentaire	
2757		Levure de boulanger, compressée	
2758		Levure de boulanger, déshydratée	
2759		Levure chimique ou Poudre à lever	
2760		Bicarbonate de soude	
2761		Miso	
2762		Tempeh	
2763		Sirop pour fruits appertisés au sirop	
2764		Sirop léger pour fruits appertisés au sirop	
2765		Jus d'ananas pour ananas appertisé au jus	
2766		Gélifiant pour confitures	
2767		Pollen, partiellement séché	
2768		Pollen,frais	
2769		Base de pizza à la crème	
2770		Base de pizza tomatée	
2771		Lécithine de soja	
2772		Lait 1er âge, poudre soluble (préparation pour nourrissons)	
2773		Lait 2e âge, poudre soluble (préparation de suite)	
2774		Boisson aux fruits pour bébé dès 4/6mois	
2775		Boisson à base de plantes pour bébé	
2776		Boisson infantile céréales lactées aux légumes pour dîner dès 4/6 mois	
2777		Boisson infantile céréales lactées aux fruits pour le goûter dès 4/6 mois	
2778		Boisson infantile céréales lactées pour le petit déjeuner dès 4/6 mois	
2779		Boisson infantile céréales lactées pour le petit déjeuner dès 8/9 mois	
2780		Boisson infantile céréales lactées pour le petit déjeuner dès 12 mois	
2781		Boisson infantile céréales lactées pour le petit déjeuner	
2782		Boisson infantile céréales lactées (aliment moyen)	
2783		Lait de croissance infantile, liquide (aliment lacté destiné aux enfants en bas âge)	
2784		Lait 1er âge, prêt à consommer (préparation pour nourrissons)	
2785		Lait 2e âge, prêt à consommer (préparation pour nourrissons)	
2786		Petit pot légumes, dès 4-6 mois	
2787		Petit pot légumes, avec féculent, dès 4/6 mois	
2788		Plat légumes, avec féculent, dès 6-8 mois	
2789		Plat légumes, avec féculent et lait/crème, dès 6-8 mois	
2790		Plat légumes, avec féculent et lait/crème, dès 8-12 mois	
2791		Plat légumes, avec féculent et lait/crème, dès 12 mois	
2792		Soupe pour bébé légumes et pomme de terre	
2793		Soupe pour bébé légumes, céréales et lait	
2794		Plat légumes, avec féculent et lait/crème, dès 18 mois	
2795		Plat légumes, avec féculent et viande/poisson, dès 6-8 mois	
2796		Plat légumes, avec féculent et viande/poisson, dès 8-12 mois	
2797		Plat légumes, avec féculent et viande/poisson, dès 12 mois	
2798		Plat légumes, avec féculent et viande/poisson, dès 18 mois	
2799		Petit pot fruit avec banane pour bébé	
2800		Petit pot fruit sans banane pour bébé	
2801		Dessert lacté infantile type crème dessert	
2802		Dessert lacté infantile au riz ou à la semoule	
2803		Dessert lacté infantile nature sucré ou aux fruits	
2804		Céréales instantanées, poudre à reconstituer, dès 4/6 mois	
2805		Céréales instantanées, poudre à reconstituer, dès 6 mois	
2806		Biscuit pour bébé	
2807		Poudre cacaotée pour bébé	
\.


--
-- TOC entry 2857 (class 0 OID 17873)
-- Dependencies: 196
-- Data for Name: aliment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aliment (fibers, glucids, ig, lipids, proteins, id, fk_category) FROM stdin;
2.86999989	4.19000006	\N	12.8000002	1.12	1	1
2.70000005	7.73999977	\N	4.69999981	9.14999962	2	1
2	6.4000001	\N	5.30000019	8.06000042	3	1
1.29999995	9.89999962	\N	8.19999981	2.68000007	5	1
2.26999998	22.2000008	\N	5.6500001	4.28999996	6	1
1.50999999	7.98000002	\N	9.27999973	4.11000013	7	1
1.70000005	16.1000004	\N	4.3499999	5.13000011	8	1
1.70000005	12.8999996	\N	8.10000038	5.69999981	9	1
1.50999999	2.5	\N	0.529999971	1.02999997	10	1
1.98000002	14	\N	9.93999958	5.19000006	11	1
2	4.88000011	\N	10	8.13000011	12	1
3	5.78000021	\N	8.10000038	0.939999998	13	1
2.01999998	20.6000004	\N	7.44999981	6.4000001	14	1
1.79999995	6.5999999	\N	1.12	3.27999997	15	1
1.10000002	5.05000019	\N	1.55999994	0.75999999	17	1
0.689999998	2.88000011	\N	1.78999996	3.45000005	18	1
1.15999997	4.42999983	\N	1.22000003	0.860000014	19	1
0	0.100000001	\N	0.400000006	0.439999998	22	1
1.34000003	4.92999983	\N	1.39999998	1.35000002	23	1
1.22000003	3.8900001	\N	1.40999997	0.610000014	25	1
1.89999998	5.4000001	\N	2.5	3.75	27	1
1.79999995	5.5999999	\N	2	1.20000005	28	1
0.800000012	5.19999981	\N	0.349999994	1.20000005	29	1
0.209999993	5.09000015	\N	0.5	0.910000026	30	1
0.49000001	5.25	\N	0.439999998	0.970000029	31	1
0.720000029	5.76999998	\N	0.550000012	1.20000005	32	1
0	1.33000004	\N	0.150000006	0.600000024	35	1
1.20000005	6.80000019	\N	1.39999998	1.39999998	38	1
0.310000002	4.36999989	\N	0.400000006	0.579999983	41	1
0	0.649999976	\N	0.159999996	0.340000004	44	1
1.5	4.0999999	\N	0.5	2	47	1
0.699999988	3.4000001	\N	0.5	0.699999988	49	1
0.790000021	5.53000021	\N	0.340000004	1.13999999	50	1
0.189999998	3.95000005	\N	0.800000012	0.419999987	51	1
0.600000024	5.4000001	\N	0.800000012	1	52	1
0.930000007	5.09000015	\N	2.50999999	1.34000003	53	1
1.04999995	3.83999991	\N	1.32000005	1	54	1
0.540000021	5.30999994	\N	1.07000005	0.720000029	55	1
1.03999996	3.38000011	\N	1.62	0.649999976	57	1
1.02999997	4.51000023	\N	1.37	1.22000003	59	1
0	2.18000007	\N	0	1.38	60	1
0	0.50999999	\N	3.68000007	20.3999996	61	1
1.25	0.699999988	\N	3.61999989	18.3999996	62	1
0.800000012	3.0999999	\N	4	15.3999996	64	1
1.25	6.73999977	\N	3.29999995	8.93000031	65	1
0	10.1999998	\N	7.30000019	9.55000019	66	1
0.899999976	4	\N	7	13	68	1
0.479999989	8.39000034	\N	12.8000002	14.6999998	69	1
1.04999995	4.75	\N	4.55000019	11.1999998	71	1
4.69999981	0.680000007	\N	14.6999998	10.6000004	73	1
1.45000005	2.07999992	\N	6.07000017	13.5	74	1
1	4.5	\N	13.5	9.5	75	1
0.699999988	11.3999996	\N	5.4000001	10	76	1
0.899999976	0.479999989	\N	20.5	22	78	1
0.330000013	2.36999989	\N	23	15.1999998	79	1
0.600000024	9.27999973	\N	3.29999995	26	80	1
1.42999995	9.39000034	\N	8.22000027	5.98999977	81	1
1.29999995	12.1999998	\N	7.19999981	8.31000042	82	1
2	11.5	\N	1.89999998	5.9000001	83	1
2.0999999	16.2000008	\N	9.60000038	3.20000005	84	1
2.0999999	14	\N	4.53000021	7.69000006	85	1
1.47000003	15.6000004	\N	3.8499999	7.5	86	1
2.52999997	12.5	\N	4.73000002	7.59000015	87	1
1.54999995	8.51000023	\N	9.06000042	6.82000017	88	1
1.20000005	10.5	\N	10.1999998	7	89	1
2.82999992	8.89000034	\N	4.86999989	8.23999977	92	1
1.5	3.20000005	\N	2.01999998	10.8999996	93	1
1.10000002	3.29999995	\N	3.1500001	13.1999998	94	1
2.0999999	4.8499999	\N	4.0999999	6.48000002	95	1
3.13000011	2	\N	6.5999999	5.30000019	99	1
3.55999994	13	\N	3.3499999	7.13000011	100	1
2.83999991	5.15999985	\N	10.8000002	5.82000017	101	1
0	4.5	\N	6.82999992	12.8000002	103	1
0.600000024	3.5	\N	4.05999994	12.5	104	1
1.29999995	2.5	\N	6.4000001	9.30000019	105	1
3	14.3999996	\N	3.70000005	7.53999996	106	1
0	7.80000019	\N	3	5	107	1
1.25999999	4.42999983	\N	24.7999992	9.56000042	110	1
1.07000005	3.13000011	\N	7.13000011	7.19000006	111	1
0.699999988	5.28000021	\N	7.5	6.69000006	112	1
1	4.30000019	\N	10.3999996	14.8000002	114	1
2	2.9000001	\N	4.3499999	11.3999996	116	1
0	4.19999981	\N	2.79999995	8.80000019	120	1
2.4000001	0.400000006	\N	16.2000008	18.7999992	122	1
0.289999992	0.939999998	\N	5.73000002	18	123	1
0.340000004	1.04999995	\N	2.76999998	17.1000004	124	1
1.25	1.66999996	\N	7.05000019	13.3000002	125	1
0	0	\N	5.48000002	23.3999996	126	1
0	0	\N	2.05999994	22	127	1
0	0	\N	1.89999998	22	128	1
1.85000002	17.1000004	\N	4.9000001	7.86000013	129	1
1.70000005	14.1999998	\N	1.60000002	7.5	130	1
1.10000002	8.56999969	\N	6.1500001	6.38999987	131	1
2.54999995	13	\N	9.56000042	4.05000019	133	1
2.0999999	2.70000005	\N	18	4.55999994	134	1
3.4000001	5.67000008	\N	3.79999995	1.10000002	136	1
2.54999995	5.82999992	\N	3.93000007	3.13000011	138	1
4.13999987	5.23000002	\N	1.76999998	1.61000001	139	1
0.649999976	1.77999997	\N	5.32000017	9.90999985	141	1
8.80000019	8.69999981	\N	14.6999998	15.5	142	1
2.52999997	1.23000002	\N	2.47000003	2.16000009	145	1
1.36000001	11.3999996	\N	3.36999989	2.3900001	147	1
2.0999999	3.32999992	\N	5.55999994	5.84000015	148	1
2.1400001	3.07999992	\N	7.92000008	3.55999994	150	1
2.6099999	6.5999999	\N	5.44000006	3.28999996	152	1
2.5999999	8.44999981	\N	5.69999981	3.30999994	153	1
1.94000006	14.1999998	\N	8.97999954	3.74000001	156	1
1	6.73999977	\N	6.5	3.6400001	158	1
2.57999992	29.5	\N	4.84000015	4.92999983	159	1
6.28000021	67.1999969	\N	1.59000003	11.1000004	160	1
1.90999997	9.47999954	\N	5.71999979	6.28999996	162	1
1.89999998	8.78999996	\N	4.07000017	5.32000017	163	1
1.74000001	23.6000004	\N	4.94000006	5.46000004	164	1
3.5999999	21.8999996	\N	5.5	5.5	165	1
1.53999996	16.3999996	\N	6.92999983	7	166	1
2.25	14.8000002	\N	4.8499999	2.75	167	1
1.17999995	17.1000004	\N	8.69999981	5.90999985	168	1
1.67999995	11.3999996	\N	7.0999999	7.28000021	169	1
1.20000005	18.7000008	\N	3.8599999	5.3499999	170	1
2.24000001	18	\N	2.25	4.32000017	171	1
3.20000005	23.7000008	\N	5.5999999	5.80999994	172	1
3.1500001	42.5	\N	5.78999996	11.3999996	173	1
2.1500001	25.1000004	\N	4.6500001	6.94000006	174	1
2.23000002	24.1000004	\N	7.69000006	11.3000002	175	1
2.86999989	42.2000008	\N	5.69000006	9.97999954	176	1
1.60000002	12.5	\N	3.4000001	4.88000011	177	1
0.99000001	31.5	\N	3.19000006	4.23000002	178	1
0.980000019	28.2999992	\N	3.56999993	4.61000013	179	1
3.70000005	20.7999992	\N	4.9000001	5.19000006	184	1
1.85000002	15.8999996	\N	7.4000001	7.17000008	185	1
3.01999998	41.4000015	\N	5.05999994	9.39999962	186	1
1.96000004	21.6000004	\N	4.38000011	5.94999981	187	1
2.5999999	18.6000004	\N	6.5	2.5	188	1
0	11.8000002	\N	5.9000001	4.38000011	189	1
1.39999998	14	\N	10.1999998	7	190	1
1.87	15.8000002	\N	6.5999999	6.0999999	191	1
1.54999995	9.5	\N	12.8999996	8.55000019	192	1
1.14999998	4.75	\N	13.3999996	10.8999996	193	1
1.66999996	10.3999996	\N	6.88999987	4.5	194	1
1.52999997	19.8999996	\N	26.3999996	15.3000002	195	1
0	2.5999999	\N	17.2000008	16.2000008	196	1
0	15.3000002	\N	14.6000004	17.3999996	197	1
1.28999996	21	\N	16.7999992	8.96000004	199	1
1.20000005	24.2999992	\N	4	6.32999992	200	1
1.54999995	19.1000004	\N	7.5	8.82999992	201	1
1.70000005	21.7999992	\N	11.6999998	5	203	1
1.57000005	20.7000008	\N	18	10.3000002	205	1
5.30000019	20.6000004	\N	14.3000002	5.44000006	206	1
1.89999998	14.3000002	\N	8.5	8	208	1
1.39999998	16	\N	4.5	12.6999998	209	1
2.5	33.7999992	\N	13.1000004	6.4000001	218	1
1.89999998	23.5	\N	17.2000008	7	219	1
1.04999995	19.7000008	\N	5.75	6.34000015	221	1
1.83000004	28.1000004	\N	10.5	7.86999989	222	1
1.39999998	21	\N	10.5	8.52999973	225	1
1.20000005	23.7000008	\N	12.6000004	10.1999998	226	1
4.5	15.1999998	\N	9.80000019	12.6999998	228	1
1.5	14.1000004	\N	12.1999998	12.3000002	230	1
1.76999998	22.2000008	\N	14.8999996	7.98000002	233	1
2.5	22.1000004	\N	18.2999992	14.1000004	235	1
1.60000002	14.3000002	\N	12.3999996	8.5	236	1
0.600000024	11.8999996	\N	7.5	8.60000038	237	1
2.04999995	22.2000008	\N	13.6000004	7.07999992	238	1
2.95000005	30.8999996	\N	16	8.14999962	239	1
2.25	29.5	\N	8.75	8	245	1
3.20000005	41.7999992	\N	12.1000004	9.38000011	246	1
2.45000005	26.7999992	\N	12.8999996	11.3000002	247	1
1.60000002	26.2999992	\N	13.8000002	10.8999996	248	1
1.79999995	28.2999992	\N	8.43999958	13.3000002	249	1
1.79999995	23.1000004	\N	12.8999996	13.6999998	250	1
0	21.5	\N	16.7000008	15.5	251	1
1.5	26.7000008	\N	11.5	12.1999998	252	1
2.29999995	17.3999996	\N	10.8999996	15.1999998	253	1
2	29.8999996	\N	9.82999992	15.1999998	254	1
3	26.8999996	\N	13.1000004	13.3000002	259	1
2.19000006	41.2999992	\N	5.61000013	11.1000004	260	1
1.20000005	23.7999992	\N	11	12.6999998	262	1
1.98000002	30.2999992	\N	6.48000002	7.94999981	263	1
2.45000005	33.7000008	\N	10.8999996	10.8000002	264	1
1.74000001	34.2999992	\N	16.7999992	11.6999998	265	1
2.6099999	32.7000008	\N	20.8999996	13.6000004	267	1
2.8499999	31.1000004	\N	11.8999996	12.8999996	268	1
0	0	\N	0	11	269	1
2.79999995	17.7999992	\N	13.3000002	9.09000015	270	1
2.16000009	30.1000004	\N	11.3000002	5.34000015	271	1
1.74000001	35	\N	22.1000004	11.1999998	276	1
1.04999995	16.3999996	\N	15.1999998	13.1999998	277	1
2.18000007	32	\N	12.5	10.6999998	278	1
3.82999992	25.1000004	\N	12.3999996	11.6999998	279	1
2	23.3999996	\N	13.3000002	14.6999998	280	1
3.05999994	23.1000004	\N	11.6000004	10	281	1
3.46000004	23.1000004	\N	11.3000002	9.81999969	282	1
2	26.1000004	\N	14.6000004	12.8999996	283	1
3.63000011	23.7000008	\N	10.3999996	9.18000031	284	1
1.79999995	18.1000004	\N	13.6999998	9.32999992	286	1
2.9000001	27.8999996	\N	13	6.55000019	287	1
0.209999993	26	\N	1.39999998	5.9000001	288	1
1.74000001	23.1000004	\N	22.1000004	6.69000006	289	1
1.17999995	32.2999992	\N	16.8999996	6.07999992	290	1
1.63	27.2999992	\N	22.6000004	9.59000015	291	1
1.20000005	18	\N	1.82000005	4.57000017	294	1
2.53999996	23.1000004	\N	11.1999998	6.48000002	295	1
1	9.73999977	\N	7.17000008	8.14000034	297	1
1.89999998	27.7999992	\N	16.7000008	8.46000004	298	1
0.5	12.6999998	\N	18.1000004	10.3999996	300	1
6.80000019	33.5	\N	17	10.3999996	301	1
1.70000005	19.7999992	\N	13.3999996	3.25	302	1
1.62	28.6000004	\N	17.7000008	7.53000021	303	1
1.32000005	17.1000004	\N	13	7.13000011	304	1
3.29999995	20.8999996	\N	8.10000038	8.06000042	305	1
2.4000001	22.6000004	\N	12.6999998	6.88000011	306	1
2.70000005	23.7000008	\N	9.19999981	7.44000006	307	1
1.79999995	0.5	\N	0	1	310	2
2.70000005	6.44999981	\N	0.25999999	0.769999981	311	2
2.45000005	2.4000001	\N	0.25	1.48000002	313	2
2.04999995	4.5	\N	0.180000007	1.34000003	314	2
1.04999995	1.79999995	\N	0.25999999	1.22000003	317	2
0.850000024	0.899999976	\N	0.150000006	2.05999994	318	2
1.60000002	3.5999999	\N	0.189999998	0.660000026	319	2
1	3.1500001	\N	0.200000003	1.10000002	320	2
1.20000005	1.33000004	\N	0.200000003	1.29999995	322	2
1.70000005	6.25	\N	0.620000005	1.10000002	323	2
2.70000005	6.0999999	\N	0.850000024	2.83999991	324	2
2.26999998	4.9000001	\N	0.25	1.59000003	325	2
1.5	4.55000019	\N	0.270000011	0.800000012	326	2
1.60000002	1.70000005	\N	0.100000001	0.660000026	332	2
3.70000005	4.30000019	\N	0.200000003	1.5	333	2
3.95000005	5.67000008	\N	0.400000006	3.98000002	336	2
2.36999989	2.25	\N	0.5	2.61999989	337	2
2.8499999	3.8499999	\N	0.209999993	1.85000002	338	2
1.89999998	4.69999981	\N	0.100000001	0.819999993	339	2
3.5999999	2.3499999	\N	0.100000001	1.78999996	340	2
3.07999992	0.99000001	\N	0.409999996	2.52999997	341	2
3.68000007	4.3499999	\N	0.170000002	1.97000003	342	2
5.5	7	\N	0.550000012	5.84000015	343	2
2.70000005	0.889999986	\N	0.49000001	2.86999989	346	2
6.44999981	8.77000046	\N	0.439999998	5.86000013	347	2
1.75	2.79999995	\N	0.239999995	0.74000001	348	2
1.89999998	4.5	\N	0.349999994	1.12	349	2
3.0999999	0.300000012	\N	0.200000003	1.33000004	351	2
2.54999995	9.10000038	\N	0.239999995	1.74000001	352	2
2.5	8.35000038	\N	1.42999995	1.84000003	353	2
2	0.600000024	\N	0.400000006	2.29999995	354	2
4.69999981	5.71000004	\N	2.6500001	2.25999999	355	2
2.29999995	4.25	\N	0.200000003	1.25	361	2
4.9000001	15.3000002	\N	0.860000014	6.84000015	363	2
1	4.5999999	\N	0.100000001	0.550000012	364	2
1.10000002	3.0999999	\N	0.100000001	0.629999995	365	2
2.5999999	9.97999954	\N	0.600000024	1.39999998	366	2
2	4.03000021	\N	0.100000001	1	368	2
1.29999995	1.60000002	\N	0.170000002	1.10000002	369	2
1.5	5.40999985	\N	0.569999993	0.639999986	370	2
3	1.60000002	\N	0.100000001	1.39999998	375	2
1	0.5	\N	0.5	1.89999998	376	2
0.5	6	\N	0.100000001	1	377	2
1.04999995	1.64999998	\N	0.200000003	1.38	378	2
0.899999976	5.42000008	\N	0.209999993	1	379	2
2.0999999	1.35000002	\N	0.300000012	1.24000001	380	2
2.63000011	6.19999981	\N	0.270000011	3.07999992	382	2
1.70000005	3.4000001	\N	0	2.56999993	384	2
2.45000005	5.5999999	\N	0.159999996	1.85000002	385	2
1.45000005	5.07999992	\N	0.200000003	2.51999998	387	2
1.35000002	2.20000005	\N	0.600000024	2.54999995	388	2
1.14999998	2.45000005	\N	0.180000007	1.00999999	389	2
2.5999999	5.69999981	\N	0.129999995	1.16999996	390	2
2.32999992	4.9000001	\N	0.170000002	2	391	2
4.28000021	4.5	\N	0.330000013	3.43000007	393	2
2.75999999	4.98999977	\N	0.270000011	0.629999995	394	2
4.30000019	7.0999999	\N	0.370000005	3.8900001	396	2
1.60000002	2.0999999	\N	0.660000026	2.57999992	397	2
4.9000001	4.19999981	\N	1.07000005	4.32999992	398	2
1.48000002	2.18000007	\N	0.140000001	1.19000006	400	2
0	8.69999981	\N	0	1.39999998	401	2
1.85000002	2	\N	0.180000007	0.819999993	404	2
2.6500001	5.38999987	\N	0.119999997	1	405	2
2.54999995	3.3499999	\N	1.36000001	1.41999996	406	2
2.8599999	4.69000006	\N	0.439999998	1.44000006	408	2
2.27999997	4.07999992	\N	0.25	1.19000006	409	2
2.97000003	4.46999979	\N	0.119999997	1.92999995	412	2
2.4000001	0.920000017	\N	0	2.9000001	413	2
2	2.5	\N	0	2	414	2
2.46000004	1.10000002	\N	0.239999995	0.670000017	418	2
2.52999997	6.75	\N	0.699999988	2.04999995	419	2
1.29999995	1.5	\N	0.100000001	1.00999999	420	2
2	8.56000042	\N	0.180000007	1.84000003	425	2
2.5	0.460000008	\N	0	0.699999988	426	2
1.75	3.38000011	\N	0.200000003	0.660000026	428	2
2.79999995	2.5999999	\N	0.100000001	0.550000012	429	2
3.20000005	4.19999981	\N	0.109999999	2.5999999	431	2
2.4000001	3.03999996	\N	0.449999988	1.02999997	432	2
1.5	1.39999998	\N	0.360000014	0.930000007	435	2
1.60000002	1.20000005	\N	0.159999996	0.819999993	436	2
2.5999999	4.5999999	\N	0.860000014	1.29999995	437	2
2.70000005	0.5	\N	0.140000001	3.20000005	438	2
1.63	2.3599999	\N	0.119999997	1.55999994	439	2
4	3	\N	0.170000002	2	440	2
2.20000005	3.79999995	\N	0.200000003	0.899999976	441	2
1.39999998	6.19999981	\N	0.200000003	1.29999995	442	2
5.75	10.6999998	\N	0.800000012	5.11999989	443	2
5.80000019	4.69999981	\N	0.870000005	5.80000019	444	2
3.20000005	3	\N	0.200000003	1.10000002	445	2
3.16000009	5.59000015	\N	0.280000001	2.38000011	450	2
2.4000001	0.930000007	\N	0.5	2.80999994	451	2
3.3599999	1.23000002	\N	0.310000002	1.33000004	452	2
1.67999995	3.48000002	\N	0.230000004	1.22000003	453	2
3.29999995	5.0999999	\N	0.189999998	1.84000003	457	2
3.29999995	4.0999999	\N	0.529999971	2.55999994	459	2
2	1.38	\N	0.150000006	0.720000029	460	2
1.20000005	2.3599999	\N	0.200000003	0.930000007	463	2
2.20000005	7	\N	0.300000012	1.21000004	464	2
3.26999998	7.59000015	\N	0.330000013	2.56999993	465	2
1.10000002	4.4000001	\N	0.109999999	1.79999995	466	2
2.5999999	3.31999993	\N	0.0900000036	1.50999999	467	2
3.70000005	0.50999999	\N	0.870000005	4.01000023	471	2
5.5	7.94999981	\N	0.270000011	5.1500001	473	2
3.5999999	0	\N	5.19999981	1.10000002	476	2
1.39999998	5.05999994	\N	0.25999999	0.660000026	477	2
1.39999998	1	\N	0.170000002	1.29999995	480	2
1.79999995	4.26000023	\N	0.180000007	0.930000007	481	2
1.25	1.89999998	\N	0.150000006	1.61000001	484	2
4.0999999	4.21999979	\N	0.389999986	3.6400001	486	2
3.29999995	4.51999998	\N	0.680000007	0.579999983	487	2
3.0999999	7.01999998	\N	0.419999987	3.08999991	489	2
1.79999995	3.41000009	\N	0	2.4000001	490	2
2	3.63000011	\N	0.400000006	1.89999998	491	2
1.35000002	0.75	\N	0.170000002	1.52999997	492	2
1.70000005	3.63000011	\N	0.109999999	0.75999999	493	2
3.0999999	5.92000008	\N	0.379999995	3.5	495	2
3.4000001	13.5	\N	0	2.13000011	496	2
4.21000004	4.01999998	\N	2.72000003	2.19000006	498	2
2.70000005	8.10000038	\N	2	2.0999999	501	2
1.5	6.5	\N	1.89999998	2.79999995	502	2
5.44999981	6.80000019	\N	0.280000001	3.48000002	504	2
1.70000005	4.42000008	\N	0.769999981	0.910000026	505	2
4.01000023	2.82999992	\N	0.180000007	1.37	506	2
4.80000019	8	\N	2.79999995	4.80000019	507	2
2.20000005	5.19999981	\N	2.20000005	3.70000005	508	2
2.5999999	2.54999995	\N	0.430000007	1.52999997	510	2
2.47000003	3.77999997	\N	0.270000011	1.63	511	2
2.5	2.00999999	\N	0.209999993	1.87	512	2
9.19999981	75	\N	0.460000008	8.94999981	513	2
1.5	20.1000004	\N	0.100000001	1.95000005	518	2
1.79999995	16.7000008	\N	0.340000004	1.79999995	519	2
1.79999995	15.1999998	\N	0.180000007	2.16000009	521	2
2.20000005	11.6999998	\N	0.340000004	1.47000003	522	2
2.81999993	24.8999996	\N	7.21999979	2.75999999	523	2
1.62	15.3999996	\N	0.200000003	1.70000005	524	2
2.52999997	20.1000004	\N	3.45000005	2.32999992	525	2
8	69.4000015	\N	3.97000003	10.6000004	526	2
1.47000003	10.1999998	\N	5.17999983	1.91999996	527	2
1.5	14.1999998	\N	2.4000001	1.88999999	528	2
1.79999995	12.1000004	\N	0.529999971	2.63000011	529	2
2.33999991	25.6000004	\N	17.7000008	4.61999989	530	2
2	30.2000008	\N	17.7000008	4.5	531	2
10.3000002	76.0999985	\N	0.460000008	8.03999996	532	2
1.29999995	15.8999996	\N	0.300000012	1.88	533	2
2.42000008	19.7999992	\N	5.11000013	2.5	534	2
2.20000005	18.5	\N	0.129999995	2.5	535	2
2.20000005	22	\N	4	2.5	536	2
1.89999998	15.6999998	\N	0	1.80999994	537	2
2.13000011	14.8999996	\N	0	1.84000003	538	2
4.19999981	32.5999985	\N	6.5999999	3.75	539	2
3.9000001	34.5	\N	11.8999996	3.27999997	540	2
4.80000019	29.5	\N	8.5	3.44000006	541	2
3.4000001	28.5	\N	6.5999999	2.80999994	542	2
2.8900001	21.8999996	\N	12.1000004	2.53999996	543	2
2.6400001	21	\N	9.47000027	2.13000011	546	2
2.13000011	23.2000008	\N	7.71999979	2.79999995	547	2
2.41000009	20.8999996	\N	4.19999981	2.31999993	548	2
2.57999992	23.3999996	\N	5.09000015	2.41000009	549	2
3.82999992	34	\N	10.8000002	3.5	550	2
3.3900001	29.1000004	\N	12.1000004	3.11999989	551	2
1.59000003	12.1999998	\N	2.70000005	2.1500001	552	2
1.95000005	17.7000008	\N	0.899999976	1.97000003	553	2
2.20000005	16	\N	0.699999988	1.79999995	557	2
2.0999999	11.5	\N	0.310000002	1.94000006	558	2
4.0999999	22.7999992	\N	0.200000003	1.5	560	2
5.0999999	29.5	\N	0.109999999	0.519999981	561	2
1.79999995	36.2999992	\N	0.289999992	1.30999994	564	2
0.400000006	32	\N	0.0430000015	0.689999998	565	2
4.9000001	22.2000008	\N	0.230000004	1.07000005	566	2
4.5	10.3999996	\N	0.449999988	6.01000023	567	2
13.8000002	10.3000002	\N	1.10000002	6.75	568	2
11.6000004	12.1000004	\N	0.600000024	9.63000011	569	2
7.9000001	12.1999998	\N	0.379999995	8.60000038	570	2
7.94999981	16.2999992	\N	1.49000001	8.46000004	571	2
8.19999981	17.7000008	\N	3	8.31000042	572	2
6.30000019	12.1999998	\N	0.790000021	6.0999999	573	2
4	11.8000002	\N	0.639999986	6.28000021	574	2
7	10.8999996	\N	0.400000006	6.57000017	575	2
13.8000002	10.3000002	\N	1.10000002	6.75	576	2
7	13	\N	0.970000029	8.31000042	577	2
6.4000001	11.8999996	\N	0.550000012	7.53999996	578	2
5.44999981	15	\N	2.68000007	6.73999977	579	2
16.5	15.8000002	\N	1.10000002	5.63000011	580	2
2.9000001	9	\N	0.5	6.4000001	581	2
5.80000019	7.4000001	\N	0	5.5999999	582	2
8.44999981	15.1999998	\N	0.579999983	10.1000004	583	2
6	16.2999992	\N	0.699999988	9.69999981	584	2
9.39999962	11.6999998	\N	0.600000024	8.02000046	586	2
5.8499999	4.19999981	\N	0.670000017	6.76000023	587	2
3.0999999	19	\N	0.579999983	8.85999966	588	2
3.5999999	7.94999981	\N	0.219999999	7.5	590	2
4.4000001	12	\N	0.699999988	9.31999969	591	2
6.5	14.8999996	\N	0.300000012	14.8999996	592	2
16.7999992	43.9000015	\N	1.77999997	19.1000004	593	2
7.63000011	50.5999985	\N	1.34000003	25.3999996	594	2
15.8000002	52	\N	1.44000006	22.7999992	595	2
13.3000002	47.5	\N	5.8499999	20.5	596	2
25	33.2999992	\N	1.52999997	26.1000004	597	2
15.1999998	46.0999985	\N	1.05999994	22.5	598	2
16.7000008	47.5999985	\N	1.41999996	24.5	599	2
23.3999996	42.0999985	\N	2.5999999	19.1000004	601	2
16.3999996	44.5	\N	1.79999995	25.1000004	602	2
12.1000004	48.2999992	\N	1.89999998	26.1000004	603	2
1.79999995	7.13999987	\N	0.349999994	1.00999999	604	2
1.33000004	11	\N	0.239999995	0.519999981	605	2
5.80000019	8.02999973	\N	0.860000014	1.33000004	607	2
1.70000005	11.6000004	\N	0.25	1.15999997	608	2
1.89999998	13.3999996	\N	0.100000001	0.479999989	610	2
1.5	6.13999987	\N	0.180000007	0.649999976	612	2
5.98999977	4.26000023	\N	0.360000014	1.27999997	613	2
10.3999996	9.39000034	\N	0.699999988	2.29999995	614	2
2.29999995	14.1999998	\N	0.74000001	1.28999996	615	2
1.29999995	15.1999998	\N	0.419999987	0.75999999	619	2
1.70000005	13.6999998	\N	0.310000002	0.620000005	620	2
2.4000001	10.6000004	\N	0.330000013	0.870000005	622	2
4.80000019	4.19999981	\N	0.75	1.32000005	623	2
1.70000005	8.89999962	\N	0.310000002	1.15999997	624	2
2.20000005	7.92000008	\N	0.360000014	1.10000002	625	2
2.9000001	10.8999996	\N	0.270000011	0.49000001	628	2
1.39999998	11.6000004	\N	0.25	0.25	629	2
1.60000002	9	\N	0.330000013	1.08000004	632	2
1	16.6000004	\N	0	0.75	633	2
1.39999998	15.6000004	\N	0.400000006	0.600000024	634	2
1.29999995	10.6999998	\N	0.129999995	0.270000011	636	2
2.79999995	3.9000001	\N	0.319999993	1.14999998	637	2
1.70000005	8.10000038	\N	0.389999986	1.44000006	641	2
5.0999999	57.4000015	\N	0.600000024	2.6500001	642	2
1.70000005	11.8999996	\N	0.189999998	0.800000012	643	2
5.1500001	7.26000023	\N	0.730000019	1.59000003	644	2
1.60000002	11.6000004	\N	0.100000001	0.400000006	645	2
1.5	9.69999981	\N	0.310000002	0.720000029	646	2
2.47000003	10.3999996	\N	0.100000001	0.300000012	648	2
1.64999998	10.5	\N	0.300000012	1.10000002	649	2
0.899999976	15.6999998	\N	0.159999996	0.720000029	650	2
5.13000011	7.5999999	\N	0.129999995	0.75	651	2
7	11.3999996	\N	0.5	0.639999986	653	2
2.80999994	8.89999962	\N	0.430000007	0.680000007	654	2
1.27999997	13.6999998	\N	0.219999999	0.579999983	655	2
6.05000019	6.42999983	\N	0.800000012	1.15999997	656	2
5	10.6999998	\N	0.419999987	1.22000003	657	2
5.44999981	9.60000038	\N	1.17999995	1.57000005	660	2
2.5999999	11.1999998	\N	0	0	662	2
1.52999997	24.3999996	\N	0.209999993	0.230000004	665	2
1.71000004	24.7999992	\N	0.230000004	0.50999999	667	2
3	21	\N	0	0	672	2
2.4000001	11.1999998	\N	0.360000014	0.25999999	673	2
1.39999998	13.6999998	\N	0	0.939999998	678	2
0.829999983	14	\N	0.0430000015	0.810000002	679	2
1.39999998	16.2000008	\N	0	0.5	680	2
0.810000002	16.6000004	\N	0	0.289999992	681	2
1.39999998	13.6000004	\N	0	0	682	2
0.920000017	13.6000004	\N	0	0	683	2
1.60000002	15.8999996	\N	0	0	684	2
1.00999999	16	\N	0.0780000016	0	685	2
1.5	13.8000002	\N	0	0.5	686	2
0.920000017	14.1000004	\N	0.0379999988	0.310000002	687	2
1.23000002	14.5	\N	0.119999997	0.300000012	688	2
5.69999981	39.7999992	\N	0.50999999	1.86000001	689	2
7.30000019	64.6999969	\N	0.25	1.80999994	690	2
3.5999999	62.4000015	\N	0.49000001	2.08999991	693	2
8.69999981	57.2000008	\N	0.310000002	0.779999971	695	2
14.3000002	68.9000015	\N	1	5	696	2
12.6000004	70.4000015	\N	3.43000007	5.69000006	697	2
10.1999998	7.8499999	\N	53.4000015	21.1000004	698	2
8.60000038	14.8000002	\N	49.0999985	22.7999992	699	2
8.03999996	15	\N	50	22.8999996	700	2
9.69999981	6.98999977	\N	63	13.8999996	701	2
14.8999996	9.81000042	\N	49.7000008	17.6000004	707	2
6.4000001	10.1000004	\N	55.5	21.2999992	708	2
1.29999995	63	\N	0.670000017	1.27999997	709	2
3.20000005	60.2000008	\N	0.699999988	0.959999979	711	2
4.5	27	\N	1.38	2.00999999	714	2
5.0999999	47.7999992	\N	2.20000005	3.17000008	715	2
7.44999981	36.5	\N	2.23000002	1.80999994	717	2
6	4.71000004	\N	49.0999985	30.2000008	721	2
1.89999998	0.910000026	\N	0.699999988	3.27999997	722	2
7.9000001	39.2999992	\N	12.6000004	29.7000008	723	2
9.39999962	5.21000004	\N	66	14.3999996	724	2
27.2999992	6.5999999	\N	36.5999985	20.2000008	725	2
11.8999996	4.5	\N	56.0999985	21.1000004	726	2
8.35000038	13.8999996	\N	50.5	22.7999992	727	2
16.8999996	9.14000034	\N	48	17	728	2
4	28.7999992	\N	1.39999998	1.96000004	729	2
9.89999962	8.76000023	\N	52.5	21.3999996	730	2
10.8999996	8.72000027	\N	53.9000015	21.1000004	731	2
9	15.1000004	\N	49.7999992	19.2999992	734	2
34.4000015	7.71999979	\N	30.7000008	16.5	736	2
6.36000013	23.7999992	\N	26.2999992	8.28999996	737	2
9.43000031	7.67000008	\N	61.2000008	13.3999996	739	2
26.8999996	3.55999994	\N	42.2000008	18	740	2
7.19999981	58.0999985	\N	20.6000004	7.19000006	741	2
5	16	\N	52.5	22.2000008	742	2
7	13.8000002	\N	53.4000015	17.7000008	743	2
8.80000019	9.53999996	\N	22	15.5	744	2
13	20.7999992	\N	19.2000008	34.5	745	2
2.4000001	27.7000008	\N	0.720000029	5.25	746	3
6.30000019	9.89000034	\N	4.30000019	4.78000021	747	3
1	21.3999996	\N	6.9000001	3.5	748	3
2.29999995	32.5999985	\N	1	3.21000004	749	3
0.800000012	31.7999992	\N	0.409999996	2.92000008	750	3
1.10000002	31.7000008	\N	0.560000002	2.95000005	751	3
1.29999995	22.3999996	\N	1	3.50999999	755	3
4.5	14.1000004	\N	0.239999995	3.07999992	759	3
1.89999998	25	\N	0.550000012	3.99000001	760	3
1.5	32	\N	1.29999995	5.76000023	761	3
2	23	\N	2	4.57000017	762	3
1	34.4000015	\N	1.10000002	3.08999991	763	3
3.29999995	23.3999996	\N	0.899999976	4.55000019	764	3
0	20.1000004	\N	0	1.42999995	765	3
3.5	14	\N	0.479999989	2.03999996	770	3
10.6999998	59.5	\N	2.43000007	14.6000004	771	3
11.1000004	59.5	\N	2.13000011	14.5	772	3
1.70000005	71.3000031	\N	2.5999999	11.5	773	3
1.10000002	41.4000015	\N	1.26999998	7.48999977	774	3
11	62.4000015	\N	2.24000001	12.1000004	775	3
6.38000011	69.4000015	\N	1.62	12.5	776	3
1.04999995	78	\N	0.910000026	7.03999996	777	3
1.32000005	78.5999985	\N	0.980000019	7.11000013	778	3
5	71.4000015	\N	2.79999995	7.01999998	779	3
0.920000017	77.8000031	\N	0.839999974	7.67000008	782	3
1.5	78.0999985	\N	1	7.13999987	783	3
17.2999992	56.2000008	\N	2.29999995	12.5	786	3
8.5	64.3000031	\N	4.21000004	11	788	3
6.69999981	65.4000015	\N	3.46000004	10.6000004	791	3
7	64.5999985	\N	3.54999995	12.8999996	792	3
15	61	\N	1.97000003	9.82999992	793	3
11	59	\N	4	13.6999998	795	3
9.56999969	66.8000031	\N	1.71000004	11.5	798	3
3	65.8000031	\N	1.78999996	11.5	799	3
3.17000008	53.7999992	\N	1.87	10.1000004	800	3
3.1500001	68	\N	4.71999979	14	801	3
4	71	\N	3	11.8999996	802	3
6.0999999	67.5999985	\N	2.20000005	11.8000002	803	3
1.22000003	79	\N	1.24000001	6.17000008	804	3
1.20000005	80.5	\N	1	7.44000006	805	3
19.2999992	55.7999992	\N	2.25	9.61999989	809	3
3.25	55.0999985	\N	1.98000002	8.22000027	810	3
2.9000001	54.2000008	\N	2.5	8.55000019	811	3
2.0999999	53.0999985	\N	1.29999995	7.40999985	812	3
2.29999995	59.0999985	\N	1.10000002	7.98000002	813	3
4.19999981	54	\N	0.330000013	8.60000038	814	3
2.5999999	52	\N	2	7.9000001	815	3
5	47.0999985	\N	1.04999995	9.39000034	816	3
3.3499999	54.5	\N	0.930000007	8.02999973	817	3
6.23000002	43.7000008	\N	4.05999994	8.51000023	819	3
7	46	\N	5.5	6.84000015	820	3
5.73999977	43.5999985	\N	5.40999985	8.81000042	821	3
8.89999962	46.2999992	\N	1.24000001	5.57999992	823	3
6.5	51.7999992	\N	3.29999995	2.61999989	824	3
2.68000007	56.5	\N	1.29999995	8.34000015	825	3
2.5999999	55.9000015	\N	1.10000002	7.65999985	826	3
2.68000007	53	\N	0.920000017	7.53000021	827	3
3.42000008	50.7999992	\N	4.3499999	7.61000013	828	3
2.48000002	46.0999985	\N	3.57999992	7.21999979	829	3
2.8499999	50.5	\N	8.68000031	7.92000008	830	3
7.69999981	49.0999985	\N	3.9000001	8.94999981	831	3
7.07000017	32.9000015	\N	1.87	12.5	832	3
3.18000007	39.5999985	\N	1.88	10.6000004	833	3
3.42000008	47.2999992	\N	3.98000002	9.26000023	834	3
3.29999995	49.7000008	\N	5.3499999	9.06999969	835	3
2.5999999	52.0999985	\N	0.899999976	7.80999994	836	3
5.0999999	46.7000008	\N	0.899999976	7.98000002	837	3
4.75	46.2999992	\N	5.75	8.89000034	838	3
3.8499999	52.0999985	\N	8.19999981	8.34000015	840	3
2.3499999	32.7000008	\N	11.1999998	5.98000002	841	3
4.19999981	69.4000015	\N	1.15999997	9.56000042	842	3
4.86000013	77.0999985	\N	6.53000021	9.23999977	843	3
4.8499999	69	\N	9.27999973	10.8999996	844	3
5.15999985	73.3000031	\N	5.88000011	10.3999996	845	3
7.07999992	66.6999969	\N	7.21999979	11.8000002	846	3
8.84000015	67	\N	6.17000008	11.6999998	847	3
2.9000001	80.5	\N	3	7.32000017	849	3
3	82.4000015	\N	2.5	8.43000031	850	3
4.34000015	74	\N	6.15999985	9.76000023	851	3
3.57999992	70.8000031	\N	9.18999958	10.6000004	852	3
7.30000019	68.5	\N	8.25	8.89000034	853	3
9	63	\N	9	10.3000002	854	3
4.36999989	73.6999969	\N	3.56999993	9.97000027	855	3
7	66.4000015	\N	8	10.5	856	3
5.25	70.8000031	\N	8	7.98000002	857	3
5.94999981	68.5999985	\N	8.52999973	11.1000004	858	3
3.07999992	52.9000015	\N	29.3999996	9.02000046	859	3
7	70	\N	2.8499999	12.3000002	860	3
2.5999999	59.0999985	\N	24.1000004	8.38000011	861	3
4.5	70	\N	3.76999998	11.6000004	862	3
5.15999985	65.3000031	\N	11.8000002	12.6999998	863	3
3.29999995	55.5	\N	9.38000011	9.76000023	865	3
2.68000007	49.5	\N	16.2000008	7.63999987	866	3
2.79999995	55.9000015	\N	9	5.11000013	874	3
2.0999999	47.5	\N	22.7000008	6.38000011	875	3
3.13000011	48	\N	22.3999996	6.46000004	876	3
6.0999999	42.5999985	\N	18.6000004	7.76000023	886	3
3.0999999	36.5999985	\N	18.7000008	4.17000008	887	3
5.23999977	78.3000031	\N	4.28000021	7.40999985	890	3
18.2999992	59.2999992	\N	4.42000008	11.5	891	3
4.82999992	76.3000031	\N	5.82000017	7.98999977	892	3
1	87	\N	1.5	6.65999985	895	3
11.5	64	\N	6.75	10.6999998	896	3
6.01000023	77.6999969	\N	3.24000001	9.03999996	897	3
4.92999983	80.0999985	\N	2.6400001	8.47999954	898	3
3.05999994	84.1999969	\N	2.20000005	6.01000023	899	3
5.23999977	79.5999985	\N	2.93000007	7.73000002	900	3
3.31999993	64.6999969	\N	13.3000002	8.42000008	904	3
4.19000006	75.0999985	\N	6.13999987	9.98999977	906	3
4.4000001	77.9000015	\N	1.74000001	10.5	907	3
4.32999992	75.5	\N	4.92999983	8.90999985	908	3
4.05999994	74.5999985	\N	7.01000023	10.3000002	909	3
4.32000017	78.6999969	\N	1.39999998	10.5	910	3
3.45000005	79	\N	1.25	11.3000002	911	3
4.42000008	76	\N	6.76999998	7.86000013	912	3
4.82999992	79.0999985	\N	3.31999993	8.19999981	913	3
6.42999983	75.0999985	\N	4.01000023	8.93999958	921	3
27	49	\N	3.5	14	922	3
4.4000001	80.5	\N	1.96000004	6.67999983	927	3
3.19000006	83.1999969	\N	2.81999993	6.21999979	928	3
5.6500001	76.8000031	\N	3.8499999	7.42000008	930	3
3.49000001	77.9000015	\N	4.0999999	9	931	3
1.60000002	72.1999969	\N	11.8999996	6.69999981	936	3
4.13000011	73.1999969	\N	6.53000021	6.13000011	937	3
3.70000005	72.9000015	\N	10.8999996	5.98999977	938	3
5.80000019	65.3000031	\N	11.1999998	5.9000001	939	3
4.5	73	\N	14.8999996	6.55000019	940	3
3.79999995	73.5	\N	7.07000017	5.48999977	941	3
4.6500001	64.3000031	\N	16	7.8499999	943	3
3.92000008	74.6999969	\N	6.44000006	4.90999985	944	3
3	77.6999969	\N	10.1999998	6.9000001	945	3
1.92999995	69	\N	19.7000008	5.94000006	953	3
3.29999995	59.4000015	\N	22.8999996	8.38000011	979	3
2.54999995	66	\N	21.3999996	5.8499999	980	3
3	61.2000008	\N	24.6000004	6.63000011	981	3
1.83000004	71.1999969	\N	18.6000004	5.36000013	982	3
3.76999998	67.9000015	\N	18	6.69999981	983	3
3.3499999	73.3000031	\N	17.3999996	6.63999987	984	3
3.52999997	57.2000008	\N	29.7999992	6.38000011	986	3
3.21000004	59.5999985	\N	26.3999996	7.30999994	987	3
1.24000001	61.7000008	\N	30.7999992	4.44999981	988	3
1.65999997	82.4000015	\N	1.58000004	4.42999983	989	3
1	63	\N	27.5	5.28999996	990	3
1.70000005	72.0999985	\N	15.5	6.26999998	991	3
3.45000005	67.9000015	\N	21.7999992	5.90999985	992	3
0	94.1999969	\N	0	4.07999992	995	3
5.30000019	53.0999985	\N	28.2000008	5.92999983	999	3
3.38000011	59	\N	25.8999996	6.46999979	1003	3
2	80.4000015	\N	5	7.5	1004	3
2.16000009	69.5	\N	10.6000004	3.23000002	1005	3
1.25	48.7999992	\N	35.5999985	9.30000019	1024	3
1.90999997	52.5999985	\N	19.2000008	5.53000021	1025	3
0	29.7000008	\N	12.1999998	3.86999989	1028	3
2.29999995	39.5999985	\N	24	5.19000006	1029	3
1.29999995	26.7000008	\N	15.5	3.30999994	1030	3
1.46000004	21.2999992	\N	5.30000019	3.04999995	1031	3
2.5999999	59.4000015	\N	3.70000005	5.30999994	1032	3
2.9000001	54.9000015	\N	21.2000008	8.97000027	1033	3
1.29999995	30.6000004	\N	19.7000008	4.19999981	1034	3
3.32999992	50	\N	26.2000008	6.21999979	1035	3
1.38	46.0999985	\N	21	5.76000023	1038	3
0.600000024	55.0999985	\N	28.8999996	5.05000019	1041	3
3.21000004	74.1999969	\N	2.00999999	3.38000011	1042	3
1	30.6000004	\N	16.8999996	4.46999979	1045	3
1	22.8999996	\N	26.3999996	4.63000011	1046	3
1	34.9000015	\N	7.30000019	4.30999994	1047	3
3.9000001	28.2999992	\N	11.8000002	5.78000021	1048	3
1.29999995	30	\N	7.69999981	2.94000006	1049	3
3.29999995	32.7000008	\N	8.78999996	2.51999998	1052	3
1.5	31	\N	19.7999992	3.19000006	1053	3
3.5	35.9000015	\N	8.97999954	2.68000007	1054	3
5.9000001	41	\N	10.6999998	3.18000007	1055	3
4.5	38.5	\N	6.86999989	3.5	1056	3
0.699999988	37.0999985	\N	9.30000019	2.30999994	1057	3
2.9000001	40.9000015	\N	30.7000008	5.94000006	1058	3
2.6400001	46.9000015	\N	10.6000004	3.72000003	1059	3
6.30000019	27.1000004	\N	1.62	3.69000006	1060	3
2.79999995	29	\N	6.63999987	5.15999985	1061	3
2.57999992	49.5	\N	23.6000004	6.23999977	1062	3
2.55999994	48.2000008	\N	24	6.19000006	1063	3
1.13	51.7999992	\N	21.3999996	5.86999989	1064	3
0.699999988	26.5	\N	11.6000004	6.17000008	1065	3
4.5999999	57.5999985	\N	14.3999996	5.69999981	1066	3
2.45000005	29.7999992	\N	23.2999992	5	1067	3
2	33.4000015	\N	30	7.5999999	1068	3
1.89999998	40	\N	7.21000004	6.48999977	1069	3
1.41999996	60.0999985	\N	11.8000002	7.88000011	1070	3
3.07999992	28.2000008	\N	1.50999999	5.94999981	1071	3
1	57.4000015	\N	13.3000002	4.03000021	1072	3
1	54.2999992	\N	5.73999977	6.51000023	1075	3
1.96000004	58.7000008	\N	20.3999996	6.42999983	1077	3
1	66.6999969	\N	6.5999999	5.3499999	1078	3
1.76999998	52.5	\N	25.2000008	7.0999999	1079	3
2.45000005	55.9000015	\N	23.8999996	6.0999999	1080	3
1.80999994	66.4000015	\N	17.8999996	5.17999983	1081	3
1.60000002	70	\N	16	6.9000001	1082	3
0.899999976	45.7000008	\N	18.7000008	6.23000002	1084	3
2.1500001	47.5999985	\N	16	5.6500001	1085	3
2.5999999	45.9000015	\N	22.5	7.30999994	1086	3
2.49000001	43.5	\N	17.2999992	5.11999989	1087	3
2.00999999	55.7000008	\N	15.1999998	4.78000021	1088	3
1.75	50.7999992	\N	23	5.76000023	1089	3
1.89999998	63.9000015	\N	16.2999992	5.13000011	1090	3
1.97000003	61.5999985	\N	14.8000002	4.61000013	1091	3
2.0999999	48.7999992	\N	25.5	6.19999981	1092	3
0	60.7000008	\N	21.7000008	5.30999994	1093	3
1.90999997	52.5999985	\N	20.7999992	5.46000004	1094	3
1.63999999	68.5	\N	6.5	4.40999985	1095	3
1.54999995	48.9000015	\N	23.3999996	5.59000015	1096	3
0.800000012	52.5999985	\N	25.5	5.5999999	1097	3
1.10000002	51.5	\N	24.8999996	6.05999994	1098	3
1.20000005	53.5	\N	25.2000008	5.19999981	1099	3
2.29999995	37.7000008	\N	14.8999996	4.9000001	1100	3
0.239999995	43.7000008	\N	11.3000002	3.88000011	1103	3
0.550000012	86.3000031	\N	0.200000003	0	1104	3
6.80000019	68.5999985	\N	1.5	9.60999966	1106	3
12.5	62.5	\N	1.51999998	11.3999996	1107	3
3.9000001	68.6999969	\N	0.850000024	12.6000004	1108	3
3.20000005	73.6999969	\N	1	9.02999973	1109	3
2.5	75.9000015	\N	0.819999993	9.06000042	1111	3
4.19999981	73.1999969	\N	1.17999995	9.94999981	1112	3
9.30000019	64	\N	3	11.3999996	1113	3
23.7999992	44.7999992	\N	2.22000003	15.8999996	1116	3
7.1500001	70.6999969	\N	1.37	8.11999989	1117	3
9.5	70.9000015	\N	1.12	7.23999977	1118	3
4.19999981	68.4000015	\N	2.19000006	11.5	1119	3
8.85000038	64.5	\N	2.29999995	9.90999985	1121	3
9.69999981	63.2000008	\N	4.0999999	10.1999998	1122	3
0	85	\N	0	0.600000024	1125	3
1.79999995	43.5999985	\N	19.5	5.3499999	1128	3
0.899999976	58.2999992	\N	26.3999996	7.46999979	1129	3
1.88	44.9000015	\N	19.5	5.76999998	1130	3
1.60000002	43.2999992	\N	20.7000008	5.6500001	1131	3
1.87	41.4000015	\N	20.3999996	5.40999985	1132	3
3.04999995	33.2999992	\N	27.3999996	3.27999997	1133	3
1.79999995	54.0999985	\N	31	7.19000006	1134	3
2.31999993	39.7000008	\N	20.1000004	5.5999999	1135	3
1.39999998	35.2999992	\N	25.7999992	4.98999977	1136	3
1.20000005	53.5	\N	30.7999992	5.94999981	1137	3
3	82.4000015	\N	1.75999999	6.15999985	1138	3
1.20000005	51	\N	19.6000004	5.30000019	1139	3
1.5	64.4000015	\N	24.6000004	5.69999981	1140	3
1.64999998	53.5999985	\N	15.8000002	5.94999981	1141	3
1.89999998	50.7999992	\N	6	7.0999999	1142	3
1.20000005	60.9000015	\N	17.5	4.9000001	1143	3
1.89999998	63	\N	20.8999996	6.19999981	1144	3
2.5	59	\N	1.5	7	1146	3
0	2.19000006	\N	50.0999985	6.88000011	1148	4
0.000989999971	0.75999999	\N	6.84000015	27.5	1149	4
0	0.0280000009	\N	10	26.1000004	1150	4
0.00800000038	0.529999971	\N	8.15999985	26.7999992	1151	4
0.119999997	2.72000003	\N	5.98000002	24.8999996	1153	4
0	0	\N	10.6999998	25.5	1154	4
0	0	\N	12.3999996	32.0999985	1155	4
0	0	\N	8.71000004	28.7999992	1157	4
0	0	\N	8.17000008	27.1000004	1158	4
0	0	\N	13.3000002	37.2999992	1159	4
0	0	\N	9.76000023	21.6000004	1160	4
0	0	\N	8.81999969	39.2000008	1161	4
0	0	\N	4.0999999	31	1162	4
0	0	\N	2.92000008	28.7000008	1163	4
0	0	\N	3.02999997	29.7999992	1164	4
0	0	\N	1.95000005	27.6000004	1165	4
0	0	\N	8.80000019	23	1166	4
0	0	\N	2.5	25	1167	4
0	0	\N	4.11000013	26.7000008	1168	4
0	0.300000012	\N	3.16000009	21.8999996	1169	4
0	0	\N	6.94000006	25	1170	4
0	0	\N	4.19999981	27.2999992	1171	4
0	0	\N	4.05000019	34	1172	4
0	0	\N	5.80000019	33	1173	4
0	0	\N	5.8499999	25.5	1174	4
0	0	\N	11.8000002	26.1000004	1175	4
0	0	\N	16.1000004	23.6000004	1176	4
0	0.140000001	\N	19.2000008	23	1177	4
0	0.00179999997	\N	15.1000004	23.7999992	1178	4
0	0.200000003	\N	11.3999996	36.7999992	1179	4
0	0	\N	9.30000019	28	1180	4
0	0	\N	6.23999977	25.1000004	1181	4
0	0	\N	6.5999999	28	1182	4
0	0	\N	2.5	31	1183	4
0	0.5	\N	11.6999998	23.3999996	1186	4
0	0	\N	3.3900001	28.1000004	1187	4
0	0	\N	6.17000008	27.6000004	1188	4
0	0	\N	8.14000034	36.4000015	1189	4
0	0.0299999993	\N	5.01000023	29.2000008	1190	4
0	0	\N	6.42999983	37.4000015	1191	4
0	0	\N	11.3999996	21	1192	4
0	0	\N	10.3999996	34.9000015	1193	4
0	0	\N	14.6999998	27.1000004	1194	4
0	0	\N	14.8000002	30	1195	4
0	0	\N	15.3999996	25.8999996	1196	4
0	0	\N	13.1000004	36.9000015	1197	4
0	0.600000024	\N	7.44999981	34.0999985	1198	4
0	0	\N	9.39000034	28.2999992	1199	4
0	0	\N	7.0999999	26.1000004	1200	4
0	0.239999995	\N	11.3000002	28	1201	4
0	0.649999976	\N	4.30999994	30.5	1202	4
0	0.129999995	\N	26.6000004	23.1000004	1203	4
0	0	\N	21.2000008	26.2000008	1204	4
0	0	\N	6.19999981	36	1205	4
0	2	\N	11.3000002	25.8999996	1206	4
0	2.0999999	\N	9.88000011	28.8999996	1207	4
0	0	\N	8.02999973	24.7999992	1208	4
0	1.20000005	\N	1.75999999	29.2000008	1209	4
0	0.699999988	\N	9.52000046	24.7999992	1210	4
0	0	\N	9.10000038	26.1000004	1211	4
0	0	\N	7.78000021	29.7999992	1212	4
0	7.25	\N	3.83999991	26.3999996	1214	4
0	0	\N	1.09000003	28.5	1215	4
0	0.5	\N	3.03999996	24.6000004	1216	4
0	0	\N	3.19000006	30.2000008	1231	4
0	0	\N	4.38000011	28.2999992	1232	4
0	0	\N	3.19000006	30.2000008	1233	4
0	0	\N	3.72000003	29.6000004	1234	4
0	0	\N	12.1000004	32.4000015	1235	4
0	0	\N	13	25.1000004	1236	4
0	0	\N	2.8499999	28	1237	4
0	0	\N	2.57999992	27.8999996	1238	4
0	0	\N	6.26999998	26.6000004	1239	4
0	0	\N	6.23999977	28.2000008	1240	4
0	0	\N	6.67999983	28.2999992	1241	4
0	0	\N	2.75	29.7000008	1242	4
0	0	\N	3.02999997	27.1000004	1243	4
0	0	\N	8.40999985	30.3999996	1244	4
0	0.5	\N	9.19999981	20.5	1245	4
0	0	\N	3.50999999	33	1246	4
0	0	\N	11.6999998	29	1247	4
0	0	\N	28.3999996	19	1249	4
0	0	\N	11.1999998	23.2999992	1250	4
0	0	\N	12.8000002	26.7000008	1251	4
0	0	\N	12.6999998	29	1252	4
0	0	\N	21.8999996	25.2000008	1253	4
0	0	\N	13	23.8999996	1254	4
0	0	\N	7.07000017	26.2000008	1255	4
0	0	\N	13.8000002	12.3999996	1257	4
0	2.04999995	\N	9.63000011	11.5	1258	4
0	0.150000006	\N	4.5	23	1259	4
0	0.100000001	\N	7.92000008	26.3999996	1260	4
0	0	\N	7.51999998	24.8999996	1261	4
0	2.20000005	\N	5.71000004	26.2999992	1264	4
0	9.72000027	\N	3.01999998	17.7999992	1265	4
0	3.75999999	\N	4.4000001	26	1266	4
0	0.870000005	\N	6.51000023	24.5	1267	4
0	0	\N	8.18000031	27	1268	4
0	0.550000012	\N	17	21	1269	4
0	0.219999999	\N	15.6000004	23.7000008	1270	4
0	3.1099999	\N	5.80000019	21	1272	4
0	0.370000005	\N	6.23000002	26.5	1273	4
0	0	\N	7	27	1274	4
0	1.10000002	\N	4.69999981	25.3999996	1275	4
0	0	\N	7	26	1277	4
0	0	\N	2.0999999	32.4000015	1278	4
0	0	\N	7.28000021	20.5	1279	4
0	0	\N	9.64000034	20.3999996	1280	4
0	0	\N	17.1000004	19.3999996	1282	4
0	0.600000024	\N	6.73999977	22.2999992	1283	4
0	0	\N	2.79999995	24.1000004	1284	4
0	0	\N	23.7000008	18.3999996	1285	4
0	0	\N	8.63000011	19	1286	4
0	0.400000006	\N	5.01999998	22.2999992	1287	4
0	0	\N	4.25	20.8999996	1288	4
0	0.569999993	\N	2.33999991	23.1000004	1289	4
0	0	\N	16.2000008	19.2000008	1290	4
0	0	\N	3.3599999	21.7999992	1291	4
0	0	\N	6.5999999	20	1292	4
0	0.400000006	\N	2.5	22.5	1293	4
0	0	\N	5.67000008	20.3999996	1294	4
0	0	\N	7.5	24	1295	4
0	0.300000012	\N	4.59000015	21.8999996	1296	4
0	0	\N	10.1000004	20	1297	4
0	0.469999999	\N	14.1000004	20.2000008	1298	4
0	0	\N	20	17.2999992	1299	4
0	0	\N	6.53999996	21.2000008	1300	4
0	0	\N	12.8999996	18.2999992	1301	4
0	0.400000006	\N	7.25	19.5	1302	4
0	0.579999983	\N	2.5999999	20.7000008	1303	4
0	0	\N	1.39999998	20.6000004	1305	4
0	0.400000006	\N	19.5	16.7000008	1306	4
0	0	\N	15	18.2000008	1307	4
0	0	\N	11.1999998	18.7000008	1308	4
0	0	\N	3.96000004	27.2999992	1309	4
0	0	\N	4.63000011	20.7000008	1310	4
0	0	\N	12	19.1000004	1311	4
0	0	\N	3.66000009	21.2999992	1312	4
0	0	\N	5.92000008	19.7999992	1313	4
0	0.379999995	\N	11.1999998	18.8999996	1314	4
0	0	\N	20.5	17	1315	4
0	0.75	\N	9.89000034	20.7999992	1316	4
0	0	\N	12	19.8999996	1317	4
0	0.379999995	\N	9.30000019	19.7999992	1318	4
0	0	\N	7.55999994	20.2000008	1319	4
0	0.400000006	\N	5.94000006	22.7000008	1320	4
0	0	\N	3.5999999	21.2000008	1321	4
0	0.400000006	\N	4.09000015	21.2000008	1322	4
0	0.5	\N	6.86000013	22.2999992	1323	4
0	0.100000001	\N	14	18	1324	4
0	0.600000024	\N	18	18	1325	4
0	0	\N	4.76000023	21.5	1326	4
0	0.100000001	\N	80.5999985	4.51000023	1327	4
0	0.140000001	\N	47.5	11.6000004	1328	4
0	0.230000004	\N	12.3000002	18.8999996	1329	4
0	0.280000001	\N	6.30000019	20.8999996	1330	4
0	0.280000001	\N	7.30999994	20.2000008	1331	4
0	0.239999995	\N	15.1000004	18.7999992	1332	4
0	0.25999999	\N	24.7000008	17.2999992	1333	4
0	0.25	\N	10.3999996	19.8999996	1334	4
0	0	\N	12.8999996	35	1335	4
0	0.219999999	\N	28.7000008	15.8999996	1336	4
0	0.370000005	\N	6.19999981	22.2999992	1337	4
0	2.07999992	\N	11.8999996	18	1338	4
0	0	\N	3.73000002	20	1339	4
0	0	\N	4.30000019	21.2000008	1340	4
0	0.200000003	\N	5.4000001	21.5	1341	4
0	0.300000012	\N	10.1000004	20.2000008	1342	4
0	0.449999988	\N	1.34000003	23.5	1343	4
0	0	\N	4.11999989	19.7000008	1344	4
0	0	\N	15.1000004	18.6000004	1345	4
0	0	\N	9.05000019	18.3999996	1346	4
0	0	\N	4.05000019	19.2999992	1348	4
0	0	\N	8.07999992	21.1000004	1349	4
0	0	\N	4.30999994	23.3999996	1350	4
0	0.800000012	\N	1.88	22.3999996	1351	4
0	0.50999999	\N	1.22000003	24.1000004	1352	4
0	0	\N	7.8499999	19.7999992	1353	4
0	0.400000006	\N	2.5	21.2999992	1354	4
0	0	\N	6.11000013	20.6000004	1356	4
0	0.100000001	\N	14.5	18.2999992	1357	4
0	0	\N	14.6000004	18.1000004	1358	4
0	0	\N	14.6000004	18.1000004	1359	4
0	0	\N	17	18	1360	4
0	0	\N	7.13000011	20.7000008	1370	4
0	0	\N	2.67000008	21.6000004	1371	4
0	0	\N	2	23	1372	4
0	0	\N	2.03999996	23.7000008	1373	4
0	0	\N	3.77999997	23.2999992	1374	4
0	0	\N	7.94999981	23.2000008	1375	4
0	0.600000024	\N	10	18.7999992	1376	4
0	0.400000006	\N	4.5999999	21.3999996	1377	4
0	0	\N	1.67999995	22.7000008	1378	4
0	0	\N	3.57999992	22.2000008	1379	4
0	0	\N	3.33999991	22.1000004	1380	4
0	0	\N	2.30999994	20.6000004	1381	4
0	0.660000026	\N	11.6000004	20.3999996	1382	4
0	0	\N	2.31999993	21.7999992	1383	4
0	0.400000006	\N	15.8000002	17.7999992	1384	4
0	0	\N	4.51000023	20.8999996	1385	4
0	0	\N	5.92000008	19.6000004	1386	4
0	0	\N	10.6000004	21.7999992	1387	4
0	0	\N	5.32999992	19.3999996	1390	4
0	0	\N	3.0999999	18.7000008	1391	4
0	2.75	\N	22.6000004	17.3999996	1392	4
0	0.850000024	\N	29.3999996	17.8999996	1393	4
0	0	\N	7.11999989	22.6000004	1394	4
0	0	\N	33.5999985	15.6999998	1395	4
0	0.699999988	\N	16	18.8999996	1396	4
0	0	\N	5.75	22.7999992	1397	4
0	0	\N	0.699999988	25.1000004	1398	4
0	0	\N	4	21.2999992	1399	4
0	0	\N	8.69999981	20.2000008	1400	4
0	1.01999998	\N	9.21000004	10.3000002	1402	4
0	0.330000013	\N	8.21000004	10.3000002	1403	4
0	0.699999988	\N	2.95000005	18.5	1404	4
0	0.689999998	\N	9.31999969	15.6000004	1405	4
0	0.400000006	\N	7.44000006	16.7000008	1406	4
0	0.270000011	\N	4.32999992	17.1000004	1408	4
0	1.63999999	\N	3.83999991	16.1000004	1409	4
0	3.32999992	\N	4.30000019	21	1411	4
0	5.63999987	\N	3.4000001	15.5	1412	4
0	5.38999987	\N	4	19	1414	4
0	0.779999971	\N	4.61999989	18.7999992	1415	4
0	0	\N	5.5	18.2999992	1416	4
0	0.980000019	\N	4.19999981	20.6000004	1417	4
0	6.34000015	\N	4.28999996	16.2999992	1418	4
0	3.53999996	\N	4.61999989	18.7000008	1419	4
0	0.819999993	\N	13.8000002	16.7999992	1420	4
0	1.37	\N	8.84000015	17	1421	4
0	0.159999996	\N	13.6000004	16.6000004	1422	4
0	1.16999996	\N	3.01999998	17.3999996	1424	4
0	0.899999976	\N	2.6500001	17.1000004	1425	4
0	0.25999999	\N	3.13000011	16.3999996	1426	4
0	2.4000001	\N	2.3599999	16	1428	4
0	0	\N	3.69000006	12.1000004	1429	4
0	0.800000012	\N	0.119999997	19.5	1430	4
0	0.300000012	\N	3.75	17.2999992	1431	4
0.330000013	1.90999997	\N	17.2999992	19.6000004	1432	4
0	0.479999989	\N	7.9000001	19	1433	4
0	0	\N	9.07999992	19.8999996	1434	4
0	0.699999988	\N	2.5999999	23.1000004	1435	4
0.100000001	0.790000021	\N	5.80000019	20	1436	4
0	0.810000002	\N	4.28000021	20.7999992	1437	4
0.330000013	0.910000026	\N	5.82000017	20.2000008	1438	4
0.0500000007	0.769999981	\N	3.51999998	20.5	1439	4
0	0.300000012	\N	16.7999992	21.6000004	1440	4
0.319999993	1.02999997	\N	3.66000009	20.2999992	1441	4
0	0.74000001	\N	3.82999992	20.7999992	1442	4
0.0799999982	1.70000005	\N	4.5	19.5	1443	4
0	1.92999995	\N	4.5	18	1444	4
0	0.550000012	\N	6.30000019	19.3999996	1445	4
0.150000006	1.61000001	\N	3.24000001	19.6000004	1446	4
0	1.39999998	\N	10.6000004	20.2999992	1447	4
0.360000014	2.07999992	\N	4.46000004	17.8999996	1448	4
0	3.57999992	\N	5.98000002	13.6999998	1449	4
0	1.08000004	\N	3.42000008	20	1450	4
0	0.400000006	\N	7.51999998	23.2000008	1452	4
0.529999971	1.38999999	\N	1.78999996	20.7000008	1453	4
0.389999986	1.28999996	\N	1.66999996	20.8999996	1454	4
0	0.75999999	\N	13.1999998	25.8999996	1455	4
0	0.980000019	\N	16.1000004	24.2000008	1456	4
0	0.300000012	\N	9.5	26.2999992	1457	4
0	0.100000001	\N	3.4000001	27.7000008	1458	4
0	0.629999995	\N	12.6000004	28	1459	4
0	0.479999989	\N	12.6000004	28.7000008	1460	4
0	0.300000012	\N	15.3999996	27.2000008	1461	4
0	0.75999999	\N	12.3000002	30.3999996	1462	4
0	1	\N	20	25	1463	4
0	0.75	\N	28.7999992	20.2000008	1464	4
0.730000019	2.41000009	\N	34.5	24.2000008	1465	4
0.600000024	1.78999996	\N	33.0999985	27.6000004	1466	4
0	1.64999998	\N	27.6000004	27.7000008	1467	4
0	1.78999996	\N	30.7000008	24.2000008	1468	4
0.589999974	1.70000005	\N	37.0999985	27.2999992	1469	4
0	0.800000012	\N	25.2999992	19	1471	4
0	1	\N	22.1000004	18.7999992	1472	4
0	0.600000024	\N	29.1000004	14.6999998	1473	4
0	5.25	\N	21.2000008	15.3999996	1474	4
2.5999999	4.4000001	\N	26.5	11.8000002	1475	4
0	1	\N	36.5999985	16	1476	4
0	1	\N	27.2999992	17.2999992	1477	4
0	0	\N	29.1000004	15.1999998	1478	4
0	1	\N	30	13.1999998	1479	4
0.400000006	1	\N	20.6000004	15.8000002	1480	4
0	0.589999974	\N	29	15	1481	4
0	0	\N	24.8999996	19	1482	4
0	1.24000001	\N	23.3999996	13.6999998	1485	4
0	2.5	\N	28	13.5	1486	4
0	0	\N	43.5	11	1487	4
0	0	\N	41	11.5	1488	4
0	0	\N	33.2999992	14.6000004	1489	4
0	1.79999995	\N	21.7999992	19.7999992	1490	4
0	2.79999995	\N	27.6000004	14	1491	4
0.300000012	0.899999976	\N	35.9000015	11.6999998	1492	4
0	0	\N	30	18	1493	4
1.37	1.38999999	\N	25.8999996	12.3999996	1494	4
0	0	\N	21.2999992	10.3000002	1496	4
0	1	\N	17.5	15.6999998	1497	4
0	0	\N	29.7000008	13	1498	4
0.289999992	1.15999997	\N	23.7999992	17.3999996	1500	4
0.5	14.1000004	\N	25	16	1501	4
0	1.45000005	\N	34.5999985	10.1000004	1503	4
0.610000014	7.07000017	\N	25.5	14.6999998	1504	4
0.5	2.88000011	\N	34	11	1505	4
1.75	0.109999999	\N	27.3999996	13.3999996	1506	4
0	2	\N	20.2000008	16.2999992	1507	4
1	5.67000008	\N	21.2000008	16.5	1508	4
0.5	4	\N	23	15	1509	4
0	2.4000001	\N	31	13	1511	4
0.200000003	2.91000009	\N	33.2999992	10.8000002	1512	4
0.720000029	10.3000002	\N	26.1000004	11.1000004	1513	4
0.75	3.3900001	\N	24.8999996	12	1514	4
0.449999988	7.07000017	\N	36.0999985	10.1000004	1515	4
0	4.67000008	\N	43.7999992	11.3999996	1517	4
0.600000024	7.61000013	\N	26.6000004	13.1999998	1518	4
1.5	22.8999996	\N	17.1000004	11	1519	4
0	0.200000003	\N	36.9000015	14.3000002	1520	4
0	0	\N	38.2999992	16.7000008	1521	4
0	0	\N	50	18	1522	4
0.209999993	4.69999981	\N	37.5999985	15.6000004	1523	4
0	0	\N	39.7999992	14.6999998	1524	4
0	0.340000004	\N	39.2999992	15.3999996	1525	4
0	0.699999988	\N	42.9000015	17.6000004	1526	4
0.25	0.49000001	\N	30.2999992	16.3999996	1527	4
1.38999999	15.6000004	\N	9.5	3.51999998	1528	4
0.720000029	10.5	\N	8.51000023	3.78999996	1531	4
2.1500001	23.6000004	\N	12.6999998	8.10000038	1532	4
2.1500001	14.8000002	\N	13.6999998	7.67999983	1533	4
0	0	\N	7.4000001	32	1534	4
0.400000006	3.30999994	\N	18.7999992	25.7000008	1535	4
0	0.550000012	\N	30.5	21.8999996	1536	4
0.349999994	0.0260000005	\N	54.5999985	8.40999985	1537	4
0.349999994	1.09000003	\N	50	5.75	1538	4
0	2.19000006	\N	50.0999985	6.88000011	1539	4
0	4.28000021	\N	49.5	6.38999987	1540	4
0	1.40999997	\N	63.4000015	5.94000006	1541	4
0.649999976	0.709999979	\N	23.5	15.1000004	1542	4
1.20000005	3.95000005	\N	20.2000008	17.7000008	1543	4
0.850000024	19.3999996	\N	9.31999969	14.1999998	1544	4
0	3.26999998	\N	12.8999996	14.1000004	1545	4
0	0	\N	5.17000008	26.2000008	1547	4
0	0.300000012	\N	15.1000004	18.3999996	1548	4
0	0	\N	18	18	1549	4
0	0	\N	20	22.5	1550	4
0	0	\N	18	19	1551	4
0.709999979	1	\N	16.2999992	18.7999992	1552	4
0	0.540000021	\N	22.2999992	24.5	1553	4
0.899999976	0.5	\N	19	19.7000008	1554	4
1.41999996	0.289999992	\N	27.1000004	12.1999998	1555	4
2	5.3499999	\N	21.7000008	14.8000002	1556	4
2	5.11999989	\N	20.2999992	13.3000002	1557	4
1.39999998	9.01000023	\N	17.7999992	11.3000002	1558	4
0.379999995	1.00999999	\N	22.1000004	16.6000004	1560	4
1	0.790000021	\N	26.1000004	15.6000004	1561	4
0	2.3499999	\N	4.30000019	31.6000004	1562	4
0	2	\N	24.5	23.7999992	1563	4
0	0	\N	10.5	23.1000004	1564	4
0	0.600000024	\N	15.1000004	22.5	1565	4
0	0.00999999978	\N	10	11.6000004	1566	4
0	0.119999997	\N	22	16.7999992	1567	4
0.340000004	0.349999994	\N	22.6000004	16.7000008	1568	4
0	4.80000019	\N	22.1000004	14.6999998	1569	4
0	0.560000002	\N	5.46999979	38.9000015	1570	4
0.930000007	1.24000001	\N	36.0999985	23.5	1573	4
0	0	\N	41.9000015	20.8999996	1574	4
0	0	\N	23.8999996	22.6000004	1575	4
0	2.58999991	\N	41.7999992	17.7000008	1576	4
0	1.22000003	\N	33.7000008	22.6000004	1577	4
0	1.55999994	\N	28.7999992	21.5	1578	4
0	1.35000002	\N	42.9000015	17	1579	4
0	1.29999995	\N	29	13.8000002	1581	4
0	0.600000024	\N	32.7000008	12.5	1582	4
0	0.600000024	\N	25.6000004	13.6999998	1583	4
2	20.8999996	\N	17.3999996	14.6999998	1584	4
0.400000006	1.55999994	\N	24.7999992	11.8999996	1585	4
0.600000024	1	\N	27.5	13	1586	4
0	0.270000011	\N	26.7000008	15	1588	4
0	4.46000004	\N	25.7999992	14.8000002	1589	4
0	2.52999997	\N	25.3999996	16.3999996	1590	4
1.97000003	1.15999997	\N	28.2000008	14.3999996	1591	4
1.54999995	2.48000002	\N	13.6000004	15.8000002	1592	4
0.629999995	3.66000009	\N	13.3000002	18.5	1594	4
0.939999998	12.6999998	\N	14.1000004	22.8999996	1595	4
0.800000012	7.78000021	\N	18.6000004	14.3999996	1596	4
0.629999995	4.92999983	\N	12	18.3999996	1599	4
0.270000011	1.13	\N	13.8000002	19.7999992	1600	4
1	2.0999999	\N	6.5	15.6000004	1603	4
0	19.2999992	\N	12.1000004	12	1604	4
0.899999976	2.0999999	\N	12.6000004	22.3999996	1605	4
3.4000001	21.7000008	\N	24	7.25	1606	4
1.29999995	13.5	\N	10.8999996	14.1000004	1607	4
0	0	\N	12.5	23	1608	4
0	0	\N	0.730000019	23.1000004	1609	4
0	0	\N	9.89999962	18.1000004	1610	4
0	0	\N	1.88999999	19	1611	4
0	0	\N	0.600000024	20.8999996	1612	4
0	0	\N	12.1000004	23	1613	4
0	0.5	\N	11.6999998	16.5	1614	4
0	0	\N	11.3999996	21.6000004	1615	4
0	0	\N	0.810000002	23.1000004	1616	4
0	0	\N	2.26999998	17.3999996	1617	4
0	0	\N	15.8000002	21.5	1618	4
0	0	\N	10.1999998	23.6000004	1619	4
0	0	\N	3.6099999	23.1000004	1620	4
0	0	\N	0.699999988	23	1621	4
0	0	\N	0.600000024	22.2999992	1622	4
0	0	\N	1.00999999	26	1623	4
0	0	\N	0.949999988	24.5	1624	4
0	0	\N	4.86000013	24.7999992	1625	4
0	0	\N	0.5	23	1626	4
0	0	\N	17.2000008	25.3999996	1627	4
0	0.910000026	\N	9.48999977	22	1628	4
0	0	\N	11.5	23	1629	4
0	0	\N	1.83000004	29.8999996	1630	4
0	0	\N	1.48000002	20.2999992	1631	4
0	0	\N	1.69000006	15.6999998	1632	4
0	0	\N	1	15	1633	4
0	0	\N	1	15.8000002	1634	4
0	0	\N	0.569999993	23.2000008	1635	4
0	0	\N	0.680000007	23	1636	4
0	0	\N	24.2999992	19.7999992	1637	4
0	0	\N	0.730000019	23.5	1638	4
0	0	\N	16.8999996	28.7000008	1639	4
0	0	\N	3.6400001	21.2999992	1640	4
0	0	\N	3	21.2000008	1641	4
0	0	\N	0.550000012	20	1642	4
0	0	\N	10.3999996	25.1000004	1643	4
0	0	\N	1.72000003	26.2999992	1644	4
0	0	\N	3.0999999	24.6000004	1645	4
0	0	\N	0.899999976	18.2999992	1646	4
0	0	\N	11.3999996	24.2000008	1647	4
0	0	\N	10.3000002	25	1648	4
0	0	\N	3.29999995	22.8999996	1649	4
0	0	\N	13.5	25.5	1650	4
0	0	\N	13.5	22.1000004	1651	4
0	2	\N	11	15.1000004	1652	4
0	0	\N	0.819999993	24.5	1653	4
0	0	\N	11.6000004	17.2999992	1654	4
0	0	\N	0	23.6000004	1655	4
0	0	\N	13.8000002	22.1000004	1656	4
0	0	\N	15	23.6000004	1657	4
0	0	\N	12.6999998	20.5	1658	4
0	0	\N	0.879999995	23.1000004	1659	4
0	0	\N	7.17000008	21.6000004	1660	4
0	0	\N	3.42000008	22.1000004	1661	4
0	0	\N	8.47000027	26.6000004	1662	4
0	0	\N	2.5999999	19	1663	4
0	0	\N	6.32999992	21.5	1664	4
0	0	\N	4.13999987	20	1665	4
0	0	\N	1	17.5	1666	4
0	0.689999998	\N	9.27000046	23.3999996	1667	4
0	0	\N	6.51000023	22.2000008	1668	4
0	0	\N	3.57999992	20.2999992	1669	4
0	0	\N	0.610000014	16.2999992	1670	4
0	0	\N	1.30999994	21.2000008	1671	4
0	0	\N	11.6999998	17.7000008	1672	4
0	0	\N	0.74000001	15.1000004	1673	4
0	0	\N	12.3999996	20.5	1674	4
0	0	\N	2.53999996	17.2000008	1675	4
0	0	\N	0.569999993	18.1000004	1676	4
0	0	\N	1.35000002	17.6000004	1677	4
0	0	\N	0.370000005	19.7999992	1678	4
0	0	\N	2.4000001	15.1000004	1679	4
0	0	\N	13.5	18.1000004	1680	4
0	0	\N	0.469999999	21.3999996	1681	4
0	0	\N	5.38000011	24	1682	4
0	0	\N	0.939999998	18.1000004	1683	4
0	0	\N	0.850000024	18.2999992	1684	4
0	0	\N	0.600000024	18	1685	4
0	0	\N	1.33000004	18.8999996	1686	4
0	0	\N	0.939999998	25	1687	4
0	0	\N	9.47999954	19.5	1688	4
0	0	\N	1.00999999	22	1689	4
0	0	\N	6.80999994	23.2999992	1690	4
0	0	\N	0.699999988	19.1000004	1691	4
0	0	\N	0.5	23.2999992	1692	4
0	0	\N	2.6099999	16.6000004	1693	4
0	0	\N	1.37	27.2000008	1694	4
0	0	\N	6.07000017	18.6000004	1695	4
0	0	\N	2.30999994	18.1000004	1696	4
0	0	\N	5.96999979	18.8999996	1697	4
0	0	\N	1.70000005	17.5	1698	4
0	0	\N	1.52999997	19.8999996	1699	4
0	0	\N	9.36999989	18.3999996	1700	4
0	0	\N	5.0999999	20.8999996	1701	4
0	0	\N	3.61999989	20.1000004	1702	4
0	0	\N	3.63000011	19.6000004	1703	4
0	0	\N	0.469999999	18.7999992	1704	4
0	0	\N	1.66999996	47.5999985	1705	4
0	0	\N	5.26999998	20.5	1706	4
0	0	\N	2.02999997	17.8999996	1707	4
0	0	\N	8.01000023	22.2999992	1708	4
0	0	\N	5.1500001	22.1000004	1709	4
0	0	\N	3.5	17	1710	4
0	0	\N	0.800000012	19.8999996	1711	4
0	0	\N	2	19	1712	4
0	0	\N	0.800000012	20	1713	4
0	0	\N	1.71000004	18.7000008	1714	4
0	0	\N	2	21	1715	4
0	0	\N	5.19999981	24.1000004	1716	4
0	0	\N	2.5	18	1717	4
0	0	\N	4.42000008	19	1718	4
0	0	\N	0.349999994	17.2999992	1719	4
0	0	\N	4.5999999	18.2999992	1720	4
0	0	\N	0.810000002	15.3999996	1721	4
0	0	\N	0.50999999	17.7000008	1722	4
0	0	\N	0.439999998	19.2000008	1723	4
0	0	\N	1.73000002	18.6000004	1724	4
0	0	\N	0.330000013	19.7000008	1725	4
0	0	\N	0.800000012	18.7999992	1726	4
0	0	\N	1.39999998	17	1727	4
0	0	\N	66.5999985	5	1728	4
0	0	\N	1.34000003	20.5	1729	4
0	0	\N	4.07999992	19.1000004	1730	4
0	0	\N	5.9000001	18	1731	4
0	0	\N	12.6999998	13.5	1732	4
0	0	\N	2.70000005	19.8999996	1733	4
0	0	\N	0.100000001	17.5	1734	4
0	0	\N	9.17000008	21	1735	4
0	0	\N	2.91000009	20.7999992	1736	4
0	0	\N	5.90999985	20	1737	4
0	0	\N	14.1999998	10	1738	4
0	0	\N	4	16.8999996	1739	4
0	0	\N	2.70000005	19.7999992	1740	4
0	0	\N	4.80000019	16.2999992	1741	4
0	0	\N	11.8999996	19.7999992	1742	4
0	0	\N	1.54999995	17.8999996	1743	4
0	0	\N	3	21.8999996	1744	4
0	0	\N	0.860000014	18.6000004	1745	4
0	0	\N	0.439999998	18.8999996	1746	4
0	0	\N	0.579999983	15.6999998	1747	4
0	0	\N	3.94000006	18.2999992	1748	4
0	0	\N	0.939999998	20	1749	4
0	0	\N	1.94000006	20.1000004	1750	4
0	0	\N	4.25	21.3999996	1751	4
0	0	\N	1.60000002	18.7999992	1752	4
0	0	\N	2.3599999	17.7999992	1753	4
0	0	\N	1.46000004	15.6000004	1754	4
0	0	\N	1.78999996	20.2999992	1755	4
0	0	\N	1.51999998	16.1000004	1756	4
0	0	\N	2.42000008	18.7000008	1757	4
0	0	\N	7.65999985	19.6000004	1758	4
0	0	\N	4.21999979	18.2999992	1759	4
0	0	\N	10.8000002	18.7000008	1760	4
0	0	\N	2.0999999	17.5	1761	4
0	0	\N	1.5	15	1762	4
0	0	\N	3.5	16.2999992	1763	4
0	0	\N	4.76000023	17.7000008	1764	4
0	0	\N	6.21999979	19.2999992	1765	4
0	0	\N	6.23999977	19	1766	4
0	0	\N	1.19000006	17.8999996	1767	4
0	0	\N	0.939999998	18.7999992	1768	4
0	0	\N	5.84000015	17.7000008	1769	4
0	0	\N	18.6000004	16.1000004	1770	4
0	0	\N	1.26999998	13.5	1771	4
0	0	\N	2.13000011	18.1000004	1772	4
0	0	\N	7.4000001	19.2000008	1773	4
0	0	\N	0.660000026	17.7999992	1774	4
0	0	\N	1.08000004	18.2999992	1775	4
0	0	\N	0.680000007	19.1000004	1776	4
0	5.53999996	\N	1.15999997	19	1778	4
0	0.109999999	\N	1.32000005	19.6000004	1779	4
0	5.11999989	\N	2.08999991	17.2000008	1780	4
0	2.69000006	\N	0.469999999	20.7000008	1781	4
0	1.29999995	\N	1.51999998	21.7999992	1782	4
0	1.78999996	\N	4.28999996	19.5	1783	4
0	5.32999992	\N	1.48000002	16.2000008	1784	4
0	0.560000002	\N	0.699999988	16.2999992	1785	4
0	1.63999999	\N	1.39999998	32.5	1786	4
0.00100000005	4.46000004	\N	1.75	18.8999996	1787	4
0	4.4000001	\N	2.07999992	29.7999992	1788	4
0	2.82999992	\N	1.57000005	13.5	1789	4
0	8.44999981	\N	7.48000002	17.8999996	1790	4
0	0.230000004	\N	1.39999998	16.6000004	1791	4
0	2.17000008	\N	1.19000006	14.3999996	1792	4
0	1.28999996	\N	0.920000017	16.1000004	1794	4
0	0.939999998	\N	1.14999998	17.8999996	1795	4
0	3.8599999	\N	1.90999997	8.64000034	1796	4
0	2.69000006	\N	1.82000005	11.1999998	1797	4
0	1.07000005	\N	1.34000003	17.7000008	1798	4
0	0.50999999	\N	1.04999995	16.2000008	1799	4
0	2.66000009	\N	2.6500001	11.5	1800	4
0	0.970000029	\N	0.5	12.8999996	1801	4
0	7.61000013	\N	0.569999993	23.7999992	1802	4
0	3.21000004	\N	0.839999974	19.7000008	1803	4
0	1.52999997	\N	0.790000021	19.1000004	1804	4
0	2.76999998	\N	1.66999996	10.6999998	1805	4
0	0.810000002	\N	0.639999986	14.8000002	1806	4
0	3.8599999	\N	1.90999997	8.64000034	1807	4
0	1.15999997	\N	0.899999976	10.1999998	1808	4
0	0.74000001	\N	0.899999976	23.3999996	1809	4
0	0.0270000007	\N	2.8599999	19.5	1810	4
0	8.68999958	\N	0.829999983	14.3999996	1811	4
0	0	\N	0.529999971	21.8999996	1815	4
0	0.660000026	\N	0.280000001	16.2000008	1816	4
3.5	3.5	\N	13.6000004	12.1999998	1817	4
0	0.300000012	\N	20.7000008	13.8999996	1818	4
1.60000002	2	\N	18.3999996	15.1000004	1819	4
1.39999998	1.64999998	\N	13.8000002	16.3999996	1820	4
0	1	\N	22	11	1821	4
1.39999998	5.5	\N	11.3999996	11	1822	4
1.29999995	6.5	\N	14	8.39999962	1823	4
0.74000001	3.19000006	\N	54.7999992	6.75	1824	4
1.65999997	21.2000008	\N	14.3999996	8.68999958	1825	4
0	6.69999981	\N	1.79999995	16.7999992	1826	4
0	29	\N	13.6000004	12.5	1827	4
1	26	\N	10	6.5	1828	4
0	5.92999983	\N	2.20000005	14.6000004	1829	4
1.69000006	2.25999999	\N	23.7000008	12.8999996	1830	4
3	15.1000004	\N	17.6000004	12.3999996	1832	4
0.25999999	0.219999999	\N	15.8000002	18.2999992	1833	4
0	1.48000002	\N	10.3000002	24.7999992	1834	4
0	0	\N	8.44999981	26.3999996	1835	4
1	8.85999966	\N	16.7999992	13.3999996	1836	4
0	1	\N	7.26999998	10.3999996	1837	4
0	0	\N	17.1000004	25	1838	4
0	8	\N	13.8000002	13.6999998	1839	4
0	11.8999996	\N	10.1999998	16.7000008	1840	4
2.5	18.3999996	\N	13.6999998	13.1999998	1842	4
0.899999976	16.1000004	\N	5.73000002	11	1843	4
0.899999976	13.3999996	\N	10	11.8999996	1844	4
0	0.49000001	\N	12	24.3999996	1845	4
0	0	\N	0.400000006	26.7999992	1847	4
0	0.100000001	\N	4.19999981	26.8999996	1850	4
0	1.02999997	\N	11	25.8999996	1851	4
0	0	\N	5.05999994	30	1852	4
0	2.25	\N	14.1000004	17.7999992	1855	4
0	1.5	\N	10.1999998	20.5	1856	4
0	0	\N	11.3999996	21.6000004	1857	4
0.899999976	13	\N	9.56999969	12.6000004	1858	4
0	1.10000002	\N	44.4000015	7.25	1859	4
0	0	\N	3.0999999	25	1860	4
0	0.899999976	\N	1.98000002	26.6000004	1862	4
0	0	\N	13.3000002	16.2999992	1863	4
0	2.70000005	\N	3.25999999	23.8999996	1864	4
0	0	\N	12.5	24.2999992	1869	4
0	1.5	\N	10.5	30.7999992	1870	4
0	1.12	\N	0.170000002	10.3000002	1871	4
0	1.30999994	\N	30.1000004	16	1872	4
0	0.519999981	\N	8.61999989	13.5	1873	4
0	0.889999986	\N	9.47000027	12.5	1874	4
0	1.08000004	\N	9.81999969	12.1999998	1875	4
0	1.62	\N	11	9.98999977	1876	4
0	1.00999999	\N	9.72000027	13.8000002	1877	4
0	0.270000011	\N	9.82999992	12.6999998	1878	4
0	0.850000024	\N	0.189999998	10.8000002	1879	4
0	1.09000003	\N	26.7000008	15.5	1880	4
0	1.30999994	\N	13.8000002	13	1882	4
0	1.39999998	\N	13.3000002	13.8000002	1883	4
0	1.13	\N	11.8999996	13.6999998	1884	4
0	2.76999998	\N	57	34.0999985	1885	4
0	7.73000002	\N	0	81.1999969	1886	4
0	3.1099999	\N	42	47.9000015	1887	4
0	3.33999991	\N	19.2999992	17.3999996	1888	4
0	1.63	\N	16.7999992	14.6000004	1889	4
0.400000006	2.16000009	\N	11.1999998	9.43999958	1891	4
0.629999995	5.21999979	\N	11.8999996	9.85999966	1893	4
0	4.8499999	\N	3.63000011	3.31999993	1894	5
0	3.47000003	\N	3.29999995	3.29999995	1895	5
0	4.80000019	\N	1.52999997	3.27999997	1896	5
0	4.46999979	\N	1.60000002	3.82999992	1897	5
0	4.80000019	\N	1.52999997	3.24000001	1898	5
0	4.3499999	\N	2.82999992	3.3900001	1902	5
0	4.13000011	\N	1.57000005	3.76999998	1903	5
0	4.01000023	\N	3.20000005	3.22000003	1904	5
0	6.17999983	\N	1.73000002	2.41000009	1905	5
0	4.5	\N	6.96999979	5.67999983	1906	5
0	37.5	\N	26.7999992	27.3999996	1907	5
0	9.28999996	\N	7.53999996	6.88999987	1908	5
0	55.5999985	\N	7.86999989	7.69999981	1909	5
0	45.9000015	\N	15.1000004	29.5	1910	5
0	54	\N	0.699999988	35.2999992	1911	5
0	4.82000017	\N	1.57000005	3.27999997	1912	5
0.0280000009	11.6000004	\N	1.39999998	2.98000002	1913	5
0.0790000036	13.1000004	\N	1.69000006	3.08999991	1914	5
0	9.28999996	\N	1.48000002	2.93000007	1915	5
0	12.8999996	\N	1.60000002	2.75999999	1916	5
0	12.5	\N	2.94000006	3.45000005	1917	5
0.649999976	13	\N	3.00999999	3.56999993	1918	5
0	3.47000003	\N	3.5999999	3.83999991	1919	5
0	4.98999977	\N	3.4000001	3.83999991	1920	5
0.379999995	16.2999992	\N	6.30000019	2.30999994	1921	5
0	2.79999995	\N	5	5.71999979	1922	5
0.300000012	8	\N	0.899999976	4.63000011	1923	5
0	8.28999996	\N	0.0599999987	4.53000021	1924	5
0.170000002	12.1999998	\N	2.5999999	3.42000008	1925	5
0.0829999968	13.3999996	\N	5.44999981	3.07999992	1926	5
1	11.3000002	\N	3.43000007	3.6400001	1927	5
0.100000001	16.2000008	\N	5.69000006	3.75	1928	5
0.589999974	6.88999987	\N	0.0850000009	4.28000021	1929	5
0.660000026	7.44999981	\N	0.0970000029	4.53999996	1930	5
0.219999999	14.1999998	\N	2.4000001	3.6099999	1931	5
0.209999993	15	\N	4.48000002	3	1932	5
0.100000001	14	\N	2.3499999	3.50999999	1933	5
0	3.53999996	\N	2.56999993	4.11999989	1934	5
0	4.0999999	\N	0.064000003	4.82000017	1935	5
0	4.8499999	\N	6.15999985	3.82999992	1936	5
0	12.5	\N	1.95000005	3.48000002	1937	5
0.00270000007	3.71000004	\N	2.74000001	4.1500001	1938	5
0.129999995	7.67000008	\N	2.80999994	3.86999989	1939	5
0	11.5	\N	2.28999996	7.46000004	1940	5
0.49000001	7.17000008	\N	0.0810000002	4.34000015	1941	5
0.180000007	13.3999996	\N	3.11999989	3.3499999	1942	5
0.49000001	7.17000008	\N	0.0810000002	4.34000015	1943	5
0.180000007	13.3000002	\N	3.1099999	3.3499999	1944	5
0.170000002	13.1000004	\N	3.28999996	3.27999997	1945	5
0.150000006	12.1999998	\N	2.70000005	3.44000006	1946	5
0	5.05000019	\N	0.300000012	3.93000007	1947	5
0	4.5	\N	3.5999999	3.19000006	1948	5
0	4.21000004	\N	9.22000027	3.31999993	1949	5
0	4.5	\N	3.5999999	3.19000006	1950	5
0.0260000005	4.63999987	\N	4.5	7.17999983	1951	5
0	4.26999998	\N	6.5	4.05999994	1952	5
0	3.8900001	\N	0.0439999998	7.94999981	1953	5
0	3.46000004	\N	3.25999999	8.02999973	1954	5
0	5.25	\N	7.6500001	6.19000006	1955	5
0.680000007	13.3999996	\N	5.53000021	5.17999983	1956	5
0.159999996	13.1999998	\N	2.91000009	6.63000011	1957	5
0.200000003	12.1999998	\N	2.63000011	6.42000008	1958	5
0	3.79999995	\N	0.239999995	9.89000034	1959	5
0	3.36999989	\N	4.61000013	9.52999973	1960	5
0	3.73000002	\N	9.89000034	8.85000038	1961	5
0	12.1999998	\N	2.29999995	5.9000001	1962	5
0.469999999	15	\N	0.949999988	3.61999989	1963	5
0	18.1000004	\N	3.02999997	4.32000017	1964	5
0	19.1000004	\N	2.5	5.63000011	1965	5
0.0769999996	18.7000008	\N	2.94000006	2.46000004	1966	5
0.519999981	24.7999992	\N	3.52999997	3.3900001	1967	5
0.270000011	21.6000004	\N	5.78000021	3	1968	5
1.86000001	22.6000004	\N	10.6999998	2.41000009	1970	5
0.930000007	24.7000008	\N	2.99000001	3.82999992	1971	5
0.649999976	18.6000004	\N	4.65999985	3.38000011	1973	5
0.720000029	18.7999992	\N	3.93000007	3.3900001	1974	5
1.55999994	24.7999992	\N	6.48000002	4.8499999	1975	5
0	22.2000008	\N	3.5999999	4.44999981	1976	5
0.670000017	18.7999992	\N	8.88000011	4.32000017	1977	5
0.280000001	21.2999992	\N	3.00999999	3.33999991	1978	5
0.610000014	19	\N	20.7999992	4.46000004	1979	5
0.5	18	\N	3.61999989	3.70000005	1980	5
0.0469999984	20.8999996	\N	3.30999994	4.98000002	1981	5
0.550000012	18.7999992	\N	3.23000002	3.46000004	1982	5
0.0909999982	15.3000002	\N	6.78999996	6.48000002	1983	5
0.0949999988	14.6000004	\N	3.32999992	2.81999993	1984	5
0.460000008	17.5	\N	5.07000017	3.3599999	1985	5
0.75	20	\N	10.1000004	3.61999989	1986	5
0	65	\N	15	12	1987	5
0.0419999994	16.5	\N	3.69000006	2.93000007	1988	5
0.119999997	17	\N	3.47000003	2.92000008	1989	5
2.04999995	18.8999996	\N	3.51999998	3.48000002	1990	5
3.5999999	19.7999992	\N	3.42000008	3.25	1991	5
0.49000001	17.2000008	\N	3.6500001	3.16000009	1992	5
0.899999976	31.7000008	\N	20.2999992	4.57000017	1993	5
1.42999995	12.1999998	\N	1.84000003	3.07999992	1994	5
1.52999997	1.52999997	\N	2.19000006	3.63000011	1995	5
1.67999995	36.7000008	\N	11.3000002	4.13999987	1996	5
1.85000002	35.4000015	\N	8.15999985	2.74000001	1997	5
1.71000004	23.2000008	\N	1.88	3.05999994	1998	5
2.30999994	34.2999992	\N	12.1999998	5.51000023	1999	5
1	24.5	\N	3.02999997	2.8499999	2000	5
3.79999995	25.6000004	\N	18.6000004	6.51999998	2001	5
1.88	27.2000008	\N	6.51000023	5.21999979	2002	5
1.20000005	16	\N	8.10000038	1.5	2003	5
3.24000001	41.9000015	\N	18.1000004	6.86000013	2005	5
1.25	29.7999992	\N	9.52999973	6.11999989	2006	5
0	10.8000002	\N	4.19000006	4.19000006	2007	5
0	22.2999992	\N	3.5999999	3.78999996	2008	5
0	0.409999996	\N	27.6000004	22.2000008	2009	5
0	0	\N	21.7999992	21	2010	5
0	0	\N	32.2999992	17.5	2011	5
0	0	\N	20.2999992	20.7000008	2012	5
0	0	\N	29.3999996	10.1999998	2013	5
0	0	\N	11	24.8999996	2014	5
0	0	\N	22.7999992	18.7999992	2015	5
0	0	\N	11	22.5	2016	5
0	0	\N	5.5	25.7000008	2017	5
0	0	\N	25.5	17.2999992	2018	5
0	0	\N	20.7000008	21.3999996	2019	5
0	0	\N	22.2000008	22	2020	5
0	0	\N	27	21.3999996	2021	5
0	0	\N	22.8999996	17.2999992	2022	5
0	0	\N	27.7999992	22.2999992	2023	5
0	0	\N	29.5	21.2000008	2024	5
0	0	\N	23.8999996	18.5	2025	5
0	0	\N	37.5	9.89000034	2026	5
0	0	\N	26.3999996	20.6000004	2027	5
0	0	\N	12.6000004	21.6000004	2028	5
0	0	\N	26.3999996	21.8999996	2029	5
0	0	\N	22.6000004	24.6000004	2030	5
0	0	\N	24.5	17.7999992	2031	5
0	0	\N	29	21.2000008	2032	5
0	0	\N	23.7999992	16.7000008	2033	5
0	0	\N	26.2000008	22.7000008	2034	5
0	0	\N	27.3999996	20.3999996	2035	5
0	0	\N	25.3999996	20.3999996	2036	5
0	0	\N	24.2999992	15.1000004	2037	5
0	0	\N	29	18.2000008	2038	5
0	0	\N	25.3999996	18.8999996	2039	5
0	0	\N	28.8999996	12.1999998	2040	5
0	0	\N	27	20.7000008	2041	5
0	0	\N	24.7000008	19.7999992	2042	5
0	0	\N	26.2000008	20.3999996	2043	5
0	0	\N	24.2000008	19.6000004	2044	5
0	0	\N	29.7999992	21.6000004	2045	5
0	0	\N	24.1000004	19.2999992	2046	5
0	0	\N	10	22.6000004	2047	5
0	0	\N	22.6000004	19.2999992	2048	5
0	0	\N	35.5999985	30.5	2049	5
0	0	\N	23.7999992	19.8999996	2050	5
0	0	\N	23.2999992	16.7999992	2051	5
0	0	\N	23.7999992	20.5	2052	5
0	0	\N	27.7999992	23.7999992	2053	5
0	0	\N	32.5999985	23.2000008	2054	5
0	0	\N	28	22.3999996	2055	5
0	0	\N	24.3999996	19.7000008	2056	5
0	0	\N	26	20.7000008	2057	5
0	0	\N	24.5	18.8999996	2058	5
0	0	\N	30	22.1000004	2059	5
0	0	\N	23.8999996	19.2000008	2060	5
0	0	\N	22.7999992	18.5	2061	5
0	0	\N	22.8999996	18.6000004	2062	5
0	0	\N	25.5	19.2999992	2063	5
0	0	\N	30.8999996	19.6000004	2064	5
0	0	\N	30.7999992	22.5	2065	5
0	0	\N	28.2999992	19.8999996	2066	5
0	0	\N	28.3999996	22.3999996	2067	5
0	0	\N	27.6000004	19.8999996	2068	5
0	0	\N	30	20.3999996	2069	5
0	0	\N	26.3999996	19	2070	5
0	0	\N	30.7000008	22.5	2071	5
0	0	\N	30.5	17.3999996	2072	5
0	0	\N	15.5	27.1000004	2073	5
0	0	\N	31.6000004	28.2999992	2074	5
0	0	\N	34	26.6000004	2075	5
0	0	\N	34.5999985	27.2000008	2076	5
0	0	\N	31.6000004	27.1000004	2077	5
0	0	\N	32	27.2999992	2078	5
0	0	\N	34.5999985	28.3999996	2079	5
0	0	\N	30.2000008	28.2000008	2080	5
0	0	\N	14	30.6000004	2081	5
0	0	\N	28.6000004	28.1000004	2082	5
0	0	\N	37	24.2000008	2083	5
0	0	\N	32.7000008	34.5	2084	5
0	0	\N	31.1000004	25.6000004	2085	5
0	0	\N	29.2000008	34.0999985	2086	5
0	0	\N	13.8000002	29	2087	5
0	0	\N	26.6000004	25.6000004	2088	5
0	0	\N	29.7000008	26.5	2089	5
0	0	\N	31	25.2999992	2090	5
0	0	\N	31.3999996	25.8999996	2091	5
0	0	\N	33.7999992	24	2092	5
0	0	\N	25.5	25.5	2093	5
0	0	\N	24.2000008	28.8999996	2094	5
0	0	\N	31.5	23.2000008	2095	5
0	0	\N	26.8999996	31.5	2096	5
0	0	\N	28.7999992	34	2097	5
0	0	\N	23.3999996	24.8999996	2098	5
0	0	\N	26.6000004	26.2999992	2099	5
0	0	\N	28.2000008	33.9000015	2100	5
0	0	\N	29.5	22.5	2101	5
0	0	\N	33.5999985	24.1000004	2102	5
0	0	\N	27	22.7999992	2103	5
0	0	\N	27.6000004	24.6000004	2104	5
0	0	\N	29.7999992	22.2999992	2105	5
0	0	\N	28.3999996	22.5	2106	5
0	0	\N	23.6000004	22.2000008	2107	5
0	0	\N	29.2000008	23.8999996	2108	5
0	0	\N	29.1000004	25.6000004	2109	5
0	0	\N	12.1000004	31	2110	5
0	0	\N	25.6000004	32.0999985	2111	5
0	0	\N	38.4000015	28.5	2112	5
0	0	\N	30.7999992	26.6000004	2113	5
0	0	\N	32.2999992	23.8999996	2114	5
0	0	\N	14.8000002	10.1000004	2115	5
0	6	\N	20.2000008	14.6000004	2116	5
0	2.6099999	\N	21.3999996	16.7000008	2117	5
0	2	\N	30.2999992	8.81999969	2118	5
0	1	\N	9.10999966	14.8999996	2119	5
1.20000005	24.1000004	\N	18.8999996	10.8000002	2121	5
0	1.41999996	\N	21.7000008	16.3999996	2122	5
0	2.5	\N	22.7999992	14.8000002	2123	5
0	0.159999996	\N	23.3999996	17.6000004	2124	5
0	3	\N	23.5	6.11999989	2125	5
0	2	\N	21.2000008	7.6500001	2126	5
0	2.07999992	\N	20	16.1000004	2127	5
0	2.02999997	\N	16.8999996	13.1000004	2128	5
0	2.04999995	\N	18.3999996	14.6000004	2129	5
0	2.41000009	\N	12.1999998	10.8000002	2130	5
0	4	\N	39	4.38000011	2132	5
0	4	\N	11.8999996	8.78999996	2133	5
0	1.33000004	\N	19.7000008	16.8999996	2134	5
0	2.19000006	\N	30.5	2.47000003	2135	5
0	3.1500001	\N	32.0999985	2.1099999	2136	5
0	11.3000002	\N	24.3999996	2.88000011	2137	5
0	4.5	\N	14.6000004	2.6400001	2138	5
0	4.5999999	\N	15.6000004	3.20000005	2139	5
0	4.30000019	\N	9.05000019	3.19000006	2140	5
0	10.8000002	\N	1	0	2141	6
0	0	\N	0	0	2142	6
0	0	\N	0	0	2143	6
0	0	\N	0	0	2144	6
0	0	\N	0	0	2145	6
0	0	\N	0	0	2146	6
0	0	\N	0	0	2147	6
0	0	\N	0	0	2148	6
0	0	\N	0	0	2149	6
0	0	\N	0	0	2150	6
0	0	\N	0	0	2151	6
0	0	\N	0	0	2152	6
0	0	\N	0	0	2153	6
0	0	\N	0	0	2154	6
0	0	\N	0	0	2155	6
0	0	\N	0	0	2156	6
0	0	\N	0	0	2157	6
0	0	\N	0	0	2158	6
0	0	\N	0	0	2159	6
0	0	\N	0	0	2160	6
0	0	\N	0	0	2161	6
0	0	\N	0	0	2162	6
0	0	\N	0	0	2163	6
0	0	\N	0	0	2164	6
0	0	\N	0	0	2165	6
0	0	\N	0	0	2166	6
0	0	\N	0	0	2167	6
0	0	\N	0	0	2168	6
0	0	\N	0	0	2169	6
0	0	\N	0	0	2170	6
0	0	\N	0	0	2171	6
0	0	\N	0	0	2172	6
0	0	\N	0	0	2173	6
0	0	\N	0	0	2174	6
0	0	\N	0	0	2175	6
0	0	\N	0	0	2176	6
0	0	\N	0	0	2177	6
0	0	\N	0	0	2178	6
0	0	\N	0	0	2179	6
0	0	\N	0	0	2180	6
0	0	\N	0	0	2181	6
0	0	\N	0	0	2183	6
0	0	\N	0	0	2184	6
0	0	\N	0	0	2185	6
0	0	\N	0	0	2186	6
0	0	\N	0	0	2187	6
0	0	\N	0	0	2188	6
0	0	\N	0	0	2189	6
0	0	\N	0	0	2190	6
0	0	\N	0	0	2191	6
0	0	\N	0	0	2192	6
0	0	\N	0	0	2193	6
0	0	\N	0	0	2194	6
0	0	\N	0	0	2195	6
0	0	\N	0	0	2196	6
0	0	\N	0	0	2197	6
0	0	\N	0	0	2198	6
0	0	\N	0	0	2199	6
0	0	\N	0	0	2200	6
0	0	\N	0	0	2201	6
0	0	\N	0	0	2202	6
0	0	\N	0	0	2203	6
0	0	\N	0	0	2204	6
0	0	\N	0	0	2205	6
0	0	\N	0	0	2206	6
0	0	\N	0	0	2207	6
0	0	\N	0	0	2208	6
0	0	\N	0	0	2209	6
0	0	\N	0	0	2210	6
0	0	\N	0	0	2211	6
0	0	\N	0	0	2212	6
0	0	\N	0	0	2213	6
0	0	\N	0	0	2214	6
0	0	\N	0	0	2215	6
0	0	\N	0	0	2216	6
0	0	\N	0	0	2217	6
0	0	\N	0	0	2218	6
0	0	\N	0	0	2219	6
0	0	\N	0	0	2220	6
0	0	\N	0	0	2221	6
0	0	\N	0	0	2222	6
0	0	\N	0	0	2223	6
0	0	\N	0	0	2224	6
0	0	\N	0	0	2225	6
0	0	\N	0	0	2226	6
0	0	\N	0	0	2227	6
0	0	\N	0	0	2228	6
0	0	\N	0	0	2229	6
0	0	\N	0	0	2230	6
0	0	\N	0	0	2231	6
0	0	\N	0	0	2232	6
0	0	\N	0	0	2233	6
0	0	\N	0	0	2234	6
0	0	\N	0	0	2235	6
0	0	\N	0	0	2236	6
0	0	\N	0	0	2237	6
0.180000007	11.1999998	\N	0.0960000008	0.409999996	2238	6
0.25	11.3000002	\N	0.100000001	0.479999989	2239	6
0.300000012	9.18999958	\N	0.140000001	0.529999971	2240	6
0.330000013	6.55000019	\N	0.100000001	0.400000006	2241	6
0	11.6999998	\N	0	0	2243	6
0.25	7.82999992	\N	0.129999995	0.629999995	2244	6
0.200000003	9.43999958	\N	0.200000003	0.660000026	2245	6
0.300000012	10.1000004	\N	0.0979999974	0.239999995	2246	6
0.140000001	16.2999992	\N	0.057	0.25	2248	6
0.100000001	13	\N	0.289999992	0.150000006	2249	6
0.150000006	14.1999998	\N	0.109999999	0.310000002	2251	6
0	9.5	\N	0	0.189999998	2252	6
0.200000003	14.3000002	\N	0.180000007	0.670000017	2253	6
0.150000006	10.6000004	\N	0.140000001	0.660000026	2261	6
0.430000007	11.3999996	\N	0.100000001	0.469999999	2262	6
0	11.6000004	\N	0	0.200000003	2263	6
0.620000005	11.1999998	\N	0.150000006	0.519999981	2265	6
0.280000001	9.57999992	\N	0.109999999	0.610000014	2266	6
0.289999992	9.13000011	\N	0.140000001	0.519999981	2267	6
0.219999999	12	\N	0.074000001	0.409999996	2268	6
0.230000004	9.78999996	\N	0.140000001	0.170000002	2269	6
0.370000005	4.32999992	\N	0.129999995	0.720000029	2270	6
0.360000014	9.39999962	\N	0.129999995	0.540000021	2271	6
1.08000004	12.3999996	\N	0.25999999	0.620000005	2272	6
0.0799999982	13.6999998	\N	0.0299999993	0.209999993	2273	6
0.449999988	14.8000002	\N	0.0430000015	0.189999998	2275	6
0.150000006	11.3000002	\N	0.100000001	0.239999995	2276	6
0.300000012	11.5	\N	0.0890000015	0.300000012	2277	6
0	15.1999998	\N	0.100000001	0.300000012	2278	6
0.140000001	11.3000002	\N	0.159999996	0.140000001	2280	6
0.150000006	12.3000002	\N	0.0829999968	0.200000003	2281	6
0.330000013	12.1000004	\N	0.0500000007	0.219999999	2282	6
0.180000007	8.78999996	\N	0.0799999982	0.289999992	2283	6
0	0.159999996	\N	0	0.0500000007	2284	6
0	8.44999981	\N	0.0199999996	0.0399999991	2285	6
1.10000002	2.88000011	\N	0.200000003	0.5	2286	6
0.0439999998	3.48000002	\N	0.0860000029	0.0860000029	2287	6
0.100000001	0.400000006	\N	0	0.0500000007	2288	6
0.100000001	6.44999981	\N	0	0	2289	6
0	5.30000019	\N	0	0	2290	6
0	3	\N	0	0	2291	6
0	10.1999998	\N	0.061999999	0.0930000022	2292	6
0	11.3000002	\N	0.0280000009	0.0670000017	2293	6
0.0500000007	0.959999979	\N	0.129999995	0.0599999987	2294	6
0.100000001	4.4000001	\N	0.100000001	0.100000001	2295	6
0	8.67000008	\N	0.0780000016	0.140000001	2296	6
0	0.140000001	\N	0	0.0599999987	2297	6
0.0109999999	7.3499999	\N	0.0419999994	0.100000001	2298	6
0.0670000017	0.280000001	\N	0.0860000029	0.0860000029	2299	6
0	7	\N	0	0	2301	6
0	0.100000001	\N	0	0.0670000017	2302	6
0.00329999998	6.6500001	\N	0.00329999998	0.00930000003	2303	6
0.0689999983	10.6000004	\N	0	0.075000003	2304	6
0.000419999997	11.1999998	\N	0.0299999993	0.0680000037	2305	6
0.00499999989	9.97000027	\N	0.050999999	0.0810000002	2306	6
0	7.69999981	\N	0	0.0549999997	2307	6
0.00300000003	0.109999999	\N	0.0529999994	0.0810000002	2308	6
0	0.340000004	\N	0	0.0140000004	2311	6
0	11	\N	0	0	2312	6
0	0.200000003	\N	0	0	2313	6
0	6.76000023	\N	0	0.0329999998	2314	6
0	6.80000019	\N	0	0	2315	6
0	11.1999998	\N	0.0700000003	0.100000001	2317	6
0.0410000011	10.1000004	\N	0.0599999987	0.129999995	2318	6
0	0.449999988	\N	0.129999995	0.063000001	2319	6
0.0500000007	8.27999973	\N	0.0659999996	0.0680000037	2320	6
0	4.17000008	\N	0	0	2321	6
0.100000001	11.8999996	\N	0	0.200000003	2322	6
0	0.949999988	\N	0.100000001	0.0729999989	2323	6
0	11.3999996	\N	0.100000001	0.699999988	2324	6
0.270000011	10.3999996	\N	0.74000001	2.49000001	2325	6
0	10.8000002	\N	0.99000001	2.75	2326	6
0	10	\N	0.449999988	2.17000008	2327	6
0.400000006	1.45000005	\N	1.5	0.600000024	2329	6
0.600000024	0.699999988	\N	2.06999993	3.30999994	2330	6
1	2.18000007	\N	2.04999995	3.42000008	2331	6
0.600000024	7.23999977	\N	1.91999996	2.96000004	2332	6
1.10000002	2.8900001	\N	1.79999995	3.00999999	2333	6
0	9.5	\N	1	2.29999995	2335	6
0	0	\N	0.0199999996	0.119999997	2336	6
0	0	\N	0.00700000022	0.100000001	2337	6
0	0.200000003	\N	0.00800000038	0	2338	6
0	0.600000024	\N	0.180000007	0.100000001	2339	6
0	0.600000024	\N	0.180000007	0.119999997	2340	6
0	0.400000006	\N	0.00200000009	0.119999997	2341	6
0	0.300000012	\N	0.00400000019	0.109999999	2342	6
1.70000005	9.5	\N	1.41999996	3.77999997	2343	6
0	9.90999985	\N	1.71000004	4.07999992	2344	6
0	2.30999994	\N	0.75999999	1.38999999	2345	6
0.460000008	5.9000001	\N	1.62	3.74000001	2346	6
0	0.300000012	\N	0.00700000022	0	2347	6
0	0	\N	0	0	2348	6
0	0	\N	0	0	2349	6
0.589999974	7.0999999	\N	7.0999999	0	2350	6
0	0	\N	0	0	2351	6
19.7999992	40.2000008	\N	15.3999996	14.3999996	2352	6
19.1000004	42.5999985	\N	1.10000002	15.8000002	2353	6
0	61.0999985	\N	0	0.129999995	2354	6
0	76	\N	0.200000003	12.6999998	2356	6
29.5	11.6000004	\N	20.6000004	22.3999996	2357	6
10.5	75.5999985	\N	3.28999996	6.6500001	2358	6
0	79.4000015	\N	5.03000021	9.89999962	2359	6
14.5	61.5	\N	0.300000012	11.8999996	2360	6
29.2000008	57.2000008	\N	2.5	3.29999995	2361	6
3.71000004	58.5	\N	12.3000002	12.8000002	2362	6
3.50999999	67.0999985	\N	9.13000011	11.1999998	2363	6
6.48000002	79.3000031	\N	3.03999996	4.67999983	2364	6
5.30000019	85	\N	2.03999996	4.28999996	2365	6
0	10.5	\N	0	0.119999997	2367	6
0	6.94000006	\N	0	0	2368	6
0	2.57999992	\N	0	0.0700000003	2369	6
0	1.39999998	\N	0	0.100000001	2370	6
0	0	\N	0	0.200000003	2371	6
0	1.02999997	\N	0	0.075000003	2372	6
0	1.58000004	\N	0	0.0850000009	2373	6
0	1.39999998	\N	0	0.200000003	2374	6
0	2.80999994	\N	0	0.300000012	2375	6
0	0.200000003	\N	0	0.100000001	2376	6
0	5.0999999	\N	0	0.200000003	2377	6
0	2.18000007	\N	0	0.129999995	2378	6
0	0.170000002	\N	0	0	2379	6
0	4.0999999	\N	0	0.479999989	2380	6
0	2.70000005	\N	0	0.389999986	2381	6
0	4.5999999	\N	0	0.50999999	2382	6
0	5.09000015	\N	0	0	2384	6
0	4.61999989	\N	0	0.310000002	2385	6
0	4.55000019	\N	0	0.479999989	2386	6
0	3.20000005	\N	0	0.50999999	2387	6
0	1.87	\N	0	0	2388	6
0	0.959999979	\N	0	0	2389	6
0	5.34000015	\N	0	0	2390	6
0	4.88999987	\N	0	0.310000002	2391	6
0	2.91000009	\N	0	0	2392	6
0	2.78999996	\N	0	0	2393	6
0	0	\N	0	0	2394	6
0	39.5999985	\N	0.300000012	0.100000001	2395	6
0	0.0309999995	\N	0	0	2396	6
0	1.57000005	\N	0	0	2397	6
0	11.3999996	\N	0	0.0130000003	2398	6
0	0.689999998	\N	0	0	2399	6
1	1	\N	0	0	2400	6
0	0	\N	0	0	2403	6
0	27.8999996	\N	0	0.100000001	2404	6
0	12.3999996	\N	0	0	2405	6
0.550000012	9.59000015	\N	0.109999999	0.389999986	2406	6
0	9.46000004	\N	0	0.0560000017	2407	6
0	9.88000011	\N	0	0	2408	6
0	41.4000015	\N	0	0	2409	6
0	1	\N	0	0	2411	6
0	5	\N	0	0	2412	6
0	5.17000008	\N	0	0.189999998	2414	6
0	4.92999983	\N	0	0.479999989	2415	6
2.20000005	69.3000031	\N	0	6.3499999	2416	7
0	94.6999969	\N	0	0.629999995	2417	7
0.5	93	\N	5	0.5	2418	7
0	67.0999985	\N	0.0599999987	0.0399999991	2422	7
0	88.8000031	\N	0	1.25	2424	7
0.5	98	\N	0.200000003	0	2428	7
0	78.0999985	\N	0.5	0	2429	7
2.46000004	52.9000015	\N	34.2999992	7.40999985	2433	7
12	42.9000015	\N	33.7999992	6.63000011	2434	7
2.58999991	60.5999985	\N	26.6000004	7.1500001	2435	7
1	57.0999985	\N	34.2000008	6.15999985	2436	7
2.71000004	59	\N	30.7000008	4.11000013	2437	7
3.23000002	57.9000015	\N	32.4000015	5.01999998	2442	7
1.98000002	64.3000031	\N	24.2999992	5.48999977	2443	7
5.9000001	55.9000015	\N	25	9.5	2444	7
2.0999999	51.5	\N	34.7000008	9.10000038	2445	7
3.88000011	51.4000015	\N	35.2999992	6.53000021	2446	7
10.3000002	45.2999992	\N	34.4000015	6.80000019	2447	7
1.52999997	57.5999985	\N	26	7.23000002	2449	7
6.69999981	57.5	\N	26.6000004	4.73000002	2450	7
0	52	\N	34	10	2451	7
11.8999996	35	\N	41.5999985	8.43999958	2452	7
2.29999995	45.5	\N	45	4.80000019	2453	7
5.07000017	52.4000015	\N	34.7999992	6.38000011	2454	7
2.50999999	52.9000015	\N	34.9000015	7.28999996	2455	7
8.76000023	51.4000015	\N	33.0999985	6.38999987	2456	7
2.9000001	60.5	\N	29	5.80000019	2458	7
4.30000019	39	\N	34.2000008	6.67999983	2459	7
7.30000019	45.9000015	\N	36.2000008	7.42999983	2460	7
0.629999995	88.4000015	\N	7.69000006	1.92999995	2461	7
2.4000001	88.1999969	\N	0.300000012	0.379999995	2462	7
2.5999999	81.5999985	\N	0	0	2463	7
1.10000002	82.6999969	\N	0.200000003	0.200000003	2464	7
0.899999976	79.5	\N	0	0.939999998	2465	7
4.5	75	\N	0.200000003	0.550000012	2466	7
0.699999988	62.5	\N	25.2000008	8.25	2467	7
0	73.9000015	\N	17.2000008	5	2468	7
0.230000004	78.6999969	\N	1.41999996	3.73000002	2469	7
0	95.4000015	\N	0.349999994	0	2471	7
0	77.5999985	\N	0.25	6.28000021	2472	7
0.879999995	78.5	\N	8.03999996	2.95000005	2473	7
2.70000005	60.2999992	\N	18	7.88000011	2474	7
1.00999999	60.5	\N	0.159999996	0.319999993	2476	7
0.74000001	60.5999985	\N	0.0900000036	0.319999993	2477	7
0.550000012	60.9000015	\N	0.159999996	0.379999995	2478	7
1	61.2000008	\N	0.0799999982	0.159999996	2479	7
0.579999983	58	\N	5.44999981	6.44999981	2480	7
0.949999988	61	\N	0.209999993	0.469999999	2481	7
1.16999996	32.4000015	\N	11.8000002	2.6400001	2483	8
1.30999994	35.7999992	\N	21.3999996	5.11999989	2484	8
1.23000002	33.4000015	\N	19.7999992	3.42000008	2485	8
0.720000029	25.5	\N	9.61999989	2.78999996	2487	8
0	27.7000008	\N	7.19999981	3.22000003	2488	8
1.04999995	29	\N	10.6999998	3.04999995	2489	8
0	24.2000008	\N	17.8999996	4.21000004	2490	8
2.32999992	38.5	\N	20.2000008	4.19999981	2491	8
1.90999997	26.7000008	\N	12.6999998	3.21000004	2492	8
0.49000001	26.2000008	\N	8.85000038	2.92000008	2493	8
0.280000001	25.2000008	\N	5.94000006	1.87	2494	8
0.819999993	25.7000008	\N	0.319999993	0.280000001	2495	8
1.16999996	29.6000004	\N	0.779999971	0.469999999	2496	8
0.200000003	20.7999992	\N	0.200000003	0.0670000017	2497	8
1.13999999	26.5	\N	13.8999996	6.23999977	2498	8
1.53999996	18.3999996	\N	4.03000021	1.90999997	2499	8
2.18000007	40.5	\N	10.6999998	3.18000007	2500	8
0	32.5999985	\N	9.69999981	2.56999993	2501	8
0.939999998	26.2000008	\N	16.1000004	2.71000004	2502	8
0	34.7999992	\N	6.5	3.5999999	2503	8
2.75999999	23.5	\N	9.56999969	2.74000001	2504	8
2.75999999	25.2999992	\N	15.1999998	4.92999983	2505	8
1.82000005	28.6000004	\N	10	3.03999996	2507	8
1.53999996	30	\N	10.3999996	2.47000003	2508	8
0.349999994	32.2000008	\N	3.3599999	0.910000026	2509	8
0	0.680000007	\N	82	0.75	2510	9
0	0	\N	99.9000015	0.280000001	2511	9
0	0.550000012	\N	81.1999969	0.75999999	2512	9
0	0.680000007	\N	82.5	0.610000014	2513	9
0	0.5	\N	83.4000015	0.699999988	2514	9
0	0.699999988	\N	60.5999985	0.560000002	2515	9
0	0.5	\N	61	0.899999976	2516	9
0	3.75	\N	39.5999985	0.730000019	2517	9
0	0.550000012	\N	80.5	0.769999981	2518	9
0	0.790000021	\N	80.5	0.75	2519	9
0	4	\N	40	1.10000002	2520	9
0	3.79999995	\N	25.6000004	0.400000006	2521	9
0	6	\N	21.1000004	0.360000014	2522	9
23.6000004	56	\N	1.49000001	8.10000038	2523	9
0	0	\N	100	0	2524	9
0	0	\N	100	0	2525	9
0	0	\N	96.1999969	0	2526	9
0	0	\N	100	0	2527	9
0	0	\N	100	0	2528	9
0	0	\N	99.9000015	0	2529	9
0	0	\N	100	0	2531	9
0	0	\N	100	0	2532	9
0	0	\N	100	0	2535	9
0	0	\N	100	0	2536	9
0	0	\N	100	0	2537	9
0	0	\N	100	0	2538	9
0	0	\N	100	0	2540	9
0	0	\N	100	0	2543	9
0	0	\N	100	0	2544	9
0	0	\N	100	0	2545	9
0	0	\N	100	0	2546	9
0	0	\N	99.5	0	2547	9
0	0	\N	98.6999969	0	2549	9
0	0	\N	80	0	2550	9
0	0.300000012	\N	80.4000015	0.389999986	2551	9
0	0.239999995	\N	70	0.129999995	2552	9
0	0	\N	60.5999985	0	2553	9
0	0.219999999	\N	65.5	0.119999997	2554	9
0	0.180000007	\N	56.7999992	0.109999999	2555	9
0	0.5	\N	38	0.5	2556	9
0	3.04999995	\N	38	0.899999976	2557	9
0	4	\N	35.0999985	0.0900000036	2558	9
0	0	\N	38.7999992	0	2559	9
0	0.180000007	\N	57.7999992	0.150000006	2560	9
0	0	\N	58	0.200000003	2561	9
0	0.100000001	\N	62	0.100000001	2562	9
0	0.119999997	\N	54.5	0.0829999968	2563	9
0	0.170000002	\N	57.4000015	0.0970000029	2564	9
0	2.5	\N	35	0.100000001	2565	9
0	0.600000024	\N	54	0.400000006	2566	9
0	0.600000024	\N	53	0.400000006	2567	9
0	5.5999999	\N	40.9000015	1.69000006	2568	9
0	5.5999999	\N	38	1.5	2569	9
0	0	\N	100	0	2570	9
0	0	\N	100	0	2571	9
0	0	\N	100	0	2572	9
0	0	\N	100	0	2573	9
0	0	\N	99.5	0	2574	9
0	0	\N	88.6999969	2.92000008	2575	9
0	0	\N	99.8000031	0	2576	9
0	0	\N	99.8000031	0	2577	9
0	0	\N	99.8000031	0	2578	9
0	0	\N	99.8000031	0	2579	9
0	0	\N	0	0	2580	9
0.469999999	4.5999999	\N	55	0.99000001	2582	10
0.319999993	2.61999989	\N	75.1999969	1.36000001	2583	10
0.230000004	8.97999954	\N	29.8999996	0.930000007	2584	10
0.5	32	\N	0.550000012	0.730000019	2585	10
0.860000014	3.82999992	\N	0.100000001	7.07999992	2586	10
5.0999999	7.30000019	\N	2.9000001	2.72000003	2589	10
0.519999981	7.8499999	\N	43.9000015	1.25	2590	10
1.11000001	4.78999996	\N	6.90999985	3.66000009	2592	10
0.200000003	9.47999954	\N	41.7999992	1.41999996	2593	10
0.419999987	4.69999981	\N	41	1.13	2594	10
0.349999994	5.30000019	\N	30.8999996	0.860000014	2595	10
0.200000003	10.8999996	\N	0	9.30000019	2596	10
0.479999989	13.3000002	\N	33.7999992	1.05999994	2597	10
0.5	7.26000023	\N	14.3000002	0.75999999	2598	10
0.100000001	9.14999962	\N	27.6000004	1.10000002	2599	10
0	1	\N	41.4000015	1.10000002	2600	10
0.5	6	\N	51.4000015	0.970000029	2601	10
0.100000001	16	\N	1.05999994	3.81999993	2603	10
5.6500001	5.8499999	\N	16.5	2.18000007	2604	10
5.98000002	7.0999999	\N	23.8999996	8.19999981	2605	10
0.400000006	7.26999998	\N	5.65999985	2.30999994	2606	10
0.479999989	4.51999998	\N	47.7000008	0.879999995	2607	10
0.5	4.57999992	\N	19.7999992	1.19000006	2608	10
0	3.95000005	\N	6.5999999	2.0999999	2610	10
1.29999995	5.30000019	\N	6.0999999	1.29999995	2612	10
0.5	3.5999999	\N	2.20000005	0.600000024	2613	10
0.899999976	11.8999996	\N	5.53000021	1.70000005	2614	10
2.6500001	4.69999981	\N	12.8000002	5.17000008	2615	10
0.430000007	4.65999985	\N	1.61000001	1.21000004	2616	10
1.27999997	10.6000004	\N	3.16000009	1.01999998	2617	10
0.370000005	4.57999992	\N	16.7999992	0.930000007	2618	10
0.200000003	8.97000027	\N	10.6000004	3.83999991	2619	10
1	5.19999981	\N	17.8999996	2.20000005	2620	10
0.239999995	5.9000001	\N	5.51000023	1.27999997	2621	10
0.699999988	6.19999981	\N	5.5	1.25	2623	10
0.5	5.19999981	\N	5.38000011	1.25	2624	10
0.970000029	20.1000004	\N	0.200000003	0.550000012	2625	10
0.419999987	7	\N	2.1400001	0.930000007	2626	10
1.13	4.80000019	\N	14.8000002	1	2631	10
0.600000024	4.4000001	\N	10.8999996	2.8499999	2633	10
0	8.44999981	\N	7	1.5	2635	10
1.89999998	14.3000002	\N	1.70000005	2.5999999	2636	10
0.910000026	7.05000019	\N	9.10000038	2.55999994	2640	10
8.39999962	0.200000003	\N	21	1.13	2641	10
3	26.2000008	\N	16.7999992	3.79999995	2642	10
1	16.7000008	\N	2.5	3.44000006	2643	10
3.70000005	2.5999999	\N	23	1.29999995	2649	10
6.19999981	0	\N	17.2000008	1.38	2654	10
5.19999981	0.379999995	\N	14.8000002	1.25	2655	10
11.6000004	0	\N	33.2999992	2.19000006	2656	10
0.649999976	19.7000008	\N	13.3000002	10.1999998	2658	10
2.0999999	59.5	\N	7.4000001	8.5	2659	10
2.5	7	\N	23	5	2661	10
0.100000001	17	\N	0.200000003	44.5	2663	10
0.00400000019	0.800000012	\N	0.00999999978	2	2664	10
0	2.02999997	\N	14.6999998	3.25	2665	10
0.100000001	2.4000001	\N	2.04999995	3.1500001	2666	10
0.670000017	17.7000008	\N	11.1000004	10.3000002	2668	10
0	28.8999996	\N	5.4000001	11.6000004	2669	10
0	30.8999996	\N	3.0999999	10.8000002	2670	10
0	0	\N	0	0	2671	10
1.19000006	4.13999987	\N	2.52999997	1.80999994	2672	10
0	0	\N	0	0	2673	10
0	0	\N	0	0	2674	10
0	0	\N	0	0	2675	10
0	0	\N	0	0	2676	10
53.2000008	2.63000011	\N	14	14.5	2677	10
25.8999996	39.2999992	\N	7.5	13.3000002	2679	10
26.2000008	48.2999992	\N	2.1099999	11.3999996	2680	10
25.2999992	38.7000008	\N	3.25999999	12.1000004	2681	10
53.0999985	27.5	\N	1.22000003	3.86999989	2682	10
41.9000015	13	\N	17.7999992	12.3999996	2683	10
3.9000001	61.5	\N	5.8499999	11.3999996	2684	10
10.5	33.7000008	\N	22.2999992	17.7999992	2685	10
34.9000015	19.1000004	\N	12.8999996	14.1000004	2687	10
33.9000015	31.6000004	\N	13	5.96999979	2688	10
26.2999992	48.5999985	\N	8.35999966	7.61000013	2689	10
21.6000004	50.5	\N	8.68999958	6.09000015	2690	10
14.8000002	13.6999998	\N	43.0999985	19.7000008	2691	10
38	11.8999996	\N	14.6000004	19.7999992	2692	10
0	2.41000009	\N	0	0.0500000007	2693	10
28	40.5	\N	6.69999981	10.8000002	2696	10
24.6000004	33.7999992	\N	6.40999985	27.1000004	2697	10
26	37.5999985	\N	9.89999962	12.1000004	2698	10
22.7000008	44.4000015	\N	3.25	9.68000031	2700	10
0	14.3999996	\N	0	0.0299999993	2701	10
2.54999995	3.63000011	\N	0.600000024	3.21000004	2703	10
3.19000006	2.0999999	\N	0.519999981	2.61999989	2704	10
4.30000019	3.48000002	\N	0.629999995	3.63000011	2705	10
7.5	13	\N	0.699999988	7.5	2706	10
7.4000001	5.30000019	\N	0.839999974	3.53999996	2707	10
3.47000003	2.54999995	\N	0.469999999	3.22000003	2708	10
14.1000004	6.5999999	\N	5.86000013	3.30999994	2709	10
7	0.970000029	\N	0	4	2710	10
14	10.5	\N	1.67999995	5.55999994	2711	10
5.69999981	4.17999983	\N	0.810000002	3.54999995	2712	10
6.19999981	4.0999999	\N	0	3.79999995	2713	10
3.5	3.9000001	\N	1.10000002	3.93000007	2714	10
2.79999995	0.870000005	\N	0.519999981	2.13000011	2715	10
29.7000008	16.7999992	\N	5.34000015	29	2717	10
29.7999992	22.2000008	\N	6.03000021	19.8999996	2718	10
37.7000008	10.1000004	\N	4.07000017	23	2719	10
40.2999992	20.2999992	\N	7.03999996	12.6999998	2720	10
42.5	26.3999996	\N	4.28000021	9	2721	10
42.5999985	21.5	\N	15.1999998	4.88000011	2722	10
40.2999992	20.3999996	\N	12.8000002	10.6000004	2723	10
37	26.8999996	\N	7.42999983	9.10999966	2724	10
40.0999985	23	\N	7.19999981	11.5	2725	10
45.7000008	23	\N	5.90999985	6.73000002	2726	10
40	12.6999998	\N	1.79999995	23	2727	10
0.5	6.25	\N	0.0299999993	0.540000021	2728	10
3.5999999	20.2999992	\N	7.71999979	57.5	2729	10
41.4000015	5.69999981	\N	2.50999999	14.1000004	2730	10
34.4000015	13.8000002	\N	2.02999997	15.8999996	2731	10
29.2999992	23.6000004	\N	1.07000005	10.3000002	2732	10
36.2999992	10.5	\N	1.63	31.5	2733	10
28	22.6000004	\N	1.33000004	17.2000008	2734	10
34.7999992	24.2000008	\N	2.6500001	8.38000011	2735	10
33.2000008	25.6000004	\N	1.13	9.51000023	2736	10
31	28.2999992	\N	2.63000011	10.1000004	2737	10
35	18.7999992	\N	3.53999996	16.5	2738	10
44.5999985	15.6999998	\N	1.33000004	7.40999985	2739	10
36	18.7999992	\N	2.47000003	13.6999998	2740	10
30.6000004	21.5	\N	2.29999995	16.6000004	2741	10
41.7999992	18.5	\N	2.77999997	7.21999979	2742	10
49.5	6.28000021	\N	1.52999997	12.3000002	2743	10
0	5.26000023	\N	0.140000001	0	2744	10
1.17999995	11.1000004	\N	2.75	6.32000017	2745	10
0	10.3999996	\N	2.45000005	6.78999996	2746	10
42	23.6000004	\N	4.3499999	15.3999996	2749	10
21	28.1000004	\N	20.8999996	13.8999996	2752	10
21.5	45.7999992	\N	6.07000017	15.6999998	2753	10
0	0	\N	0.100000001	86.9000015	2755	10
0	0	\N	0	0.100000001	2760	10
5.4000001	18.1000004	\N	5.30999994	10.6999998	2761	10
0	18.3999996	\N	0	0	2763	10
0	15	\N	0	0.340000004	2764	10
0	13.6999998	\N	0	0	2765	10
15	62	\N	0	0	2766	10
11.3000002	52.5	\N	4.19999981	21.8999996	2767	10
9.06999969	37.7000008	\N	5.17000008	17.5	2768	10
0	8	\N	83	0	2771	10
2.48000002	55	\N	25.2999992	10.8999996	2772	11
2.1400001	56.2999992	\N	23.2000008	11.6000004	2773	11
0	9.5	\N	0	0	2774	11
0	5.80000019	\N	0	0	2775	11
0.899999976	11.6000004	\N	2.82999992	2.1400001	2776	11
1.5	7.69999981	\N	3	1.75	2777	11
0.949999988	12.1999998	\N	2.9000001	2.57999992	2778	11
0.529999971	12.6000004	\N	2.68000007	2.25999999	2779	11
1.10000002	12.6000004	\N	2.77999997	2.23000002	2780	11
0.600000024	12.6999998	\N	2.8900001	1.89999998	2781	11
1.07000005	12.6000004	\N	2.77999997	2.25	2782	11
0.50999999	7.92999983	\N	2.71000004	1.89999998	2783	11
0	8.60000038	\N	3.53999996	1.44000006	2784	11
0.5	8.10000038	\N	3.23000002	1.65999997	2785	11
2.5999999	3.79999995	\N	0	0.899999976	2786	11
1.75	6.44999981	\N	0.800000012	1.29999995	2787	11
2.0999999	6.9000001	\N	0.699999988	1.20000005	2788	11
1.89999998	7.80000019	\N	0.600000024	1.79999995	2789	11
2.5999999	8.10000038	\N	3.5	2.0999999	2790	11
2.4000001	9.60000038	\N	3.5	2.29999995	2791	11
1.39999998	5.88000011	\N	0.910000026	1	2792	11
2.5	7.19999981	\N	1.79999995	1.5	2793	11
2.11999989	8.75	\N	1.94000006	2.56999993	2794	11
3.29999995	5.9000001	\N	1.60000002	3.5999999	2795	11
2.45000005	6.76999998	\N	1.30999994	2.79999995	2796	11
1.89999998	8.94999981	\N	2.9000001	2.5	2797	11
1.57000005	9.02000046	\N	1.98000002	2.81999993	2798	11
0.600000024	13.6000004	\N	2.5999999	3.20000005	2801	11
1.70000005	12.6000004	\N	3.0999999	3.43000007	2802	11
0.819999993	13.8999996	\N	2.9000001	3.20000005	2803	11
1.79999995	88.3000031	\N	1.70000005	5.0999999	2804	11
4.30000019	81.0999985	\N	2	10	2805	11
2.20000005	85	\N	1.89999998	8.5	2807	11
3.29999995	73.9000015	95	2.5	7.61999989	1115	3
4	28.2000008	55	0.689999998	3.45000005	752	3
1.79999995	19.7000008	35	0.340000004	3.79999995	753	3
3.79999995	24.3999996	60	0.439999998	2.25999999	754	3
2.79999995	18.7999992	35	1.91999996	4.0999999	756	3
1.29999995	13.5	70	0.310000002	1.38	757	3
1.60000002	33.2000008	60	0.639999986	5.19000006	758	3
0.800000012	14.3999996	30	0.100000001	0	766	3
1.79999995	34.4000015	70	2.4000001	5.5999999	767	3
2	33.7999992	70	2.04999995	5.01000023	768	3
1.89999998	34.0999985	70	2.23000002	5.30999994	769	3
5.9000001	69.1999969	35	0.939999998	11.1000004	780	3
4.5	70.5999985	55	3	7.96999979	781	3
5.69999981	67.1999969	70	3.70000005	8.10000038	784	3
10.6000004	55.7000008	40	6.9000001	16.8999996	785	3
9.10000038	68.5999985	60	1.15999997	9.90999985	787	3
7	58.0999985	35	6.07000017	13.1999998	789	3
6.69999981	58.5999985	35	7.01999998	13.5	790	3
3.36999989	71.5999985	60	1.25	10.8999996	794	3
3.20000005	74	70	1.79999995	7.88000011	796	3
4.32999992	72.6999969	60	1.45000005	12	797	3
1.60000002	84.6999969	30	0.140000001	0	806	3
2.20000005	35	70	1.41999996	4.65999985	807	3
1.89999998	37	70	2.5999999	6.19999981	808	3
7.30000019	40.7999992	65	3.70000005	10.1999998	818	3
6.21000004	44.4000015	45	3.27999997	8.30000019	822	3
3	51.2000008	70	7.30000019	8.19999981	839	3
4.0999999	75	80	12	7.75	848	3
2	58.9000015	10	24.1000004	8.81000042	864	3
2.31999993	40.4000015	70	20	6.6500001	867	3
5.0999999	39.5999985	70	25.7999992	7.38000011	868	3
4.9000001	43.2000008	70	23.2999992	7.0999999	869	3
3.70000005	35.9000015	15	29.1000004	7.61999989	870	3
5.30000019	49.2999992	60	21.5	8.48999977	871	3
2.52999997	54.2000008	60	10.8999996	8.52000046	872	3
2.72000003	52	60	13.5	8.51000023	873	3
2.88000011	48.2999992	70	14.6000004	8.15999985	877	3
2.17000008	53.2000008	70	11.6000004	7.46999979	878	3
3.79999995	50.5	70	12.1000004	6.9000001	879	3
1.5	49.2000008	70	8.40999985	6.21999979	880	3
2.1400001	53.2000008	70	11.6999998	8.11999989	881	3
0	46	70	19.1000004	11.3000002	882	3
3	49.2000008	70	14.6999998	9.81000042	883	3
1.35000002	53.2999992	70	12.3000002	7.19999981	884	3
1.10000002	51.5999985	70	14	8	885	3
1.70000005	11.8999996	40	1.51999998	2.49000001	888	3
4.82999992	80.4000015	60	2.30999994	7.94999981	889	3
6.03000021	67.9000015	65	12.3000002	7.4000001	893	3
3.48000002	83.1999969	70	0.870000005	7.4000001	894	3
3.3599999	82.8000031	70	1.04999995	8.14000034	901	3
5.0999999	68.5	15	14.1999998	7.44000006	902	3
5.30000019	67.1999969	15	14.8000002	7.32999992	903	3
3.3599999	78.5999985	60	1.64999998	11.3999996	905	3
1.89999998	88	70	0.600000024	4.4000001	914	3
8.68000031	59.7000008	65	16.7000008	8.88000011	915	3
7.42000008	63.2000008	65	16.7000008	8.56999969	916	3
8	69.5999985	65	5	9	917	3
3.82999992	68.4000015	65	17.2999992	5.67000008	918	3
5.92999983	63.4000015	65	18.2999992	7.80000019	919	3
5.69999981	61.5999985	65	11	10.6999998	920	3
3.01999998	84.6999969	70	0.629999995	5.76999998	923	3
8.06999969	67.9000015	15	6.30000019	10.3000002	924	3
11.3999996	68.5	65	4.82999992	10.6000004	925	3
2.29999995	86.1999969	60	2.3499999	5.71000004	926	3
2.4000001	86.1999969	60	1.46000004	6.32000017	929	3
8.14999962	65.5	65	6.28999996	9.39999962	932	3
5.28000021	68.8000031	65	13.1000004	6.82000017	933	3
10.6000004	58	40	7.69999981	11	934	3
8.40999985	62.7000008	65	11.3000002	9.14999962	935	3
4.36000013	63.9000015	15	17.2999992	7.75	942	3
2.02999997	61.2000008	70	24.7000008	7.42000008	946	3
2.80999994	69.6999969	70	15.1000004	6.76999998	947	3
0.75	72.5999985	70	14.1999998	9.63000011	948	3
3.5	61.9000015	70	19.7999992	10.8000002	949	3
6	61.4000015	70	15.8000002	10.8000002	950	3
8.39999962	69	70	11	7	951	3
3	75.3000031	70	7.19999981	4.69000006	952	3
4	74.8000031	70	11.8000002	7.13000011	954	3
2.83999991	59.7999992	70	27.5	6.94000006	955	3
2.29999995	72.6999969	70	13.1999998	7.73000002	956	3
2.6500001	63.2999992	70	24.1000004	6.61999989	957	3
2.91000009	71.0999985	70	16	7.19000006	958	3
2.20000005	73.9000015	70	11.5	8.25	959	3
2.5	80.0999985	70	8.80000019	5.63000011	960	3
5.17000008	64.1999969	70	18.1000004	7.67999983	961	3
6.32999992	66.3000031	70	16	7.69000006	962	3
2.71000004	61.7000008	70	26.8999996	6.42999983	963	3
3.51999998	69.1999969	70	9.10999966	4.42999983	964	3
2.08999991	61.9000015	70	25	6.92999983	965	3
3	75.6999969	70	7.11999989	3.30999994	966	3
2.79999995	69.6999969	70	16.6000004	6.5	967	3
5.4000001	65.8000031	70	17.5	7.5999999	968	3
1.99000001	64.8000031	70	22.7000008	6.4000001	969	3
3.19000006	61	70	25.2999992	6.63999987	970	3
2.41000009	60.9000015	70	22.7999992	7.38999987	971	3
3.24000001	60.2000008	70	25.7999992	6.6500001	972	3
3.00999999	63.7000008	70	23.5	6.84000015	973	3
2.74000001	67.5999985	70	19.2999992	5.92999983	974	3
3.3499999	63.9000015	70	23.7000008	6.44999981	975	3
2	59.9000015	15	28	7	976	3
3.61999989	56	70	30.7000008	7.42000008	977	3
2.6500001	66.5	15	20.1000004	7.0999999	978	3
2	76.6999969	10	8	9	985	3
1.37	79.9000015	70	3.76999998	7.98000002	993	3
1.86000001	77.9000015	70	10.6999998	5.65999985	994	3
2.9000001	68.0999985	15	17.2000008	7.92999983	996	3
7.13999987	74.9000015	70	8.27999973	5.42999983	997	3
2.05999994	60.5	70	27.6000004	6.0999999	998	3
1.48000002	77.0999985	70	3.24000001	4.53999996	1000	3
2.26999998	71.3000031	70	14.1999998	4.69999981	1001	3
1	79.3000031	70	1.91999996	4.25	1002	3
11.5	43.7999992	70	18.5	20.7999992	1006	3
8.22000027	57.0999985	70	19.1000004	11	1007	3
12.8000002	59.7000008	70	12.3000002	10.5	1008	3
5	80.4000015	70	8.17000008	4.32999992	1009	3
1	63.7000008	70	26.6000004	3.0999999	1010	3
4.19000006	59.5	70	24.7000008	6.55999994	1011	3
3.80999994	61	70	24.1000004	4.25	1012	3
4.32000017	74.4000015	70	3.13000011	11.1999998	1013	3
7.67000008	58.2999992	70	9.32999992	19	1014	3
3.41000009	60.4000015	70	22.2999992	9.22999954	1015	3
3.0999999	62.0999985	70	23	6.96000004	1016	3
3.36999989	46	70	32.2000008	13.8000002	1017	3
3.1400001	59	70	23.8999996	10.5	1018	3
3.67000008	73.0999985	70	9.32999992	6.53000021	1019	3
3.99000001	54.7999992	70	22.8999996	13.3000002	1020	3
3.30999994	59.0999985	70	28.7999992	4.63000011	1021	3
3.18000007	45.4000015	70	29.7000008	15.8000002	1022	3
2.69000006	53.7000008	70	26.5	12.3000002	1023	3
1.20000005	26.1000004	15	24.8999996	5.44000006	1026	3
2.20000005	35.4000015	25	19	4.13000011	1027	3
7.07999992	53.7000008	15	24.1000004	4.46000004	1036	3
1.5	56.2999992	70	0.800000012	5.9000001	1037	3
1	54	20	21.2999992	5	1039	3
1	61.4000015	25	7.55000019	5.5	1040	3
0	50	15	24.5	10.3999996	1043	3
0	60.2000008	15	22.1000004	8.55000019	1044	3
2.5	38.7000008	70	15	4.44000006	1050	3
1.79999995	42.7000008	20	20.8999996	5	1051	3
1.39999998	63.2999992	25	13.5	4.30000019	1073	3
1.03999996	58.7000008	70	15.8000002	6.61999989	1074	3
2.44000006	55	15	14.6000004	8.10000038	1076	3
2	39.4000015	70	23.7000008	7.25	1083	3
2.5999999	44.2999992	15	27.3999996	9.10000038	1101	3
2.1500001	60.0999985	15	17.2999992	5.78000021	1102	3
10.1999998	57.9000015	40	6.51000023	13.3000002	1105	3
2.5	74	35	1	9.11999989	1110	3
0.800000012	89.1999969	70	0.25	0.430000007	1114	3
2.54999995	78.0999985	70	2.0999999	6.23000002	1120	3
10.8000002	47	35	6.69000006	22.3999996	1123	3
10	22.8999996	25	21.3999996	35.7999992	1124	3
1.87	44.5999985	60	7.01000023	7.71000004	1126	3
3.29999995	69.0999985	60	6.5	9.02999973	1127	3
2.20000005	44.2000008	60	3.45000005	7.05000019	1145	3
2.5	55.2999992	60	7.0999999	7.75	1147	3
0.75	4.30000019	60	0.170000002	0.579999983	663	2
4	3.67000008	10	13.8000002	1.61000001	309	2
1.72000003	1.88	15	0.230000004	2.33999991	312	2
2.13000011	2.04999995	15	0.310000002	1.76999998	315	2
0.600000024	2.03999996	15	0.109999999	0.639999986	316	2
2.23000002	2.29999995	15	0.200000003	1.13999999	321	2
0.5	3.5	75	0.100000001	1	327	2
1.10000002	1.24000001	15	0.100000001	0.75999999	328	2
1.20000005	2.25999999	10	0.25999999	0.860000014	329	2
5.4000001	5.01999998	20	0.180000007	3.0999999	330	2
2.70000005	2.3900001	20	0.140000001	1.12	331	2
1	1.33000004	15	0.360000014	2.61999989	334	2
2.9000001	1.67999995	15	0.479999989	3.95000005	335	2
1.95000005	2.4000001	15	0.209999993	2.03999996	344	2
1.82000005	2.6400001	15	0.370000005	2.08999991	345	2
1.89999998	3.0999999	15	0	0.899999976	350	2
4.23000002	2.29999995	15	0.779999971	2.27999997	356	2
3.3499999	0.100000001	15	0.540000021	3.16000009	357	2
2.6500001	17	70	1.19000006	3.3599999	358	2
1.79999995	1.60000002	15	0.649999976	1.88999999	359	2
2.4000001	1.5	15	0.360000014	3.05999994	360	2
1.10000002	4	10	0.200000003	1.20000005	362	2
1.35000002	5.98000002	65	0.129999995	0.75	367	2
1.64999998	7.69999981	15	0.319999993	1.87	371	2
1.70000005	2.45000005	15	0.300000012	2	372	2
1.92999995	3.02999997	15	0.430000007	3.13000011	373	2
1.70000005	2.45000005	15	0.400000006	2.29999995	374	2
1.29999995	3	10	0.400000006	0.800000012	381	2
4.69999981	10.1000004	90	0.400000006	1.53999996	383	2
3.29999995	15.3000002	30	0.270000011	3.21000004	386	2
2.76999998	1.55999994	15	0.439999998	2.78999996	392	2
0.699999988	1.5	15	0.189999998	0.579999983	395	2
1.97000003	0.829999983	15	0.25	1.79999995	399	2
7.53999996	8.09000015	20	0.430000007	2.07999992	402	2
2.79999995	19.7999992	70	0.779999971	3.27999997	403	2
5.80000019	4.1500001	30	0.150000006	2.6500001	407	2
1.66999996	3.23000002	20	0.0890000015	1.00999999	410	2
3.61999989	8.47999954	10	0.0780000016	2.4000001	411	2
2.1500001	2.02999997	15	0.270000011	2.46000004	415	2
2.3499999	2.20000005	15	0.400000006	2.93000007	416	2
1.79999995	2.5	15	0.300000012	2.5	417	2
2.29999995	29.6000004	65	0.389999986	1.27999997	421	2
8.30000019	0.99000001	20	0.280000001	2.52999997	422	2
1.79999995	0.810000002	15	0.319999993	2.52999997	423	2
4.30000019	4.17000008	20	0.280000001	1.23000002	424	2
1.5	1.10000002	15	0.779999971	2.0999999	427	2
2.4000001	2.55999994	15	0.289999992	1.87	430	2
2	1.60000002	15	0.460000008	1.60000002	433	2
2.31999993	4.03000021	20	0.5	2.52999997	434	2
2.9000001	5.19000006	75	0.280000001	0.930000007	446	2
3.0999999	12.3000002	30	0.170000002	2.74000001	447	2
1.26999998	1.88999999	10	0.280000001	1.07000005	448	2
2.4000001	11.6999998	70	1.5	3.3599999	449	2
3.0999999	18.3999996	70	1.67999995	2.81999993	454	2
3	6.5	20	0.200000003	1.5	455	2
4.19999981	17.1000004	10	0.529999971	4.4000001	456	2
1.5	1.42999995	15	0.270000011	1.78999996	458	2
2.5	0.699999988	15	0.370000005	2.23000002	461	2
2.5	4.25	30	0.150000006	1.38	462	2
2	4.5	75	0.0700000003	0.810000002	468	2
2.20000005	3	15	0.469999999	2.17000008	469	2
2	0.800000012	15	0	1.13	470	2
2.70000005	1.04999995	15	0.219999999	1.61000001	472	2
1.79999995	2.79999995	15	0.330000013	2.99000001	474	2
3.5999999	13.3999996	90	0.300000012	1.32000005	475	2
3.20000005	2.30999994	20	0	1.79999995	478	2
2.5999999	3.01999998	20	0	1.20000005	479	2
1.79999995	2.68000007	10	0	1.20000005	482	2
2.38000011	7.53999996	10	0.400000006	1.39999998	483	2
3	2.3599999	15	0.109999999	3.0999999	485	2
2.0999999	12.3000002	15	0.219999999	1.55999994	488	2
1.04999995	2.79999995	10	0.209999993	0.879999995	494	2
3.29999995	4.19999981	30	2.9000001	1.70000005	497	2
2.3900001	2.75	15	0.379999995	2.5	499	2
2.5999999	8.52999973	10	0.200000003	2.04999995	500	2
3.61999989	17	10	0.289999992	3.73000002	503	2
2.20000005	2.86999989	10	0.600000024	0.879999995	509	2
12.3000002	43.2999992	10	2.99000001	14.1999998	514	2
11.5	63.9000015	15	0.99000001	9.57999992	515	2
5.63000011	13.3999996	10	11.6999998	4.26999998	516	2
0.899999976	87.8000031	80	0.0199999996	0.189999998	517	2
4.57000017	51.0999985	70	34.2999992	5.67000008	520	2
4.51000023	49.7999992	70	37.5999985	5.61999989	544	2
5.19000006	62.0999985	70	19.7999992	6.57999992	545	2
2.86999989	18.2999992	50	0.150000006	1.50999999	554	2
2.9000001	12.1999998	50	0.150000006	1.69000006	555	2
4.5	12.1000004	50	2	1.10000002	556	2
2.29999995	28.8999996	65	0.180000007	0.790000021	559	2
4.0999999	23.7999992	65	0.170000002	1.52999997	562	2
3.9000001	23.6000004	65	0.140000001	1.49000001	563	2
8.19999981	15	10	0.5	10.6000004	585	2
18.8999996	21.5	15	9.73999977	36.2000008	589	2
15.3999996	44.9000015	10	0.800000012	27.7000008	600	2
1.89999998	19.6000004	65	0.25	0.980000019	606	2
1.20000005	3.0999999	20	0.699999988	0.839999974	609	2
2.63000011	14.3000002	35	0.300000012	0.850000024	611	2
4.25	6.63999987	15	0.949999988	1.33000004	616	2
4.03000021	4.82999992	15	0.589999974	0.800000012	617	2
3.5	8.43999958	50	0.949999988	1.20000005	618	2
0.930000007	6.57000017	10	0.200000003	0.730000019	621	2
1.89999998	9.89999962	60	0.280000001	0.579999983	626	2
0.449999988	7.38000011	75	0.129999995	0.620000005	627	2
1.25	6.34000015	25	0.200000003	0.629999995	630	2
2.27999997	10.8999996	25	0.100000001	0.810000002	631	2
2.47000003	1.47000003	15	0.230000004	0.779999971	635	2
4.44999981	6	35	0.310000002	0.50999999	638	2
3.70000005	14.3000002	50	0	0.5	639	2
2.79999995	2.01999998	20	0.200000003	0.660000026	640	2
1.5	8.82999992	25	0.289999992	0.660000026	647	2
10.6000004	5.4000001	20	0.300000012	1.41999996	652	2
1.10000002	7.30999994	25	0.100000001	0.689999998	658	2
1.60000002	6.19999981	25	0.140000001	0.769999981	659	2
1	8.61999989	25	0.0399999991	0.75999999	661	2
5.15999985	7.69999981	15	0.379999995	1.11000001	664	2
2	29.2000008	15	0.0500000007	0.379999995	666	2
2	16	70	0.0689999983	0	668	2
1.39999998	14.8999996	70	0.479999989	0.319999993	669	2
1.61000001	19.5	70	0.200000003	0.319999993	670	2
1.67999995	12.8000002	70	0.340000004	0.430000007	671	2
2.0999999	17.3999996	10	0	0	674	2
1.25999999	18.2999992	10	0	0	675	2
1.89999998	14.3999996	10	0	0	676	2
1.17999995	14.5	10	0.0610000007	0	677	2
9.72000027	53.7000008	35	0.870000005	2.99000001	691	2
7.3499999	55.7000008	25	0.629999995	2.81999993	692	2
9.89999962	78.4000015	65	1.80999994	3.8900001	694	2
6.69999981	6.88000011	15	67.3000031	13.3000002	702	2
9	7.1500001	15	33.5	3.5999999	703	2
14	8.56000042	15	66.3000031	6.61999989	704	2
6.4000001	5.28000021	15	66.6999969	14.8000002	705	2
9.31999969	15.8999996	15	49.5	18.8999996	706	2
9	6.21999979	15	33.5	3.32999992	710	2
8.39999962	27.1000004	65	39.5999985	16.6000004	712	2
3.8499999	26.7000008	15	49.5	15.1999998	713	2
5.5999999	11.3000002	15	64.3000031	14.3000002	716	2
10	6.30999994	15	65	13.6999998	718	2
8.32999992	5.26999998	15	72.5999985	9.56999969	719	2
8.60000038	8.35000038	15	72.9000015	7.13999987	720	2
9.5	9.94999981	15	70.1999969	7.03999996	732	2
10.1000004	18.6000004	15	47.4000015	18.3999996	733	2
3	5	15	73	10.1999998	735	2
7.5	30.3999996	65	37.9000015	13.8000002	738	2
0	81.3000031	60	0	0.519999981	2419	7
0	99.6999969	70	0	0	2420	7
0	97.0999985	70	0	0.119999997	2421	7
0.370000005	98.5999985	70	0.330000013	0.100000001	2423	7
0	74.6999969	70	0.100000001	0	2425	7
0	98.6999969	70	0	0.810000002	2426	7
0	99.8000031	20	0	0	2427	7
1.92999995	59.5	70	28.1000004	6.13999987	2430	7
0.600000024	66.4000015	70	24.1000004	3.70000005	2431	7
3	60.2000008	15	23.7999992	3.88000011	2432	7
3.51999998	48.7000008	15	35.9000015	8.43000031	2438	7
2	54.2000008	70	34.5999985	5.75	2439	7
2.43000007	48	15	39.0999985	7.63999987	2440	7
10.1999998	34.0999985	70	42.2999992	8.47999954	2441	7
9.40999985	42.2999992	15	38.4000015	7.71999979	2448	7
4.92000008	55.0999985	70	29.3999996	6.5	2457	7
1.98000002	78.0999985	70	0.449999988	0.689999998	2470	7
2.11999989	81.5999985	70	0.400000006	0.579999983	2475	7
1.60000002	41.2000008	70	0.209999993	0.479999989	2482	7
0	25.7000008	85	3.07999992	3.76999998	1972	5
0	4.98999977	30	0.109999999	3.25999999	1899	5
0	4.98999977	30	0.189999998	3.27999997	1900	5
0	4.80000019	40	1.54999995	3.26999998	1901	5
2.22000003	11.8000002	70	1.08000004	4.17000008	1969	5
0.300000012	21.8999996	85	1.89999998	4.28999996	2004	5
0	4.19999981	15	31.6000004	10.6999998	2120	5
0	3.44000006	10	29.7999992	7.55000019	2131	5
1.30999994	4.13000011	75	1.55999994	0.670000017	42	1
2.3499999	3.95000005	15	3.54999995	2.07999992	4	1
0.400000006	2.5999999	10	0.800000012	3.08999991	16	1
1.27999997	4.46000004	15	1.50999999	0.790000021	20	1
0.560000002	3.8599999	10	1	1.29999995	21	1
0.519999981	4.09000015	10	3.06999993	0.810000002	24	1
0.879999995	6.26999998	10	0.99000001	0.74000001	26	1
0.280000001	4.84000015	15	0.409999996	0.629999995	33	1
0.50999999	4.57999992	10	0.439999998	0.99000001	34	1
0.280000001	5.13999987	15	1.30999994	0.600000024	36	1
1.29999995	5.86999989	10	0.800000012	1.10000002	37	1
0.639999986	5.78999996	10	0.970000029	0.75999999	39	1
0.819999993	4.36999989	10	1.78999996	0.649999976	40	1
0	0.5	10	0.129999995	0.600000024	43	1
0.319999993	4.21000004	10	0.180000007	0.629999995	45	1
0.25999999	3.86999989	10	0.25	0.75	46	1
0.75999999	5.61000013	75	1.24000001	0.790000021	48	1
1.60000002	6.25	25	1.98000002	2.68000007	56	1
1	4.69999981	15	10.3999996	4.5999999	58	1
0	0.600000024	10	3.20000005	15.6999998	63	1
0.800000012	0.5	35	5	14.8999996	67	1
1.04999995	7.28000021	10	5.82999992	18.8999996	70	1
1.10000002	3.1500001	40	6.9000001	10.6000004	72	1
0	5.5	10	6.5	9	77	1
3.54999995	9.40999985	35	5.76999998	8.06000042	90	1
2.71000004	2.79999995	15	8.06000042	5.05999994	91	1
4	8.60000038	35	6.30000019	8.30000019	96	1
3.8599999	10.1000004	35	7.86000013	10.5	97	1
2.0999999	2	10	9.67000008	5.84000015	98	1
1.57000005	4.11999989	5	5.84000015	9.13000011	102	1
1.30999994	3.5999999	10	5.28000021	5.01000023	108	1
0.529999971	8.85999966	10	2.24000001	10.3000002	109	1
0.730000019	11	15	7.6500001	8.35999966	113	1
2.4000001	0.889999986	10	2.29999995	9.31000042	115	1
0	2.20000005	10	2.79999995	11.5	117	1
0	5.4000001	35	3.5999999	9.19999981	118	1
1	1.14999998	10	3.25	9.15999985	119	1
1	1.47000003	15	5.5	11.8000002	121	1
0.699999988	22.6000004	55	7.5999999	7.75	132	1
5.5	8.82999992	10	0.400000006	4.67000008	135	1
3.5999999	3.5	15	1.76999998	2.5999999	137	1
2.94000006	1.78999996	10	1.21000004	1.88999999	140	1
3.70000005	0.829999983	15	2.25	0.699999988	143	1
2.02999997	4.32000017	20	3.1500001	1.22000003	144	1
2.3499999	5.21999979	20	8.68000031	1.95000005	146	1
1.29999995	5.80000019	15	6.5	3	149	1
2.5999999	10.6000004	10	10.3999996	1.04999995	151	1
4.5	0	15	6.5999999	1.38	154	1
2.9000001	11.3999996	10	3.6400001	2.5	155	1
7.69999981	18.7000008	35	14.3999996	8.25	157	1
1.40999997	11.1000004	10	2.82999992	4.21999979	161	1
0.819999993	15.5	70	5.05999994	4.05999994	180	1
1.14999998	12.5	70	6.07000017	5.46999979	181	1
0.699999988	30.8999996	70	5.15999985	5.6500001	182	1
1.70000005	13.1000004	10	2.45000005	2.88000011	183	1
1.66999996	29.6000004	60	7.63999987	8.93000031	198	1
1.32000005	20.7000008	15	5.01999998	4.82999992	202	1
2.33999991	28	60	6.69000006	10.3000002	204	1
2.16000009	27.2000008	60	8.02999973	10.3000002	207	1
2.03999996	26.5	60	10.6999998	10.3999996	210	1
0.5	24.6000004	60	6.6500001	10.3000002	211	1
2.30999994	26.7000008	60	8.77999973	10.1000004	212	1
2.3599999	26.8999996	60	9.96000004	10.6999998	213	1
2.80999994	25.7000008	60	8	8.47999954	214	1
2.4000001	31.6000004	10	6.0999999	7.80000019	215	1
2.30999994	26.7000008	60	9.85000038	11.1000004	216	1
2.26999998	26.7999992	60	8.21000004	10.1999998	217	1
2.29999995	25.7000008	10	6.65999985	9.53999996	220	1
1.20000005	16.6000004	15	6.30000019	8.30000019	223	1
2.48000002	21.6000004	15	14.3000002	5.76000023	224	1
2.9000001	19.2999992	10	12.8000002	5.17000008	227	1
3	24.2000008	15	14.5	8.25	229	1
2.20000005	27.7000008	10	10.6000004	11.1999998	231	1
1.20000005	15.8000002	15	8	7.69999981	232	1
3.4000001	18.5	15	7.69999981	5.5	234	1
2.20000005	23.2999992	60	8.77999973	10.8000002	240	1
1.85000002	26.6000004	60	7.01000023	9.39999962	241	1
2.31999993	27.5	60	6.67999983	9.94999981	242	1
2.4000001	27.5	60	12.6999998	11.8000002	243	1
1.60000002	25.7000008	60	9.43000031	12.1999998	244	1
1.77999997	32	10	11.3000002	10.3000002	255	1
1.39999998	27.2000008	10	8.35000038	14.1999998	256	1
1.75	31.3999996	10	5.76000023	9.63000011	257	1
2.05999994	36.5999985	10	9.09000015	10.1000004	258	1
3.93000007	25	70	6.03000021	8.86999989	261	1
1.88	29	15	10.3000002	10	266	1
1.73000002	31.6000004	10	13.8999996	11	272	1
1.77999997	32.2000008	10	13.1000004	7.8499999	273	1
1.73000002	30.6000004	10	14.1999998	10.6999998	274	1
1.61000001	30	35	11.1000004	13.3999996	275	1
4.94999981	24.6000004	10	19.8999996	13.3000002	285	1
1.64999998	24.5	10	18.8999996	6.11999989	292	1
1.52999997	20.1000004	70	14.6000004	7.9000001	293	1
0.589999974	8.22000027	10	11.5	12.1999998	296	1
0.409999996	9.78999996	10	13.5	18.7000008	299	1
2	22	70	14.5	8.92000008	308	1
2.32999992	72.6999969	70	12.1999998	7.98999977	2806	11
2.29999995	12.3999996	65	0	0.600000024	2799	11
2.06999993	11.8999996	65	0	0.289999992	2800	11
0	0	70	100	0	2539	9
0	0	15	100	0	2530	9
0	0	10	100	0	2533	9
0	0	15	100	0	2534	9
0	0	15	100	0	2541	9
0	0	15	100	0	2542	9
0	0	15	100	0	2548	9
79	6.6500001	70	0.920000017	8.35999966	2751	10
1.14999998	21.3999996	55	0.189999998	1.26999998	2581	10
0.689999998	3.6400001	5	27.5	0.479999989	2587	10
0.340000004	4.55999994	5	52.4000015	0.540000021	2588	10
2	3.29999995	35	22.7999992	1.65999997	2591	10
3.5	6.80000019	10	19.2000008	2.19000006	2602	10
2.17000008	7.69000006	10	4.17999983	1.51999998	2609	10
2.28999996	7.26999998	10	4.80999994	4.21999979	2611	10
2.25	6.30000019	10	6.26000023	3.20000005	2622	10
2.08999991	7.40999985	10	2.71000004	1.16999996	2627	10
2.3499999	7.78000021	10	2.68000007	1.78999996	2628	10
3.33999991	7.5	10	7.32000017	1.40999997	2629	10
2.5	6.5999999	15	35.4000015	3.94000006	2630	10
1.39999998	4.23999977	70	9.52999973	3.1099999	2632	10
0.800000012	5.13999987	10	7.11000013	1.08000004	2634	10
2.11999989	7.57000017	10	2.9000001	1.53999996	2637	10
2.41000009	8.09000015	10	14.1999998	3.94000006	2638	10
4.1500001	8.57999992	15	27	4.80000019	2639	10
1.89999998	1.29999995	5	0.289999992	1.17999995	2644	10
0	4.32999992	35	11.1999998	6.92000008	2645	10
0	0.620000005	5	0.100000001	0.0399999991	2646	10
4.5	2.20000005	35	9.89999962	6.5999999	2647	10
3.5999999	3.5	5	0.860000014	2.25	2648	10
1.79999995	2.5	5	0.200000003	0.560000002	2650	10
0	0.930000007	5	0	0	2651	10
0.5	25.7999992	5	0	0.689999998	2652	10
1.5	5	15	0.349999994	1.25	2653	10
4.32999992	0.610000014	10	15.1999998	2.08999991	2657	10
1.29999995	66.3000031	10	4.9000001	7.4000001	2660	10
0.579999983	20.7999992	10	11.5	11.3000002	2662	10
4.17000008	3.20000005	60	0.730000019	2.11999989	2667	10
14.1000004	58.2999992	15	4.23999977	9.05000019	2678	10
20.7999992	28.5	15	36.2999992	5.30000019	2686	10
39.7999992	12.5	15	14.8999996	15.6999998	2694	10
2.70000005	3.4000001	15	1.10000002	1.10000002	2695	10
27.2000008	29.3999996	15	17.2999992	12	2699	10
4.69999981	21.2000008	10	0.340000004	5.80999994	2702	10
9.44999981	62.7999992	10	0.769999981	16.7000008	2716	10
1.17999995	10.1000004	30	1.73000002	6.05999994	2747	10
0.629999995	10.1999998	30	2.27999997	6.05999994	2748	10
16.7000008	51	40	6.48000002	15.8000002	2750	10
16.2999992	35.0999985	15	9.5	27.2000008	2754	10
22.5	21.7999992	35	4.5	40.4000015	2756	10
7.1500001	11.8999996	35	1.89999998	8.22999954	2757	10
23.2999992	17.8999996	35	6.36999989	44.5	2758	10
1.89999998	33.2000008	35	0.200000003	1.96000004	2759	10
4.0999999	6.4000001	15	10.8000002	18.5	2762	10
1	51.0999985	60	2.5999999	7.69999981	2769	10
1	44.5999985	60	2.70000005	6.9000001	2770	10
0	6.55000019	70	0	0	2300	6
0	0	10	0	0	2182	6
0.300000012	2.48000002	20	0.239999995	0.449999988	2242	6
0.209999993	7.67000008	25	0.100000001	0.519999981	2247	6
0.449999988	18.7000008	25	0.0390000008	0.370000005	2250	6
0.100000001	7.80000019	25	0.100000001	0.439999998	2254	6
0.230000004	3.38000011	10	0.170000002	0.879999995	2255	6
0.150000006	7.82999992	25	0.0829999968	0.49000001	2256	6
0.400000006	6.0999999	20	0.289999992	0.400000006	2257	6
0.400000006	1.69000006	20	0.0700000003	0.419999987	2258	6
0.449999988	1.35000002	20	0.230000004	0.25	2259	6
0.560000002	3.06999993	10	0.109999999	0.879999995	2260	6
0.400000006	3.22000003	10	0.140000001	0.879999995	2264	6
0.600000024	13.8999996	60	0.150000006	0.170000002	2274	6
0.50999999	13.6000004	65	0.0480000004	0.230000004	2279	6
0	6.17999983	70	0.00910000037	0.0280000009	2309	6
0.000880000007	7.30999994	70	0.0590000004	0.0890000015	2310	6
0	5.15999985	70	0.00999999978	0.0140000004	2316	6
0.569999993	3.4000001	40	18.3999996	1.76999998	2328	6
0	7.80000019	40	1.10000002	0	2334	6
0.699999988	2.75999999	70	0	0	2355	6
0	1.30999994	20	0	0	2366	6
0	2.61999989	40	0	0	2383	6
0.300000012	22.5	10	2.19000006	0	2401	6
0	15.8999996	10	0.0199999996	0	2402	6
0	17.7999992	10	0	0.600000024	2410	6
0.360000014	12.5	10	0	0.460000008	2413	6
0	11.8000002	50	4.92000008	8.31000042	1849	4
0.00139999995	1	10	5.82000017	27.1000004	1152	4
0	0.200000003	15	1.89999998	21	1156	4
0	0	15	3.44000006	29.1000004	1184	4
0	0	15	3.44000006	29.1000004	1185	4
0	0	10	16.8999996	23.7999992	1213	4
0	0	5	15.1999998	25.7000008	1217	4
0	0	5	6.8499999	26.7999992	1218	4
0	0	5	14.5	30.5	1219	4
0	0	5	10.8000002	24.8999996	1220	4
0	0	5	25.6000004	33.5999985	1221	4
0	0	5	5.78000021	26.2999992	1222	4
0	0	5	9.01000023	26.1000004	1223	4
0	0	5	5.44999981	26.1000004	1224	4
0	0	5	7.07999992	27.6000004	1225	4
0	0	5	9.02999973	35.2000008	1226	4
0	0	5	5.44999981	26.1000004	1227	4
0	0	5	5.78000021	26.2999992	1228	4
0	0.0120000001	5	10.6999998	28.2999992	1229	4
0	0	5	5.78000021	26.2999992	1230	4
0	0	10	10.8999996	26.7999992	1248	4
0	0.189999998	5	10.1999998	12.6000004	1256	4
0	1.92999995	5	7.90999985	25	1262	4
0	4.57999992	5	5.80000019	23	1263	4
0	0.25	5	15.1000004	22.7999992	1271	4
0	2.97000003	5	3.61999989	23.7000008	1276	4
0	0	15	7.05000019	21.2999992	1281	4
0	0	15	2.57999992	21.7999992	1304	4
0	0	10	11	20.3999996	1347	4
0	0	10	12.3000002	20.2000008	1355	4
0	0	5	34.5	14.3999996	1361	4
0	0.479999989	5	5.13000011	20	1362	4
0	0.200000003	5	14.1000004	19	1363	4
0	0	5	6.76000023	19.6000004	1364	4
0	0	5	13.6999998	18	1365	4
0	0	5	18.3999996	17.5	1366	4
0	2.29999995	5	18	17.6000004	1367	4
0	0	5	23.1000004	16.8999996	1368	4
0	0.769999981	5	25.2000008	16.2999992	1369	4
0	0	10	5.55000019	21.5	1388	4
0	0.5	10	3.80999994	22.5	1389	4
0	0.49000001	5	8.57999992	10.3999996	1401	4
0	0.209999993	5	5.67999983	16.5	1407	4
0	0.159999996	5	5.44999981	21.7999992	1410	4
0	1.13	10	4.88000011	21.2999992	1413	4
0	2.3499999	5	7.03999996	14.6000004	1423	4
0	0.819999993	5	2.95000005	15.6999998	1427	4
0.5	1.58000004	10	5.88000011	18	1451	4
0.75	1.77999997	15	39.7000008	27.7000008	1470	4
0	1.19000006	10	17.7000008	16.7999992	1483	4
0.280000001	1.82000005	10	21.8999996	12.8000002	1484	4
0.270000011	1.46000004	10	25.8999996	12.6999998	1495	4
0	0	15	25.7999992	15.3000002	1499	4
0	7.42000008	10	30	14	1502	4
0.579999983	5.92999983	10	28.1000004	12.6000004	1510	4
0	3.74000001	10	22.8999996	13.8000002	1516	4
1.10000002	14.1000004	10	10.1000004	9.30000019	1529	4
1.20000005	10.3000002	10	8.92000008	3.54999995	1530	4
0.550000012	1.01999998	5	16.2999992	8.22000027	1546	4
0	1	5	13.1000004	11.3000002	1559	4
0.629999995	3.5	10	5.67999983	17.7000008	1571	4
0.439999998	1.27999997	10	1.73000002	22	1572	4
0.629999995	0.560000002	10	23.6000004	15	1580	4
0	0.200000003	10	27.3999996	12.5	1587	4
0.779999971	16.2999992	10	12.1999998	14	1593	4
0.800000012	9.46000004	5	15.6999998	15.6999998	1597	4
0.270000011	5.9000001	10	8.76000023	19	1598	4
1.70000005	18.3999996	10	13.1999998	13.1000004	1601	4
1.63	4.26999998	5	7.23999977	13.1000004	1602	4
0	3.22000003	10	1.76999998	20.2000008	1777	4
0	0.779999971	10	1.30999994	17	1793	4
0	1.14999998	15	0.839999974	17.8999996	1812	4
0	1.77999997	15	0.540000021	17.2999992	1813	4
0	3.0999999	15	0.699999988	17.5	1814	4
2	5	10	7.9000001	12.5	1831	4
0	2.27999997	10	11	14.8999996	1841	4
1.04999995	1.38	10	11.6000004	20.2000008	1846	4
0	1.05999994	15	11.1999998	24.2999992	1848	4
1.01999998	1.94000006	10	16.2999992	17.7000008	1853	4
0.579999983	1.09000003	35	14.1999998	20.7999992	1854	4
0	1.00999999	15	6.94999981	31.2999992	1861	4
0	0.620000005	15	13.8999996	21.5	1865	4
0	9.23999977	50	9.30000019	6.5999999	1866	4
0.579999983	4.32999992	10	5.92999983	14.6000004	1867	4
0	5.05000019	10	8.60000038	10.8000002	1868	4
0	0.409999996	10	11.1000004	13.1000004	1881	4
0.300000012	2.74000001	10	9.19999981	8.13000011	1890	4
1.69000006	11.1999998	10	7.73000002	4.67000008	1892	4
1.57000005	38.0999985	10	12.6999998	3.24000001	2486	8
0	29.1000004	20	1.76999998	0.140000001	2506	8
\.



--
-- TOC entry 2862 (class 0 OID 17897)
-- Dependencies: 201
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredient (id, quantity, fk_aliment, fk_recipe) FROM stdin;
\.


--
-- TOC entry 2864 (class 0 OID 17904)
-- Dependencies: 203
-- Data for Name: meal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meal (id, date, name, fk_moment) FROM stdin;
\.


--
-- TOC entry 2865 (class 0 OID 17913)
-- Dependencies: 204
-- Data for Name: mealcomponent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mealcomponent (id, quantity, fk_dietcomponent, fk_meal) FROM stdin;
\.


--
-- TOC entry 2867 (class 0 OID 17920)
-- Dependencies: 206
-- Data for Name: moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moment (id, name) FROM stdin;
\.


--
-- TOC entry 2868 (class 0 OID 17926)
-- Dependencies: 207
-- Data for Name: recipe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipe (id) FROM stdin;
\.


--
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 197
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 11, true);


--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 199
-- Name: dietcomponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dietcomponent_id_seq', 2807, true);


--
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 208
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);


--
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 202
-- Name: meal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meal_id_seq', 1, false);


--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 205
-- Name: moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moment_id_seq', 1, false);


-- Completed on 2018-07-27 09:56:21

--
-- PostgreSQL database dump complete
--

