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
      padding: EdgeInsets.symmetric(horizontal: 5.w , vertical: 5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          // width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.5.h),
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
      ),
    );

  }
}