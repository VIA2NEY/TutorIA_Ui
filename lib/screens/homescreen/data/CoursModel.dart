class Cours {
  String? titre;
  List<Chapitre> chapitres;

  Cours(this.titre, this.chapitres);
}

class Chapitre {
  String? titre;
  List<Etape> etapes;

  Chapitre(this.titre, this.etapes);
}

class Etape {
  String? titre;

  Etape(this.titre);
}



List<Cours> list_cours = [

  Cours(
    "Physique chimie",
    [
      Chapitre(
        " Cinématique du point matériel",
        [
          Etape("Introduction"),
          Etape("Cinématique à 1 dimension"),
          Etape("Cinématique à plusieurs dimensions "),
          Etape("Exercices"),
        ],
      ),
      Chapitre(
        "LES ALCANES",
        [
          Etape("Tétravalence du carbone"),
          Etape("Les alcanes"),
          Etape("Les réactions de combustions"),
          Etape("Les réactions de substitution"),
        ],
      ),
    ],
  ),

  
  Cours(
    "Mathématiques",
    [
      Chapitre(
        "Algèbre",
        [
          Etape("Introduction à l'algèbre"),
          Etape("Exercices d'algèbre"),
        ],
      ),
      Chapitre(
        "Géométrie",
        [
          Etape("Introduction à la géométrie"),
          Etape("Exercices de géométrie"),
        ],
      ),
      Chapitre(
        "Probabilités",
        [
          Etape("Introduction aux probabilités"),
          Etape("Exercices de probabilités"),
        ],
      ),
    ],
  ),
  Cours(
    "Biologie",
    [
      Chapitre(
        "Génétique",
        [
          Etape("Introduction à la génétique"),
          Etape("Exercices de génétique"),
        ],
      ),
      Chapitre(
        "Écologie",
        [
          Etape("Introduction à l'écologie"),
          Etape("Exercices d'écologie"),
        ],
      ),
      Chapitre(
        "Anatomie",
        [
          Etape("Introduction à l'anatomie"),
          Etape("Exercices d'anatomie"),
        ],
      ),
    ],
  ),


];



// {

//     "cours": [
//       {
//         "titre": "Français",
//         "chapitres": [
//           {
//             "titre": "Grammaire",
//             "etapes": [
// 		{
// 		  "titre": "Introduction à la grammaire", 
// 		  "titre": "Exercices de grammaire"
// 		}
// 		]
//           },
//           {
//             "titre": "Orthographe",
//             "etapes": [
// 		{
// 		  "titre": "Règles d'orthographe", 
// 		  "titre": "Exercices d'orthographe"
// 		}
// 		]
//           },
//           {
//             "titre": "Conjugaison",
//             "etapes": [
// 		{
// 		  "titre": "Règles de conjugaison", 
// 		  "titre": "Exercices de conjugaison"
// 		}
// 		]
//           }
//         ]
//       },
//       {
//         "titre": "Mathématiques",
//         "chapitres": [
//           {
//             "titre": "Algèbre",
//             "etapes": [
// 		{
// 		  "titre": "Introduction à l'algèbre", 
// 		  "titre": "Exercices d'algèbre"
// 		}
// 		]
//           },
//           {
//             "titre": "Géométrie",
//             "etapes": [
// 		{
// 		  "titre": "Introduction à la géométrie", 
// 		  "titre": "Exercices de géométrie"
// 		}
// 		]
//           },
//           {
//             "titre": "Probabilités",
//             "etapes": [
// 		{
// 		  "titre": "Introduction aux probabilités", 
// 		  "titre": "Exercices de probabilités"
// 		}
// 		]
//           }
//         ]
//       },
//       {
//         "titre": "Biologie",
//         "chapitres": [
//           {
//             "titre": "Génétique",
//             "etapes": [
// 		{
// 		  "titre": "Introduction à la génétique", 
// 		  "titre": "Exercices de génétique"
// 		}
// 		]
//           },
//           {
//             "titre": "Écologie",
//             "etapes": [
// 		{
// 		  "titre": "Introduction à l'écologie", 
// 		  "titre": "Exercices d'écologie"
// 		}
// 		]
//           },
//           {
//             "titre": "Anatomie",
//             "etapes": [
// 		{
// 		  "titre": "Introduction à l'anatomie", 
// 		  "titre": "Exercices d'anatomie"
// 		}
// 		]
//           }
//         ]
//       }
//     ]
// }
