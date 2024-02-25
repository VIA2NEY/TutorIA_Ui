import 'package:flutter/material.dart';
import 'package:tutoria/screens/ai_readscreen/aiReadScreen.dart';
import 'package:tutoria/screens/homescreen/data/CoursModel.dart';
import 'package:tutoria/screens/stepscreen/widget/timeline_tile.dart';
import 'package:tutoria/utils/constants.dart';

class EtapeScreen extends StatefulWidget {
  final Chapitre chapitre;

  const EtapeScreen({Key? key, required this.chapitre}) : super(key: key);

  @override
  State<EtapeScreen> createState() => _EtapeScreenState();
}

class _EtapeScreenState extends State<EtapeScreen> {

  List<bool> isPastList = []; // Liste pour suivre l'état isPast de chaque étape

  @override
  void initState() {
    super.initState();
    // Initialise isPastList avec la même longueur que la liste des étapes
    isPastList = List<bool>.filled(widget.chapitre.etapes.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    widget.chapitre.titre ?? "",
                    style: kAppbarDisplayH1,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.chapitre.etapes.length,
                  itemBuilder: (context, index) {
                    print("index = $index");
                    return InkWell(
                      child: MyTimeLineTile(
                        isFirst: index == 0, // SI index = 0 true l'element est premier
                        isLast: index == widget.chapitre.etapes.length - 1,
                        // isPast: true, // Vous devez déterminer l'état de l'étape
                        isPast: isPastList[index], // Utilise l'état de la liste
                        nomEtape: widget.chapitre.etapes[index].titre ?? "",
                      ),
        
                      onTap: () {
        
                        setState(() {
                          // Met à jour l'état isPast de l'étape sélectionnée
                          isPastList[index] = true;
                        });
        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AiRead(), // Remplacez ProchainePage par votre prochaine page
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
    );
  }
}





// class EtapeScreen extends StatefulWidget {
//   const EtapeScreen({super.key});

//   @override
//   State<EtapeScreen> createState() => _EtapeScreenState();
// }

// class _EtapeScreenState extends State<EtapeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
    
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                 child: Text(
//                   "Chap 1 ",
//                   style: kAppbarDisplayH1,
//                 ),
//               ),
    
//               MyTimeLineTile(
//                 isFirst: true, 
//                 isLast: false, 
//                 isPast: true, 
//                 nomEtape: "Les Verbes réguliers"
//               ),
    
//               MyTimeLineTile(
//                 isFirst: false, 
//                 isLast: false, 
//                 isPast: true, 
//                 nomEtape: "Les Verbes irréguliers"
//               ),
    
//               MyTimeLineTile(
//                 isFirst: false, 
//                 isLast: true, 
//                 isPast: false, 
//                 nomEtape: "Quiz"
//               ),
//             ],
//           ),
//         ),
//       ),
//     );



//     // return Scaffold(
//     //   body: ListView.builder(
//     //     itemBuilder: (context, index) {
//     //       return Container();
//     //     }
        
//     //   ),
//     // );
//   }
// }