import 'package:flutter/material.dart';

class DetailPathInfoPage extends StatefulWidget {
  const DetailPathInfoPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<DetailPathInfoPage> createState() => _DetailPathInfoPageState();
}

class _DetailPathInfoPageState extends State<DetailPathInfoPage> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: const Text(
                      'Selected path',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                  const SizedBox(height: 20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Info about path',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Lorem ipsum dolor sit amet consectetur. Aliquam dictumst id cursus morbi nulla in in. Platea in aliquam ac netus convallis eu etiam et elementum. Commodo duis interdum nunc cras imperdiet. Massa pellentesque habitant tellus luctus justo.',
                    style: TextStyle(
                      color: Color(0xFF414C57),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onTap: () async {
                      widget.onGoToPage(13);
                    },
                    child: Container(
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
                        'Walk this path',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Expanded(
                  flex: 4,
                  child: GestureDetector(
                    onTap: () async {
                      widget.onGoToPage(10);
                    },
                    child: Container(
                      height: 39,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: const Color(0xFF84C1B6),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        'Choose another path',
                        style: TextStyle(
                          color: Color(0xFF237A6A),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
