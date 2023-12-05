import 'package:flutter/material.dart';

class PathFinderReportPage extends StatefulWidget {
  const PathFinderReportPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<PathFinderReportPage> createState() => _PathFinderReportPageState();
}

class _PathFinderReportPageState extends State<PathFinderReportPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    widget.onGoToPage(12);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF84C1B6),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 5),
                              alignment: Alignment.center,
                              child: const Text(
                                'Your top career',
                                style: TextStyle(
                                  color: Color(0xFF414C57),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: buildNoBadge(1, true),
                            )
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          width: 310,
                          height: 54,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE5F0EE),
                            shape: BoxShape.rectangle,
                            border: null,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Computer scientist',
                            style: TextStyle(
                              color: Color(0xFF237A6A),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        height: 65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: const Color(0xFF84C1B6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              alignment: Alignment.centerLeft,
                              child: buildNoBadge(2, false),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Veterinary',
                                style: TextStyle(
                                  color: Color(0xFF414C57),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        height: 65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: const Color(0xFF84C1B6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              alignment: Alignment.centerLeft,
                              child: buildNoBadge(3, false),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Doctor',
                                style: TextStyle(
                                  color: Color(0xFF414C57),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        width: 165,
                        height: 65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: const Color(0xFF84C1B6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              alignment: Alignment.centerLeft,
                              child: buildNoBadge(4, false),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Firefighter',
                                style: TextStyle(
                                  color: Color(0xFF414C57),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        width: 165,
                        height: 65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: const Color(0xFF84C1B6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              alignment: Alignment.centerLeft,
                              child: buildNoBadge(5, false),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Paramedic',
                                style: TextStyle(
                                  color: Color(0xFF414C57),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                widget.onGoToPage(10);
              },
              child: Container(
                height: 42,
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
                  'Find Another Path',
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
      ),
      onWillPop: () async {
        return widget.onGoToPage(-1);
      },
    );
  }

  Widget buildNoBadge(int idx, bool isActived) {
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActived
            ? const Color(0xFFFFE146).withOpacity(0.4)
            : const Color(0xFFE5F0EE),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: isActived ? const Color(0xFFFFE146) : Colors.transparent,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        '#$idx',
        style: TextStyle(
          color: isActived ? const Color(0xFFC2A407) : const Color(0xFF237A6A),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
