import 'package:flutter/material.dart';
import 'package:task_manager_concept/widgets/date_slide.dart';

import '../constants/constants.dart';

class DateDayTiles extends StatefulWidget {
  final bool selected;
  final DateAndDay dateAndDay;

  const DateDayTiles({
    required this.dateAndDay,
    required this.selected,
    Key? key,
  }) : super(key: key);

  @override
  State<DateDayTiles> createState() => _DateDayTilesState();
}

class _DateDayTilesState extends State<DateDayTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 32) / 7,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: widget.selected ? primaryColor : Colors.transparent,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24),
          bottom: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.dateAndDay.date.toString(),
            style: TextStyle(
              color: widget.selected ? Colors.white : null,
            ),
          ),

          //
          Text(
            widget.dateAndDay.day,
            style: TextStyle(
              color: widget.selected ? Colors.white : null,
            ),
          ),

          //
          Visibility(
            child: Container(
              height: 7,
              width: 7,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
