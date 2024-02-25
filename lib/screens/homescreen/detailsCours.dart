import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutoria/screens/homescreen/data/CoursModel.dart';
import 'package:tutoria/screens/homescreen/widget/WcardCours.dart';
import 'package:tutoria/screens/homescreen/widget/Wcardchapitre.dart';
import 'package:tutoria/screens/stepscreen/etapescreen.dart';
import 'package:tutoria/theme/app_theme.dart';
import 'package:tutoria/utils/constants.dart';

class DetailsCours extends StatelessWidget {
  final Cours cours; // Prend le cours sélectionné comme argument
  final String nomMatiere;

  DetailsCours({required this.cours, required this.nomMatiere});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    nomMatiere,
                    style: kAppbarDisplayH1,
                  ),
                ),
            
                SizedBox(
                  height: 95.h,
                  child: FutureBuilder(
                    future: Future.delayed(Duration(seconds: 1)),
                    builder: (ctx, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                        case ConnectionState.waiting:
                          return Center(
                              child: CircularProgressIndicator(
                            color: AppTheme.darkBlue,
                          ));
                        default:
                          if (snapshot.hasError) {
                            return Text(
                                "Error: ${snapshot.error}");
                          } else if (!snapshot.hasData) {
                            return ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: cours.chapitres.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: CardChapitre(
                                    index: index,
                                    nom: cours.chapitres[index].titre!, 
                                  ),
                    
                                  onTap: () {
                                    print("Tappp");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EtapeScreen(chapitre: cours.chapitres[index],),
                                      ),
                                    );
                                  },
                                  
                                );
                    
                                // ArticleWidget(
                                //     url: itemList[index].link!,
                                //     autor: itemList[index]
                                //         .authorsNamesList![0],
                                //     title:
                                //         itemList[index].title ??
                                //             '',
                                //     description:
                                //         itemList[index].summary ??
                                //             '');
                    
                              },
                            );
                          } else {
                            return const Center(
                                child: Text('An Error occured'));
                          }
                      }
                    },
                  ),
                ),
            
              ],
            ),
          ),
        ),
    );
  }
}

// Classe DetailsCours
// class DetailsCours extends StatelessWidget {
//   final Cours cours; // Prend le cours sélectionné comme argument

//   DetailsCours({required this.cours});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(cours.titre!), // Affiche le titre du cours dans l'app bar
//       ),
//       body: ListView.builder(
//         itemCount: cours.chapitres.length, // Nombre de chapitres du cours
//         itemBuilder: (context, index) {
//           // Affiche chaque chapitre
//           return ListTile(
//             title: Text(cours.chapitres[index].titre!), // Titre du chapitre
//             onTap: () {
//               // Navigue vers la page des détails du chapitre
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailsChapitre(
//                     chapitre: cours.chapitres[index],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
