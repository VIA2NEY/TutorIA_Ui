import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tutoria/screens/homescreen/data/CoursModel.dart';
import 'package:tutoria/screens/homescreen/detailsCours.dart';
import 'package:tutoria/screens/homescreen/widget/WcardCours.dart';
import 'package:tutoria/theme/app_theme.dart';
import 'package:tutoria/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // var height_screen, width_screen;
  @override
  Widget build(BuildContext context) {

    // height_screen = MediaQuery.of(context).size.height;
    // width_screen = MediaQuery.of(context).size.width;
    

    


    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
              
                // Header
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Salomon',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color:  Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'How u ready to study ?',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color(0x801A1818),
                            ),
                          ),
                        ],
                      ),
                      
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          // image: const DecorationImage(
                          //   image: AssetImage('images/profile.jpg'),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        child: Icon( Icons.person),
                      ),
                    ],
                  ),
                ),
                // 

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "Progression",
                      ),
                    ),
                    
                    // Box
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Container(
                        // 
                        height: 20.h,
                        width: 90.w,
                        // 
                        
                        decoration: BoxDecoration(
                          color: Color(0xFFf789a9),
                          borderRadius: 
                              BorderRadius.circular(25),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                offset: Offset(1.1, 1.1),
                                blurRadius: 10.0),
                          ],
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text(
                                "cour \nélémentaire 1",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 2.h /*height_screen * 0.020*/,
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: SizedBox(
                                child: StepProgressIndicator(
                                  totalSteps: 10,
                                  currentStep: 6,
                                  size: 7,
                                  padding: 0,
                                  roundedEdges: Radius.circular(10),
                                  selectedGradientColor:
                                      LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.blue,
                                      Colors.blue,
                                    ],
                                  ),
                                  unselectedGradientColor:
                                      LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.white,
                                      Colors.white
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 2.h /*height_screen * 0.012*/,
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 3.h,
                                width: 25.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.circular(
                                            8)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceAround,
                                  children: [
                                    const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(
                                              right: 5.0),
                                      child: Text(
                                        'Partager',
                                        style:
                                            kDisplayArticleH6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    // 

                    SizedBox(
                      height: 5.h
                    ),

                    /*SizedBox(
                      height: 50.h,
                      child:*/ Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Cours',
                                style: kDisplayH1,
                              ),
                            ],
                          ),
                          // Articles body
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: SizedBox(
                              height: 80.h,
                              child: FutureBuilder(
                                future: Future.delayed(Duration(seconds: 3)),
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
                                          itemCount: list_cours.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              child: CardCours(
                                                nom: list_cours[index].titre!, 
                                              ),

                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => DetailsCours(cours: list_cours[index], nomMatiere: list_cours[index].titre!,),
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
                          )


                        ],
                      ),
                    /*),*/



                  ],
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}