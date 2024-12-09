import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

import '../res/color.dart';

class TableHeadWidget extends StatefulWidget {

  final String heading;
  const TableHeadWidget({Key? key, required this.heading}) : super(key: key);

  @override
  State<TableHeadWidget> createState() => _TableHeadWidgetState();
}

class _TableHeadWidgetState extends State<TableHeadWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h,),
      child: TextStyleWidget(
        title: widget.heading,
        size: 14.sp,
        weight: FontWeight.w500,
        color: MyColors.grey,
      ),
    );
  }
}
