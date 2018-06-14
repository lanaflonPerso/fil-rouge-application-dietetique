const LIST_ALIMENTS = {
    aliment: [
      {
        id: 1,
        name: 'Ananas',
        nameUrl: 'ananas',
        categorie: {id: 1, name : 'Fruits'},
        // tslint:disable-next-line:max-line-length
        visual: 'https://img-3.journaldesfemmes.com/xm8YBwXp2VBkE1oju46O2bgpBkA=/910x607/smart/6c9089cb6e3d4aaf9380a549234d0bf7/ccmcms-jdf/10662303.jpg',
        // tslint:disable-next-line:max-line-length
        description: 'Manger des Ananas, bou diou que c\'est bon ....Emensis itaque difficultatibus multis et nive obrutis callibus plurimis ubi prope Rauracum ventum est ad supercilia fluminis Rheni, resistente multitudine Alamanna pontem suspendere navium conpage Romani vi nimia vetabantur ritu grandinis undique convolantibus telis, et cum id inpossibile videretur, imperator cogitationibus magnis attonitus, quid capesseret ambigebat.Ultima Syriarum est Palaestina per intervalla magna protenta, cultis abundans terris et nitidis et civitates habens quasdam egregias, nullam nulli cedentem sed sibi vicissim velut ad perpendiculum aemulas: Caesaream, quam ad honorem Octaviani principis exaedificavit Herodes, et Eleutheropolim et Neapolim itidemque Ascalonem Gazam aevo superiore exstructas.',
        protein: 201,
        glucid: 202,
        lipid: 203,
        fiber: 204,
        ig: 205
      },
      {
        id: 2,
        name: 'Poivron',
        nameUrl: 'poivron',
        categorie: {id: 2, name : 'Legumes'},
        // tslint:disable-next-line:max-line-length
        visual: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Capsicum_annuum_fruits_IMGP0049.jpg/1200px-Capsicum_annuum_fruits_IMGP0049.jpg',
        // tslint:disable-next-line:max-line-length
        description: 'Manger des Poivrons, bou diou que c\'est bon ....Emensis itaque difficultatibus multis et nive obrutis callibus plurimis ubi prope Rauracum ventum est ad supercilia fluminis Rheni, resistente multitudine Alamanna pontem suspendere navium conpage Romani vi nimia vetabantur ritu grandinis undique convolantibus telis, et cum id inpossibile videretur, imperator cogitationibus magnis attonitus, quid capesseret ambigebat.Ultima Syriarum est Palaestina per intervalla magna protenta, cultis abundans terris et nitidis et civitates habens quasdam egregias, nullam nulli cedentem sed sibi vicissim velut ad perpendiculum aemulas: Caesaream, quam ad honorem Octaviani principis exaedificavit Herodes, et Eleutheropolim et Neapolim itidemque Ascalonem Gazam aevo superiore exstructas.',
        protein: 201,
        glucid: 202,
        lipid: 203,
        fiber: 204,
        ig: 205
      },
      {
        id: 3,
        name: 'Poire',
        nameUrl: 'poire',
        categorie: {id: 1, name : 'Fruits'},
        // tslint:disable-next-line:max-line-length
        visual: 'http://www.sepal.fr/wp-content/uploads/2016/10/Poires-02-copie.jpg',
        // tslint:disable-next-line:max-line-length
        description: 'Manger des Poires, bou diou que c\'est bon ....Emensis itaque difficultatibus multis et nive obrutis callibus plurimis ubi prope Rauracum ventum est ad supercilia fluminis Rheni, resistente multitudine Alamanna pontem suspendere navium conpage Romani vi nimia vetabantur ritu grandinis undique convolantibus telis, et cum id inpossibile videretur, imperator cogitationibus magnis attonitus, quid capesseret ambigebat.Ultima Syriarum est Palaestina per intervalla magna protenta, cultis abundans terris et nitidis et civitates habens quasdam egregias, nullam nulli cedentem sed sibi vicissim velut ad perpendiculum aemulas: Caesaream, quam ad honorem Octaviani principis exaedificavit Herodes, et Eleutheropolim et Neapolim itidemque Ascalonem Gazam aevo superiore exstructas.',
        protein: 201,
        glucid: 202,
        lipid: 203,
        fiber: 204,
        ig: 205
      },
      { id: 4,
        name: 'Saucisse',
        categorie: {id: 3, name : 'Charcuterie',},
        // tslint:disable-next-line:max-line-length
        visual: 'https://images.marmitoncdn.org/pixcontent/bf2efd42-ffbc-4c4d-b7c7-637a1c67adcb/6d8a4455-566c-48ed-8aef-0fe77a8bb89b/manger_une_saucisse_1_398.jpg',
        // tslint:disable-next-line:max-line-length
        description: 'Manger des Saucisses, bou diou que c\'est bon ....Emensis itaque difficultatibus multis et nive obrutis callibus plurimis ubi prope Rauracum ventum est ad supercilia fluminis Rheni, resistente multitudine Alamanna pontem suspendere navium conpage Romani vi nimia vetabantur ritu grandinis undique convolantibus telis, et cum id inpossibile videretur, imperator cogitationibus magnis attonitus, quid capesseret ambigebat.Ultima Syriarum est Palaestina per intervalla magna protenta, cultis abundans terris et nitidis et civitates habens quasdam egregias, nullam nulli cedentem sed sibi vicissim velut ad perpendiculum aemulas: Caesaream, quam ad honorem Octaviani principis exaedificavit Herodes, et Eleutheropolim et Neapolim itidemque Ascalonem Gazam aevo superiore exstructas.',
        protein: 201,
        glucid: 202,
        lipid: 203,
        fiber: 204,
        ig: 205
      },
      {
        id: 5,
        name: 'Frite',
        categorie: {id: 4, name : 'Patatas'},
        // tslint:disable-next-line:max-line-length
        visual: 'http://cache.marieclaire.fr/data/photo/w850_c17/cuisine/41/fritemanioc2.jpg',
        // tslint:disable-next-line:max-line-length
        description: 'Manger des frites, bou diou que c\'est bon ....Emensis itaque difficultatibus multis et nive obrutis callibus plurimis ubi prope Rauracum ventum est ad supercilia fluminis Rheni, resistente multitudine Alamanna pontem suspendere navium conpage Romani vi nimia vetabantur ritu grandinis undique convolantibus telis, et cum id inpossibile videretur, imperator cogitationibus magnis attonitus, quid capesseret ambigebat.Ultima Syriarum est Palaestina per intervalla magna protenta, cultis abundans terris et nitidis et civitates habens quasdam egregias, nullam nulli cedentem sed sibi vicissim velut ad perpendiculum aemulas: Caesaream, quam ad honorem Octaviani principis exaedificavit Herodes, et Eleutheropolim et Neapolim itidemque Ascalonem Gazam aevo superiore exstructas.',
        protein: 201,
        glucid: 202,
        lipid: 203,
        fiber: 204,
        ig: 205
      },
    ]
  };

  export default LIST_ALIMENTS;
