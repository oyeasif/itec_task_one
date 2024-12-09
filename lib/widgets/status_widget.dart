import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

import '../res/images.dart';

class StatusWidget extends StatefulWidget {

  final String title, svg;

  const StatusWidget({Key? key, required this.svg, required this.title}) : super(key: key);

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          widget.svg,
          height: 24.h,
          width: 24.w,
        ),
        TextStyleWidget(
          title: widget.title,
          size: 14.sp,
          weight: FontWeight.w700,
        ),
      ],
    );
  }
}
