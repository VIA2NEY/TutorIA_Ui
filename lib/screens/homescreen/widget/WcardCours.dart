import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class CardCours extends StatelessWidget {

  final String nom;
  // final String description;


  const CardCours({
    required this.nom,
    //  this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5 , vertical: 12),
      child: /*Card(
        // elevation: 5,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(15)
        // ),
        child: */Container(
          // width: double.infinity,
          decoration: BoxDecoration(
          boxShadow:  [BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 0),
            blurRadius: 1

          )],
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.withOpacity(0.1),
              width: 1
            )
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nom,
                  style: TextStyle(
                    fontSize: 3.5.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                // Text(
                //   description,
                //   style: TextStyle(
                //     fontSize: 3.4.w,
                //     fontWeight: FontWeight.w300,
                //     color: Colors.black
                //   ),
                // ),


              ],
            ),
          ),
        ),
      /*),*/
    );

  }
}