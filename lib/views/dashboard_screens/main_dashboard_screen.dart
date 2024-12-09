import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itec_task_one/res/color.dart';
import 'package:itec_task_one/widgets/button_widget.dart';
import 'package:itec_task_one/widgets/calender_widget.dart';
import 'package:itec_task_one/widgets/check_box_widget.dart';
import 'package:itec_task_one/widgets/circle_avatar_icon_widget.dart';
import 'package:itec_task_one/widgets/line_rating_widget.dart';
import 'package:itec_task_one/widgets/row_containers_widget.dart';
import 'package:itec_task_one/widgets/status_widget.dart';
import 'package:itec_task_one/widgets/table_head_widget.dart';
import 'package:itec_task_one/widgets/table_row_data.dart';
import 'package:itec_task_one/widgets/tasks_widget.dart';

import '../../res/images.dart';
import '../../widgets/text_widget.dart';

class MainDashboardScreen extends StatefulWidget {
  const MainDashboardScreen({super.key});

  @override
  State<MainDashboardScreen> createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {
  final List circleAvatars = [
    MyImages.person,
    MyImages.person,
    MyImages.person,
    MyImages.person,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextStyleWidget(
          title: 'Pages/Dashboard',
          size: 14.sp,
          weight: FontWeight.w500,
          color: const Color.fromRGBO(112, 126, 174, 1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextStyleWidget(
              title: 'Main Dashboard',
              size: 34.sp,
              weight: FontWeight.w700,
              color: const Color.fromRGBO(43, 54, 116, 1),
            ),
            Container(
              padding: EdgeInsets.all(10.sp),
              height: 70.h,
              width: 422.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0.h, horizontal: 10.w),
                        fillColor: MyColors.grey10,
                        filled: true,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 16.sp,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.3),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.3),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    color: MyColors.grey,
                    size: 24.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.dark_mode,
                    color: MyColors.grey,
                    size: 24.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.error_outline,
                    color: MyColors.grey,
                    size: 24.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatarIconWidget(icon: Icons.person),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 120.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const RowContainersWidget(
                title: 'Earnings',
                subTitle: '\$350.4',
                icon: Icons.bar_chart,
              ),
              SizedBox(
                width: 20.w,
              ),
              const RowContainersWidget(
                title: 'Spend this month',
                subTitle: '\$642.39',
                icon: Icons.attach_money,
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStyleWidget(
                      title: 'Sales',
                      size: 14.sp,
                      weight: FontWeight.w500,
                      color: MyColors.grey,
                    ),
                    TextStyleWidget(
                      title: '\$574.34',
                      size: 24.sp,
                      weight: FontWeight.w700,
                    ),
                    Row(
                      children: [
                        TextStyleWidget(
                          title: '+23% ',
                          size: 12.sp,
                          weight: FontWeight.w700,
                          color: MyColors.green,
                        ),
                        TextStyleWidget(
                          title: 'since last month',
                          size: 12.sp,
                          weight: FontWeight.w400,
                          color: MyColors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleWidget(
                          title: 'Your balance',
                          size: 14.sp,
                          weight: FontWeight.w500,
                          color: MyColors.grey,
                        ),
                        TextStyleWidget(
                          title: '\$1,000',
                          size: 24.sp,
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: MyColors.grey10,
                      child: Center(
                        child: Icon(
                          Icons.south_america,
                          color: MyColors.primaryBlue,
                          size: 32.sp,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: MyColors.grey,
                      size: 24.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              const RowContainersWidget(
                title: 'New Tasks',
                subTitle: '154',
                icon: Icons.gpp_good,
              ),
              SizedBox(
                width: 20.w,
              ),
              const RowContainersWidget(
                title: 'Total Projects',
                subTitle: '2935',
                icon: Icons.file_copy,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.sp),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              color: MyColors.grey10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: MyColors.grey,
                                size: 18.sp,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              TextStyleWidget(
                                title: 'This month',
                                size: 14.sp,
                                weight: FontWeight.w500,
                                color: MyColors.grey,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextStyleWidget(
                          title: '\$37.5K',
                          size: 34.sp,
                          weight: FontWeight.w700,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextStyleWidget(
                                title: 'Total Spent',
                                size: 14.sp,
                                weight: FontWeight.w500,
                                color: MyColors.grey),
                            SizedBox(
                              width: 10.w,
                            ),
                            Icon(
                              Icons.arrow_drop_up_outlined,
                              color: MyColors.green,
                              size: 20.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            TextStyleWidget(
                              title: '+2.45%',
                              size: 12.sp,
                              weight: FontWeight.w700,
                              color: MyColors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(MyImages.approved, height: 16.h, width: 16.w,),
                            SizedBox(
                              width: 5.w,
                            ),
                            TextStyleWidget(
                              title: 'On track',
                              size: 16.sp,
                              weight: FontWeight.w700,
                              color: MyColors.green,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const CircleAvatarIconWidget(icon: Icons.bar_chart),
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          height: 100.h,
                          width: 500.w,
                          child: LineChart(
                            LineChartData(
                              gridData: const FlGridData(show: false),
                              titlesData: FlTitlesData(
                                show: true,
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, meta) {
                                      const months = [
                                        "Jan",
                                        "Feb",
                                        "Mar",
                                        "Apr",
                                        "May"
                                      ];
                                      String month = "";
                                      if (value.toInt() >= 0 &&
                                          value.toInt() < months.length) {
                                        month = months[value.toInt()];
                                      }
                                      return TextStyleWidget(
                                        title: month,
                                        size: 12.sp,
                                        weight: FontWeight.w500,
                                        color: MyColors.grey,
                                      );
                                    },
                                    interval: 1, // Defines interval for labels
                                  ),
                                ),
                                leftTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                topTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                rightTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                              ),
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(0, 4),
                                    const FlSpot(1, 3),
                                    const FlSpot(2, 5),
                                    const FlSpot(3, 2.5),
                                    const FlSpot(4, 6),
                                  ],
                                  isCurved: true,
                                  color: MyColors.primaryBlue,
                                  barWidth: 4,
                                  isStrokeCapRound: true,
                                  // belowBarData: BarAreaData(
                                  //   show: true,
                                  //   color: Colors.white,
                                  // ),
                                ),
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(0, 3),
                                    const FlSpot(1, 2),
                                    const FlSpot(2, 4),
                                    const FlSpot(3, 1.5),
                                    const FlSpot(4, 5),
                                  ],
                                  isCurved: true,
                                  barWidth: 4,
                                  isStrokeCapRound: true,
                                  // belowBarData: BarAreaData(
                                  //   show: true,
                                  //   color: Colors.blue,
                                  // ),
                                ),
                              ],
                            ),
                            duration:
                                const Duration(milliseconds: 150), // Optional
                            curve: Curves.linear, // Optional
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Container(
                  padding: EdgeInsets.all(15.sp),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyleWidget(
                            title: 'Weekly Revenue',
                            size: 24.sp,
                            weight: FontWeight.w700,
                          ),
                          const CircleAvatarIconWidget(icon: Icons.bar_chart),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 100.h,
                        child: BarChart(
                          BarChartData(
                            titlesData: const FlTitlesData(
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            maxY: 100,
                            minY: 0,
                            borderData: FlBorderData(show: false),
                            gridData: FlGridData(
                              checkToShowVerticalLine: (value) => false,
                            ),
                            barTouchData: BarTouchData(),
                            barGroups: _generateBarGroups(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.sp),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextStyleWidget(
                          title: 'Check Table',
                          size: 24.sp,
                          weight: FontWeight.w700,
                        ),
                        const CircleAvatarIconWidget(icon: Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Table(
                      children: [
                        const TableRow(
                          children: [
                            TableHeadWidget(heading: 'Name'),
                            TableHeadWidget(heading: 'Progress'),
                            TableHeadWidget(heading: 'Quantity'),
                            TableHeadWidget(heading: 'Date'),
                          ],
                        ),
                        TableRow(
                          children: [
                            CheckBoxWidget(
                                value: false,
                                title: 'Horizon UI Pro',
                                onChanged: (value) {}),
                            const TableRowData(data: '17.5%'),
                            const TableRowData(data: '2.458'),
                            const TableRowData(data: '24.Jan.2021'),
                          ],
                        ),
                        TableRow(
                          children: [
                            CheckBoxWidget(
                                value: true,
                                title: 'Horizon UI Free',
                                onChanged: (value) {}),
                            const TableRowData(data: '17.5%'),
                            const TableRowData(data: '2.458'),
                            const TableRowData(data: '24.Jan.2021'),
                          ],
                        ),
                        TableRow(
                          children: [
                            CheckBoxWidget(
                                value: true,
                                title: 'Weekly Update',
                                onChanged: (value) {}),
                            const TableRowData(data: '17.5%'),
                            const TableRowData(data: '2.458'),
                            const TableRowData(data: '24.Jan.2021'),
                          ],
                        ),
                        TableRow(
                          children: [
                            CheckBoxWidget(
                                value: true,
                                title: 'Venus 3D Asset',
                                onChanged: (value) {}),
                            const TableRowData(data: '17.5%'),
                            const TableRowData(data: '2.458'),
                            const TableRowData(data: '24.Jan.2021'),
                          ],
                        ),
                        TableRow(
                          children: [
                            CheckBoxWidget(
                                value: false,
                                title: 'Marketplace',
                                onChanged: (value) {}),
                            const TableRowData(data: '17.5%'),
                            const TableRowData(data: '2.458'),
                            const TableRowData(data: '24.Jan.2021'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15.sp),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextStyleWidget(
                                  title: 'Daily Traffic',
                                  size: 14.sp,
                                  weight: FontWeight.w500,
                                  color: MyColors.grey,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_up_outlined,
                                      color: MyColors.green,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    TextStyleWidget(
                                      title: '+2.45%',
                                      size: 12.sp,
                                      weight: FontWeight.w700,
                                      color: MyColors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                TextStyleWidget(
                                  title: '2.579',
                                  size: 34.sp,
                                  weight: FontWeight.w700,
                                ),
                                TextStyleWidget(
                                  title: 'Visitors',
                                  size: 14.sp,
                                  weight: FontWeight.w500,
                                  color: MyColors.grey,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            SizedBox(
                              height: 150.h,
                              child: BarChart(
                                BarChartData(
                                  titlesData: const FlTitlesData(
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                  ),
                                  maxY: 100,
                                  minY: 0,
                                  borderData: FlBorderData(show: false),
                                  gridData: FlGridData(
                                    checkToShowVerticalLine: (value) => false,
                                  ),
                                  barTouchData: BarTouchData(),
                                  barGroups: _generateBarGroups2(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15.sp),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextStyleWidget(
                                  title: 'Your Pie Chart',
                                  size: 16.sp,
                                  weight: FontWeight.w700,
                                ),
                                Row(
                                  children: [
                                    TextStyleWidget(
                                      title: 'Monthly',
                                      size: 12.sp,
                                      weight: FontWeight.w700,
                                      color: MyColors.grey,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      size: 20.sp,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            SizedBox(
                              height: 130.h,
                              child: PieChart(
                                PieChartData(
                                  sections: [
                                    PieChartSectionData(
                                        value: 65,
                                        color: Colors.blue,
                                        radius: 60,
                                        showTitle: false),
                                    PieChartSectionData(
                                      value: 10,
                                      color: Colors.cyan,
                                      showTitle: false,
                                      radius: 60,
                                    ),
                                    PieChartSectionData(
                                        value: 25,
                                        color: Colors.grey,
                                        radius: 60,
                                        showTitle: false),
                                  ],
                                  centerSpaceRadius: 0,
                                  sectionsSpace: 0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 10.h,
                                          width: 10.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: MyColors.primaryBlue),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        TextStyleWidget(
                                          title: 'Your files',
                                          size: 12.sp,
                                          weight: FontWeight.w500,
                                          color: MyColors.grey,
                                        ),
                                      ],
                                    ),
                                    TextStyleWidget(
                                      title: '63%',
                                      size: 18.sp,
                                      weight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 10.h,
                                          width: 10.w,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.cyan,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        TextStyleWidget(
                                          title: 'System',
                                          size: 12.sp,
                                          weight: FontWeight.w500,
                                          color: MyColors.grey,
                                        ),
                                      ],
                                    ),
                                    TextStyleWidget(
                                      title: '25%',
                                      size: 18.sp,
                                      weight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.sp),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextStyleWidget(
                          title: 'Complex Table',
                          size: 24.sp,
                          weight: FontWeight.w700,
                        ),
                        const CircleAvatarIconWidget(icon: Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Table(
                      children: [
                        const TableRow(
                          children: [
                            TableHeadWidget(
                              heading: 'Name',
                            ),
                            TableHeadWidget(
                              heading: 'Status',
                            ),
                            TableHeadWidget(
                              heading: 'Date',
                            ),
                            TableHeadWidget(
                              heading: 'Progress',
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            TextStyleWidget(
                              title: 'Horizon UI Pro',
                              size: 14.sp,
                              weight: FontWeight.w700,
                            ),
                            const StatusWidget(
                                svg: MyImages.approved, title: 'Approved'),
                            const TableRowData(data: '24.Jan.2021'),
                            LineRatingWidget(rating: 0.9.w),
                          ],
                        ),
                        TableRow(
                          children: [
                            TextStyleWidget(
                              title: 'Horizon UI Free',
                              size: 14.sp,
                              weight: FontWeight.w700,
                            ),
                            const StatusWidget(
                                svg: MyImages.cancel, title: 'Disable'),
                            const TableRowData(data: '24.Jan.2021'),
                            LineRatingWidget(rating: 0.9.w),
                          ],
                        ),
                        TableRow(
                          children: [
                            TextStyleWidget(
                              title: 'Marketplace',
                              size: 14.sp,
                              weight: FontWeight.w700,
                            ),
                            const StatusWidget(
                                svg: MyImages.error, title: 'Error'),
                            const TableRowData(data: '24.Jan.2021'),
                            LineRatingWidget(rating: 0.9.w),
                          ],
                        ),
                        TableRow(
                          children: [
                            TextStyleWidget(
                              title: 'Weekly updates',
                              size: 14.sp,
                              weight: FontWeight.w700,
                            ),
                            const StatusWidget(
                                svg: MyImages.approved, title: 'Approved'),
                            const TableRowData(data: '24.Jan.2021'),
                            LineRatingWidget(rating: 0.9.w),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15.sp),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
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
                                          value: true,
                                          activeColor: MyColors.primaryBlue,
                                          onChanged: (value) {},
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    TextStyleWidget(
                                      title: 'Tasks',
                                      size: 18.sp,
                                      weight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                                const CircleAvatarIconWidget(
                                    icon: Icons.more_horiz),
                              ],
                            ),
                            const TasksWidget(
                              title: 'Landing Page Design',
                              textColor: MyColors.grey,
                              value: false,
                            ),
                            const TasksWidget(
                              title: 'Dashboard Builder',
                              textColor: Colors.black,
                              value: true,
                            ),
                            const TasksWidget(
                              title: 'Mobile App Design',
                              textColor: Colors.black,
                              value: true,
                            ),
                            const TasksWidget(
                              title: 'Illustrations',
                              textColor: MyColors.grey,
                              value: false,
                            ),
                            const TasksWidget(
                              title: 'Promotional LP',
                              textColor: Colors.black,
                              value: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Container(
                        height: 260.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: const SingleChildScrollView(
                          child: CalenderWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(15.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 48.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                                color: MyColors.red10,
                                borderRadius: BorderRadius.circular(15.r)),
                            child: Center(
                                child: SvgPicture.asset(
                              MyImages.fire,
                              width: 18.w,
                              height: 23.h,
                            )),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStyleWidget(
                                title: 'Business Design',
                                size: 12.sp,
                                weight: FontWeight.w700,
                                color: MyColors.grey,
                              ),
                              TextStyleWidget(
                                title: 'New lession is available',
                                size: 16.sp,
                                weight: FontWeight.w700,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextStyleWidget(
                        title:
                            'What do you need to know to create better products?',
                        size: 20.sp,
                        weight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.green,
                            size: 24.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextStyleWidget(
                            title: '85 mins',
                            size: 14.sp,
                            weight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.slow_motion_video,
                            color: Colors.red,
                            size: 24.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextStyleWidget(
                            title: 'Video format',
                            size: 14.sp,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              for (int i = 0; i < circleAvatars.length; i++)
                                Align(
                                  widthFactor: 0.8.w,
                                  child: CircleAvatar(
                                    radius: 25.r,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 22.r,
                                      backgroundImage:
                                          AssetImage(circleAvatars[i]),
                                    ),
                                  ),
                                ),
                              Align(
                                widthFactor: 0.8.w,
                                child: CircleAvatar(
                                  radius: 30.r,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 25.r,
                                    backgroundColor: MyColors.grey10,
                                    child: TextStyleWidget(
                                      title: '18+',
                                      size: 12.sp,
                                      weight: FontWeight.w700,
                                      color: MyColors.primaryBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 160.w,
                            child: ButtonWidget(
                              loading: false,
                                title: 'Get Started',
                                onPress: () {},
                                buttonColor: MyColors.primaryBlue,
                                textColor: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(15.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleWidget(
                            title: 'Team members',
                            size: 18.sp,
                            weight: FontWeight.w700,
                          ),
                          Container(
                            height: 60.h,
                            width: 60.w,
                            padding: EdgeInsets.all(10.sp),
                            decoration: BoxDecoration(
                              color: MyColors.grey10,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: MyColors.primaryBlue,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 20.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                radius: 30.r,
                                backgroundImage: AssetImage(MyImages.person),
                              ),
                              title: TextStyleWidget(
                                title: 'Adela Parkson',
                                size: 16.sp,
                                weight: FontWeight.w700,
                              ),
                              subtitle: TextStyleWidget(
                                title: 'Creative Director',
                                size: 12.sp,
                                weight: FontWeight.w500,
                                color: MyColors.grey,
                              ),
                              trailing: Icon(
                                Icons.more_vert,
                                color: MyColors.grey,
                                size: 24.sp,
                              ),
                            );
                          })
                    ],
                  )),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(15.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        MyImages.fingerPrint,
                        height: 75.h,
                        width: 68.w,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextStyleWidget(
                        title: 'Control card security in-app with a tap',
                        size: 24.sp,
                        weight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextStyleWidget(
                        title: 'Discover our cards benefits, with one tap.',
                        size: 14.sp,
                        weight: FontWeight.w500,
                        color: MyColors.grey,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ButtonWidget(
                        loading: false,
                        title: 'Cards',
                        onPress: () {},
                        buttonColor: MyColors.primaryBlue,
                        textColor: Colors.white,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          height: 185.h,
                            width: 345.w,
                            padding: EdgeInsets.all(15.sp),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(MyImages.containerBackground,),
                              ),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: Colors.grey,
                                  child: Center(
                                    child: Icon(Icons.access_time_rounded, size: 20.sp, color: Colors.white,),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: CircleAvatar(
                            radius: 30.r,
                            backgroundImage: AssetImage(MyImages.containerBackground),
                          ),
                        )
                      ],
                    ),
                    TextStyleWidget(title: 'Starbucks', size: 24.sp, weight: FontWeight.w700,),
                    Row(
                      children: [
                        SvgPicture.asset(MyImages.fastFood, height: 24.h, width: 24.w,),
                        SizedBox(width: 5.w,),
                        TextStyleWidget(title: '10% cashback & off', size: 18.sp, weight: FontWeight.w500, color: MyColors.grey,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<BarChartGroupData> _generateBarGroups() {
    List<BarChartGroupData> groups = [];
    for (int i = 17; i < 26; i++) {
      groups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: 130,
              width: 10.w,
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                topRight: Radius.circular(8.r),
              ),
              rodStackItems: [
                BarChartRodStackItem(0, 50, MyColors.primaryBlue),
                BarChartRodStackItem(50, 100, Colors.cyan),
                BarChartRodStackItem(100, 130, Colors.grey.withOpacity(0.5)),
              ],
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 100,
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
          ],
        ),
      );
    }
    return groups;
  }

  List<BarChartGroupData> _generateBarGroups2() {
    List<BarChartGroupData> groups = [];
    for (int i = 17; i < 26; i++) {
      groups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: 100,
              width: 10.w,
              color: Colors.grey,
              gradient: const LinearGradient(
                  colors: [Colors.white, MyColors.primaryBlue],
                  begin: Alignment.bottomCenter),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                topRight: Radius.circular(8.r),
              ),
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 100,
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
          ],
        ),
      );
    }
    return groups;
  }
}
