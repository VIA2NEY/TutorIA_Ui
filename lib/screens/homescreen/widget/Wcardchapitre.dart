import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class CardChapitre extends StatelessWidget {

  final String nom;
  final int index;


  const CardChapitre({
    required this.nom,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w , vertical: 5),
      child: /*Card(
        // elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: */Container(
          
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
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chap $index :",
                  style: TextStyle(
                    fontSize: 3.5.w,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),
                ),
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


              ],
            ),
          ),
        ),
      /*),*/
    );

  }
}