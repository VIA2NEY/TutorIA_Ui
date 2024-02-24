import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutoria/utils/constants.dart';

class NewUiHome extends StatefulWidget {
  const NewUiHome({super.key});

  @override
  State<NewUiHome> createState() => _NewUiHomeState();
}

class _NewUiHomeState extends State<NewUiHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f3f4),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // HEADER WELCOME
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top : 10.h, left: 10, right: 10),
                    child: Container(
                      height: 12.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFe1e1e1),
                        borderRadius: 
                            BorderRadius.circular(25),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              offset: Offset(1.1, 1.1),
                              blurRadius: 10.0),
                        ],
                      ),
                  
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/profile.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bienvenue"),
                                Expanded(
                                  child: Text(
                                    "Salomon Diei",
                                    style: kAppbarDisplayH1,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                      
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 5.w,
                  ),

                  Container(
                    width: 20.w,
                    decoration: BoxDecoration(
                      // color: Color(0xFFe1e1e1),
                      borderRadius: 
                          BorderRadius.circular(40),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            offset: Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  )

                ],
              ),
            // 

            // TabFilter
            // 

            // Liste des cours
            // 
          ],
        ),
      ),
    );
  }
}