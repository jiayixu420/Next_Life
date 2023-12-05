import 'package:flutter/material.dart';

String getFormattedStringTime(TimeOfDay time) {
  String formattedTime;

  if (time.hour > 12) {
    int hour = time.hour - 12;
    formattedTime =
        '${hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')} PM';
  } else {
    formattedTime =
        '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')} AM';
  }
  return formattedTime;
}

int getDiffInMinutes(TimeOfDay start, TimeOfDay end) {
  int startMinutes = start.hour * 60 + start.minute;
  int endMinutes = end.hour * 60 + end.minute;

  return endMinutes - startMinutes;
}
