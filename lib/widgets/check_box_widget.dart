import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

import '../res/color.dart';

class CheckBoxWidget extends StatefulWidget {

  final bool value;
  final String title;
  final ValueChanged<bool?> onChanged;


  const CheckBoxWidget({Key? key, required this.value, required this.title, required this.onChanged}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.scale(
            scale: 0.8.sp,
            child: SizedBox(
              height: 10.h,
              width: 10.w,
              child: Checkbox(
                value: widget.value,
                activeColor: MyColors.primaryBlue,
                onChanged: widget.onChanged,
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          TextStyleWidget(
            title: widget.title,
            size: 14.sp,
            weight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
