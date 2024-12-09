import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itec_task_one/res/color.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({Key? key}) : super(key: key);

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2000, 1, 1),
      lastDay: DateTime.utc(2100, 12, 31),
      focusedDay: DateTime.now(),
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
      calendarStyle: CalendarStyle(
        defaultTextStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700,),
        weekNumberTextStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        holidayTextStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        outsideTextStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: MyColors.grey),
        selectedTextStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: Colors.white),
        weekendTextStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        cellPadding: EdgeInsets.zero,
        tablePadding: EdgeInsets.zero,
        cellMargin: EdgeInsets.zero,
        todayDecoration: const BoxDecoration(
          color: MyColors.primaryBlue,
          shape: BoxShape.circle,
        ),
        selectedDecoration: const BoxDecoration(
          color: MyColors.primaryBlue,
          shape: BoxShape.circle,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        weekendStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
      ),
      headerStyle: HeaderStyle(
        leftChevronIcon: Icon(size: 14.sp, Icons.chevron_left_outlined,),
        rightChevronIcon: Icon(size: 14.sp, Icons.chevron_right_outlined,),
        titleTextStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
        formatButtonTextStyle: TextStyle(
            fontSize: 12.sp
        ),
        formatButtonVisible: false, // Hide the format button
        titleCentered: true,
      ),
    );
  }
}
