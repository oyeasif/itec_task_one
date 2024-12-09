import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineRatingWidget extends StatefulWidget {

  final double rating;
  const LineRatingWidget({Key? key, required this.rating}) : super(key: key);

  @override
  State<LineRatingWidget> createState() => _LineRatingWidgetState();
}

class _LineRatingWidgetState extends State<LineRatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: widget.rating,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
