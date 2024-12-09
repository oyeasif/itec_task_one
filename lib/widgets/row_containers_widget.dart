import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

import '../res/color.dart';

class RowContainersWidget extends StatefulWidget {

  final icon;
  final String title, subTitle;

  const RowContainersWidget({Key? key, this.icon, required this.title, required this.subTitle}) : super(key: key);

  @override
  State<RowContainersWidget> createState() => _RowContainersWidgetState();
}

class _RowContainersWidgetState extends State<RowContainersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: MyColors.grey10,
            child: Center(
              child: Icon(widget.icon, color: MyColors.primaryBlue, size: 32.sp,),
            ),
          ),
          SizedBox(width: 10.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleWidget(title: widget.title, size: 14.sp, weight: FontWeight.w500, color: MyColors.grey,),
              TextStyleWidget(title: widget.subTitle, size: 24.sp, weight: FontWeight.w700,),
            ],
          )
        ],
      ),
    )
    ;
  }
}
