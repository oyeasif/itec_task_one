import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

import '../res/color.dart';

class TasksWidget extends StatefulWidget {

  final value;
  final String title;
  final textColor;

  const TasksWidget({Key? key, this.value, required this.title, this.textColor}) : super(key: key);

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform.scale(
                scale: 0.8.sp,
                child: SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Checkbox(
                    value: widget.value,
                    activeColor: MyColors.primaryBlue,
                    onChanged: (value){},
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              TextStyleWidget(
                title: widget.title,
                size: 18.sp,
                weight: FontWeight.w500,
                color: widget.textColor,
              ),
            ],
          ),
          Icon(
            Icons.drag_indicator,
            color: MyColors.grey,
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}
