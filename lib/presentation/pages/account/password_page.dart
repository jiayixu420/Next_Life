import 'package:flutter/material.dart';
import 'package:mylife/components.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  late final TextEditingController _currentPwdController;
  late final TextEditingController _newPwdController;
  late final TextEditingController _confirmPwdController;

  @override
  void initState() {
    super.initState();
    _currentPwdController = TextEditingController(text: 'Current password');
    _newPwdController = TextEditingController(text: 'password123');
    _confirmPwdController = TextEditingController(text: 'password123');
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
                height: 420,
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
                      'Current password',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 42.0,
                      child: TextField(
                        controller: _currentPwdController,
                        style: const TextStyle(color: Color(0xFF46A291)),
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFF1F7F6),
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
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
                          suffixIcon: MlIconButton(
                            size: 20,
                            tooltip: 'Show',
                            onTap: () {
                              setState(() {});
                            },
                            icon: Icons.visibility_off,
                            enabledColor: const Color(0xFF237A6A),
                          ),
                        ),
                        onChanged: (value) {},
                        textAlign: TextAlign.start,
                        obscureText: true,
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
                      'New password',
                      style: TextStyle(
                        color: Color(0xFF414C57),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 42.0,
                      child: TextField(
                        controller: _newPwdController,
                        style: const TextStyle(color: Color(0xFF46A291)),
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFF1F7F6),
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
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
                    ),
                    const SizedBox(height: 25.0),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Confirm new password',
                        style: TextStyle(
                          color: Color(0xFF414C57),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 42.0,
                      child: TextField(
                        controller: _confirmPwdController,
                        style: const TextStyle(color: Color(0xFF46A291)),
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFF1F7F6),
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
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
                    ),
                    const SizedBox(height: 35.0),
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
