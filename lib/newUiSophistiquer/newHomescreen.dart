import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutoria/utils/constants.dart';

class NewUiHome extends StatelessWidget {
  const NewUiHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      // width: double.infinity,
  
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'), fit: BoxFit.cover
        )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [

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
                          color:  Colors.white,
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
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  
                  Container(
                    width: 82,
                    height: 82,
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

            // SizedBox(
            //           height: 5.h
            //         ),

            Padding(
              padding: const EdgeInsets.only(top : 8.0),
              child: SizedBox(
                height: 80.h,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return cour();
                    
                    
                    
                    // Card(
                    //   color: Color(0xFFFFFFFF).withOpacity(0.2),
                    //   child: ListTile(
                    //     title: Text("Listle numero $index",
                    //     style: TextStyle(
                    //       color: Color(0xFFFFFFFF)
                    //     ),),
                    //   ),
                    // );
                          
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget cour (){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
    child: Container(
      // 
      height: 20.h,
      width: 90.w,
      // 
      
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withOpacity(0.2),
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
              "Mathematique",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF)
              ),
            ),
          ),

          SizedBox(
            height: 8.h /*height_screen * 0.020*/,
          ),

          SizedBox(
            height: 2.h /*height_screen * 0.012*/,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "3 chapitres",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF)
                  ),
                ),
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
                      Text(
                          'Start',
                          style:
                              kDisplayArticleH4,
                        ),
                    ],
                  ),
                ),
              ),


            ],
          ),
          
        ],
      ),
    ),
  );
}