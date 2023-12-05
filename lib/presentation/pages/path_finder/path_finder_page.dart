import 'package:flutter/material.dart';

class PathFinderPage extends StatefulWidget {
  const PathFinderPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<PathFinderPage> createState() => _PathFinderPageState();
}

class _PathFinderPageState extends State<PathFinderPage> {
  late final TextEditingController _surveyController;

  @override
  void initState() {
    super.initState();
    _surveyController = TextEditingController();
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
            const Text(
              'Survey topic',
              style: TextStyle(
                color: Color(0xFF414C57),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _surveyController,
              maxLines: 4,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(15.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF7EBEB2)),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFF7EBEB2))),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF7EBEB2)),
                    borderRadius: BorderRadius.circular(8)),
                hintText: 'Enter the topic of your survey',
                hintStyle: TextStyle(
                  color: const Color(0x414C5766).withOpacity(0.4),
                  fontSize: 14,
                ),
              ),
              onChanged: (value) {},
            ),
            Expanded(
              child: Container(),
            ),
            GestureDetector(
              onTap: () async {
                FocusScope.of(context).unfocus();
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
                  'Begin survey',
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
}
