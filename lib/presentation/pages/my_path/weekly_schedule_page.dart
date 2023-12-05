import 'package:flutter/material.dart';
import 'package:mylife/utils.dart';

class WeeklySchedulePage extends StatefulWidget {
  const WeeklySchedulePage({Key? key}) : super(key: key);

  @override
  State<WeeklySchedulePage> createState() => _WeeklySchedulePageState();
}

class _WeeklySchedulePageState extends State<WeeklySchedulePage> {
  @override
  Widget build(BuildContext context) {
    return buildWeeklySchedule();
  }

  Widget buildWeeklySchedule() {
    TimeOfDay startTime = const TimeOfDay(hour: 8, minute: 0);
    TimeOfDay endTime = const TimeOfDay(hour: 11, minute: 30);
    TimeOfDay startTime1 = const TimeOfDay(hour: 12, minute: 30);
    TimeOfDay endTime1 = const TimeOfDay(hour: 14, minute: 30);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              border: Border.all(color: const Color(0xFFBDDED8)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Day selection',
                          style: TextStyle(
                            color: Color(0xFF414C57),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          height: 42,
                          width: MediaQuery.of(context).size.width * 0.27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: const Color(0xFF237A6A)),
                            color: const Color(0xFFF1F7F6),
                          ),
                          alignment: Alignment.center,
                          child: DropdownButton<String>(
                            value: '8/3/2023',
                            style: const TextStyle(color: Color(0xFF237A6A)),
                            isExpanded: true,
                            dropdownColor: const Color(0xFFF1F7F6),
                            onChanged: (newValue) {},
                            underline: Container(),
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF46A291),
                            ),
                            items: <String>['8/3/2023']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Week selection',
                          style: TextStyle(
                            color: Color(0xFF414C57),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          height: 42,
                          width: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: const Color(0xFF237A6A)),
                            color: const Color(0xFFF1F7F6),
                          ),
                          alignment: Alignment.center,
                          child: DropdownButton<String>(
                            value: 'Monday',
                            style: const TextStyle(color: Color(0xFF237A6A)),
                            isExpanded: true,
                            dropdownColor: const Color(0xFFF1F7F6),
                            onChanged: (newValue) {},
                            underline: Container(),
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF46A291),
                            ),
                            items: <String>['Monday', 'Tuesday', 'Wednsday']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Daily schedule',
                        style: TextStyle(
                          color: Color(0xFF414C57),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        width: MediaQuery.of(context).size.width * 0.53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: const Color(0xFF237A6A)),
                          color: const Color(0xFFF1F7F6),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildDailySchedule(startTime, endTime, 'Work Time'),
                            Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.17,
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF237A6A).withOpacity(0.39),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            buildDailySchedule(
                                startTime1, endTime1, 'Lunch Time'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDailySchedule(
    TimeOfDay start,
    TimeOfDay end,
    String scheduleTitle,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${getFormattedStringTime(start)} ~',
                  style: const TextStyle(
                    color: Color(0xFF237A6A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  getFormattedStringTime(end),
                  style: const TextStyle(
                    color: Color(0xFF237A6A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: Text(
              scheduleTitle,
              style: const TextStyle(
                color: Color(0xFF237A6A),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
