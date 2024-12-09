import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/color.dart';

class CircleAvatarIconWidget extends StatefulWidget {

  final icon;
  const CircleAvatarIconWidget({Key? key, required this.icon}) : super(key: key);

  @override
  State<CircleAvatarIconWidget> createState() => _CircleAvatarIconWidgetState();
}

class _CircleAvatarIconWidgetState extends State<CircleAvatarIconWidget> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: MyColors.grey10,
      child: Icon(
        widget.icon,
        color: MyColors.primaryBlue,
        size: 24.sp,
      ),
    );
  }
}
