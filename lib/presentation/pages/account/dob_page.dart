import 'package:flutter/material.dart';

class DobPage extends StatefulWidget {
  const DobPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<DobPage> createState() => _DobPageState();
}

class _DobPageState extends State<DobPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                height: 342,
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
                      'Current date of birth',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 41,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F7F6),
                        shape: BoxShape.rectangle,
                        border: null,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '01/03/2001',
                        style: TextStyle(
                          color: Color(0xFF414C57),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color(0xFFBDDED8),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'New date of birth',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border:
                                  Border.all(color: const Color(0xFF237A6A)),
                              color: const Color(0xFFF1F7F6),
                            ),
                            alignment: Alignment.center,
                            child: DropdownButton<String>(
                              value: 'DD',
                              style: const TextStyle(color: Color(0xFF46A291)),
                              isExpanded: true,
                              dropdownColor: const Color(0xFFF1F7F6),
                              onChanged: (newValue) {},
                              underline: Container(),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF46A291),
                              ),
                              items: <String>[
                                'DD'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Expanded(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border:
                                  Border.all(color: const Color(0xFF237A6A)),
                              color: const Color(0xFFF1F7F6),
                            ),
                            alignment: Alignment.center,
                            child: DropdownButton<String>(
                              value: 'MM',
                              style: const TextStyle(color: Color(0xFF46A291)),
                              isExpanded: true,
                              dropdownColor: const Color(0xFFF1F7F6),
                              onChanged: (newValue) {},
                              underline: Container(),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF46A291),
                              ),
                              items: <String>[
                                'MM'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Expanded(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border:
                                  Border.all(color: const Color(0xFF237A6A)),
                              color: const Color(0xFFF1F7F6),
                            ),
                            alignment: Alignment.center,
                            child: DropdownButton<String>(
                              value: 'YYYY',
                              style: const TextStyle(color: Color(0xFF46A291)),
                              isExpanded: true,
                              dropdownColor: const Color(0xFFF1F7F6),
                              onChanged: (newValue) {},
                              underline: Container(),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF46A291),
                              ),
                              items: <String>[
                                'YYYY'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color(0xFFBDDED8),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 25.0),
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
        onWillPop: () async {
          return widget.onGoToPage(-1);
        });
  }
}
