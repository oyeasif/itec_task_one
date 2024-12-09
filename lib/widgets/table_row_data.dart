import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/widgets/text_widget.dart';

class TableRowData extends StatefulWidget {

  final String data;
  const TableRowData({Key? key, required this.data}) : super(key: key);

  @override
  State<TableRowData> createState() => _TableRowDataState();
}

class _TableRowDataState extends State<TableRowData> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: TextStyleWidget(
          title: widget.data,
          size: 14.sp,
          weight: FontWeight.w700,
        ),
      ),
    );
  }
}
