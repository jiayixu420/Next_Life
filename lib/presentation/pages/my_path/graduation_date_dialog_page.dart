import 'package:flutter/material.dart';
import 'package:mylife/components.dart';

class GraduationDateDialogPage extends StatefulWidget {
  const GraduationDateDialogPage({Key? key}) : super(key: key);

  @override
  State<GraduationDateDialogPage> createState() =>
      _GraduationDateDialogPageState();
}

class _GraduationDateDialogPageState extends State<GraduationDateDialogPage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0.0),
      content: buildContent(),
    );
  }

  Widget buildContent() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: const Color(0xFFBDDED8)),
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: double.maxFinite,
      height: 215,
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 5),
                child: const Text(
                  'Graduation date',
                  style: TextStyle(
                    color: Color(0xFF414C57),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.zero,
                child: MlIconButton(
                  size: 25,
                  tooltip: 'Close',
                  onTap: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.zero,
                  icon: Icons.close,
                  enabledColor: const Color(0xFF237A6A),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Graduation date',
                    style: TextStyle(
                      color: Color(0xFF414C57),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: double.maxFinite,
                    height: 42,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F7F6),
                      shape: BoxShape.rectangle,
                      border: Border.all(color: const Color(0xFF7EBEB2)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Select date',
                          style: TextStyle(
                            color: Color(0xFF237A6A),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: Color(0xFF237A6A),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          GestureDetector(
            onTap: () async {},
            child: Container(
              width: 145,
              height: 39,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFF237A6A),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: const Color(0xFF7EBEB2),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
