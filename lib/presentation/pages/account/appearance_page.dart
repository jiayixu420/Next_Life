import 'package:flutter/material.dart';

class AppearancePage extends StatefulWidget {
  const AppearancePage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<AppearancePage> createState() => _AppearancePageState();
}

class _AppearancePageState extends State<AppearancePage> {
  late int _selectedMode;

  @override
  void initState() {
    super.initState();
    _selectedMode = 0;
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
                height: 365,
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
                      'Appearance',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setSelectedModeValue(0);
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/meta/light_mode.png'),
                                Radio(
                                  value: 0,
                                  groupValue: _selectedMode,
                                  activeColor: const Color(0xFF298977),
                                  focusColor: const Color(0xFF298977),
                                  onChanged: (value) {
                                    setSelectedModeValue(value ?? 0);
                                  },
                                ),
                                const Text(
                                  'Light mode',
                                  style: TextStyle(
                                    color: Color(0xFF414C57),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setSelectedModeValue(1);
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/meta/dark_mode.png'),
                                Radio(
                                  value: 1,
                                  groupValue: _selectedMode,
                                  activeColor: const Color(0xFF298977),
                                  focusColor: const Color(0xFF298977),
                                  onChanged: (value) {
                                    setSelectedModeValue(value ?? 1);
                                  },
                                ),
                                const Text(
                                  'Dark mode',
                                  style: TextStyle(
                                    color: Color(0xFF414C57),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
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

  setSelectedModeValue(int value) {
    setState(() {
      _selectedMode = value;
    });
  }
}
