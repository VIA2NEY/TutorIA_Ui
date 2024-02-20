import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutoria/screens/chatscreen/homechat.dart';
import 'package:tutoria/utils/constants.dart';

class AiRead extends StatefulWidget {
  const AiRead({super.key});

  @override
  State<AiRead> createState() => _AiReadState();
}

class _AiReadState extends State<AiRead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Les verbes Irreguliers",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF27354B)
          ),
          
        ),
        foregroundColor: Color(0xFF27354B),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),

      body: Stack(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: Container(
              height: 90.h,
              width: 90.w,

              decoration: BoxDecoration(
                color: Color(0xFF27354B)
              ),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "If you do not see some of the parameters in your API response it means that these weather phenomena are just not happened for the time of measurement for the city or location chosen. Only really measured or calculated data is displayed in API response.",
                  style: kChatText,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            
              child: Container(
                margin: EdgeInsets.only(top: 15),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(3, 10.0, 5, 0),
                  //   child: Container(
                  //     margin: EdgeInsets.only(
                  //       bottom: 10,
                  //       right: 10,
                  //     ),
                  //     child: ElevatedButton(
                  //       child: Icon(
                  //         Icons.front_hand_outlined,
                  //         size: 20,
                  //         color: Colors.white
                  //       ),
                  //       onPressed: () {
                          
                  //       },
                  //       style: ElevatedButton.styleFrom(
                  //         primary: Color(0xff345afa),
                  //         minimumSize: Size(160, 60),
                  //         elevation: 10,
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(15.0),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 10.0, 5, 0),
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                        right: 10,
                      ),
                      child: ElevatedButton(
                        child: Icon(
                          Icons.play_arrow,
                          size: 70,
                          color: Colors.white
                        ),
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff4ecb71),
                          minimumSize: Size(160, 60),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(23, 10.0, 5, 0),
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 30,
                        right: 40,
                      ),
                      child: IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatView(), // Remplacez ProchainePage par votre prochaine page
                            ),
                          );
                        }, 
                        icon: Icon(
                          Icons.front_hand_outlined,
                          size: 60,
                          // color: Colors.white
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),

        ],
      ),
    );
  }
}