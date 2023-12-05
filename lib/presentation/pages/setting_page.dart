import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      widget.onGoToPage(2);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      height: 51,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF46A291),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: const Color(0xFF7EBEB2)),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Account',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      widget.onGoToPage(8);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      height: 51,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF46A291),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: const Color(0xFF7EBEB2)),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.help_outline,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Help & Support',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                      height: 36,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Image(
                                image: AssetImage('assets/meta/google.png')),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Sign-in with Google',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                      height: 36,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Image(
                                image: AssetImage(
                                    'assets/meta/ic_twotone-apple.png')),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Sign-in with Apple',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                      height: 36,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Image(
                                image: AssetImage(
                                    'assets/meta/logos_facebook.png')),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Sign-in with Facebook',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                      height: 36,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Image(
                                image: AssetImage(
                                    'assets/meta/ri_amazon-fill.png')),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Sign-in with Amazon',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ],
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
      },
    );
  }
}
