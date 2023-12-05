import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    padding: const EdgeInsets.only(left: 15.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF237A6A),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF7EBEB2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.find_in_page_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Path Finder Test',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    padding: const EdgeInsets.only(left: 15.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF237A6A),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF7EBEB2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.toc_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Path Finder Result',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    padding: const EdgeInsets.only(left: 15.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF237A6A),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF7EBEB2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'My Life Profile',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    padding: const EdgeInsets.only(left: 15.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF237A6A),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF7EBEB2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'The Path Profile',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    padding: const EdgeInsets.only(left: 15.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF237A6A),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF7EBEB2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'My Next Life Profile',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    padding: const EdgeInsets.only(left: 15.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF237A6A),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF7EBEB2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.store_mall_directory_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Store',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    widget.onGoToPage(1);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    padding: const EdgeInsets.only(left: 15.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF237A6A),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFF7EBEB2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        return widget.onGoToPage(-1);
      },
    );
  }
}
