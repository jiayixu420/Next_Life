import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  late final TextEditingController _genderController;

  @override
  void initState() {
    super.initState();
    _genderController = TextEditingController(text: 'Man');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                height: 215,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(color: const Color(0xFFBDDED8)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Gender',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    TextField(
                      controller: _genderController,
                      style: const TextStyle(color: Color(0xFF46A291)),
                      decoration: InputDecoration(
                        fillColor: const Color(
                            0xFFF1F7F6), // Set the color inside the TextField
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFF237A6A)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xFF237A6A))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF237A6A)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onChanged: (value) {},
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () async {},
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
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        return widget.onGoToPage(-1);
      },
    );
  }
}
