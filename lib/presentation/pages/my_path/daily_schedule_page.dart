import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mylife/utils.dart';

class DailySchedulePage extends StatefulWidget {
  const DailySchedulePage({Key? key}) : super(key: key);

  @override
  State<DailySchedulePage> createState() => _DailySchedulePageState();
}

class _DailySchedulePageState extends State<DailySchedulePage> {
  @override
  Widget build(BuildContext context) {
    return buildDailySchedule();
  }

  Widget buildDailySchedule() {
    ScrollController scrollController = ScrollController();
    TimeOfDay startTime = const TimeOfDay(hour: 8, minute: 0);
    TimeOfDay endTime = const TimeOfDay(hour: 11, minute: 30);
    TimeOfDay startTime1 = const TimeOfDay(hour: 12, minute: 30);
    TimeOfDay endTime1 = const TimeOfDay(hour: 14, minute: 30);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: const Color(0xFFBDDED8)),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.edit_note_outlined,
                  color: Color(0xFF237A6A),
                  size: 18,
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                    color: Color(0xFF237A6A),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: RawScrollbar(
              thickness: 5,
              thumbVisibility: false,
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: <Widget>[
                      buildTimeSchedule(startTime, endTime, 'Work Time'),
                      buildTimeSchedule(startTime1, endTime1, 'Lunch Time'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTimeSchedule(
    TimeOfDay start,
    TimeOfDay end,
    String scheduleTitle,
  ) {
    int diffTime = min(getDiffInMinutes(start, end), 250);

    return diffTime > 0
        ? Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 5),
                child: Text(
                  getFormattedStringTime(start),
                  style: const TextStyle(
                    color: Color(0xFF237A6A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: diffTime.toDouble(),
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE5F0EE),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: diffTime.toDouble(),
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5F0EE),
                        border: Border.all(color: const Color(0xFF237A6A)),
                        borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Text(
                        scheduleTitle,
                        style: const TextStyle(
                          color: Color(0xFF237A6A),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 5, bottom: 10),
                child: Text(
                  getFormattedStringTime(end),
                  style: const TextStyle(
                    color: Color(0xFF237A6A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )
        : Container();
  }
}
