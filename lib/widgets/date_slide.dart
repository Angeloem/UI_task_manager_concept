import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:task_manager_concept/constants/constants.dart';

import 'date_day_tiles.dart';

class DateSlideWidget extends StatefulWidget {
  const DateSlideWidget({Key? key}) : super(key: key);

  @override
  State<DateSlideWidget> createState() => _DateSlideWidgetState();
}

class _DateSlideWidgetState extends State<DateSlideWidget> {
  bool? isSelected;
  GlobalKey<State>? _selectedWidgetKey;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 300)).then((value) {
        if (_selectedWidgetKey != null) {
          Scrollable.ensureVisible(_selectedWidgetKey!.currentContext!, duration: const Duration(milliseconds: 300), alignment: .5);
        }
      });
    });
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            ...generateDates(),
          ],
        ),
      ),
    );
  }

  Iterable<Widget> generateDates() {
    final int daysInMonth = getNumberOfDaysInMonth();

    final now = DateTime.now();
    List<DateAndDay> accumulator = <DateAndDay>[];
    List<String> listOfDays = <String>[
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun',
    ];

    //
    while (accumulator.length <= daysInMonth) {
      int date = accumulator.length + 1;
      final weekday = DateTime(now.year, now.month, date).weekday;
      final day = listOfDays[weekday - 1];
      accumulator.add(DateAndDay(day: day, date: date));
    }

    return accumulator.map((e) {
      final selected = isSelected ?? e.date == now.day;

      if (selected) {
        _selectedWidgetKey = GlobalKey();
        return DateDayTiles(
          key: _selectedWidgetKey,
          dateAndDay: e,
          selected: selected,
        );
      }

      return DateDayTiles(
        dateAndDay: e,
        selected: selected,
      );
    });
  }

  int getNumberOfDaysInMonth() {
    final now = DateTime.now();
    final nextMonthDay1 = DateTime(now.year, now.month + 1, 1);
    final DateTime nextMonthMinusOneDay = nextMonthDay1.subtract(
      const Duration(days: 1),
    );

    return nextMonthMinusOneDay.day;
  }
}

class DateAndDay {
  final String day;
  final int date;

  DateAndDay({
    required this.day,
    required this.date,
  });
}
