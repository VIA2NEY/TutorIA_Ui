

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String nomEtape;

  const MyTimeLineTile({
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.nomEtape
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        height: 150,
        child: TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
          beforeLineStyle: LineStyle(color: isPast ? Colors.green : Color(0xFF27354b)),
          indicatorStyle: IndicatorStyle(
            width: 30,
            color: isPast ? Colors.green : Color(0xFF27354b),
            iconStyle: isPast ? IconStyle(iconData: Icons.done,color: Colors.white) : null,
          ),

          endChild: ContainerTimeline(nomEtape),
        ),
      ),
    );
  }
}




Widget ContainerTimeline (String nom){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5.w , vertical: 5),
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        height: 12.h,
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


            ],
          ),
        ),
      ),
    ),
  );
}