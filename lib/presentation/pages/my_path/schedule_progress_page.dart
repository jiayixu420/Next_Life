import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mylife/utils.dart';

class ScheduleProgressPage extends StatefulWidget {
  const ScheduleProgressPage({Key? key}) : super(key: key);

  @override
  State<ScheduleProgressPage> createState() => _ScheduleProgressPageState();
}

class _ScheduleProgressPageState extends State<ScheduleProgressPage> {
  @override
  Widget build(BuildContext context) {
    return buildScheduleProgress();
  }

  Widget buildScheduleProgress() {
    ScrollController scrollController = ScrollController();
    TimeOfDay startTime = const TimeOfDay(hour: 8, minute: 0);
    TimeOfDay endTime = const TimeOfDay(hour: 8, minute: 30);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: const Color(0xFFBDDED8)),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: [
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
              Container(
                alignment: Alignment.center,
                child: const Text(
                  '8/3/2023',
                  style: TextStyle(
                    color: Color(0xFF237A6A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
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
                      buildTimeSchedule(startTime, endTime, ''),
                      buildTimeSchedule(startTime, endTime, ''),
                      buildTimeSchedule(startTime, endTime, ''),
                      buildTimeSchedule(startTime, endTime, ''),
                      buildTimeSchedule(startTime, endTime, ''),
                      buildTimeSchedule(startTime, endTime, ''),
                      buildTimeSchedule(startTime, endTime, ''),
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
    String scheduleContent,
  ) {
    int diffTime = min(getDiffInMinutes(start, end), 250);

    return diffTime > 0
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 7,
                    width: 7,
                    margin: const EdgeInsets.only(top: 7),
                    decoration: const BoxDecoration(
                      color: Color(0xFF237A6A),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE5F0EE),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          getFormattedStringTime(start),
                          style: const TextStyle(
                            color: Color(0xFF237A6A),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '$diffTime min',
                          style: const TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod',
                        style: TextStyle(
                          color: Color(0xFF414C57),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Container();
  }
}
