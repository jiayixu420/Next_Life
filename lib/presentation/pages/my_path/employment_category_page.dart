import 'package:flutter/material.dart';
import 'package:mylife/components.dart';

class EmploymentCategoryPage extends StatefulWidget {
  const EmploymentCategoryPage({
    super.key,
  });

  @override
  State<EmploymentCategoryPage> createState() => _EmploymentCategoryPageState();
}

class _EmploymentCategoryPageState extends State<EmploymentCategoryPage> {
  int _activeSubPageIdx = 0;

  late final TextEditingController _employerController;
  late final TextEditingController _jobTitlerController;

  @override
  void initState() {
    super.initState();
    _employerController = TextEditingController();
    _jobTitlerController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> subPages = [
      buildEmploymentCategory(),
      buildCurrentJob(),
      buildPastJob(),
    ];

    return Column(
      children: <Widget>[
        subPages[_activeSubPageIdx],
      ],
    );
  }

  Widget buildEmploymentCategory() {
    return Container(
      width: double.maxFinite,
      height: 150,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: const Color(0xFFBDDED8)),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () async {
                  setState(() {
                    _activeSubPageIdx = 1;
                  });
                },
                child: Container(
                  width: 145,
                  height: 40,
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
                    'Current Job',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  setState(() {
                    _activeSubPageIdx = 2;
                  });
                },
                child: Container(
                  width: 145,
                  height: 40,
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
                    'Past Job',
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
        ],
      ),
    );
  }

  Widget buildCurrentJob() {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 340,
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
          const Text(
            'Current Job',
            style: TextStyle(
              color: Color(0xFF414C57),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Employer',
                    style: TextStyle(
                      color: Color(0xFF414C57),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: 133,
                    height: 42,
                    child: TextField(
                      controller: _employerController,
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
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Job Title',
                    style: TextStyle(
                      color: Color(0xFF414C57),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: 133,
                    height: 42,
                    child: TextField(
                      controller: _jobTitlerController,
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
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.only(top: 20),
                child: MlIconButton(
                  size: 25,
                  tooltip: 'Delete',
                  padding: EdgeInsets.zero,
                  onTap: () {
                    setState(() {});
                  },
                  icon: Icons.delete_outline,
                  enabledColor: const Color(0xFFF75757),
                ),
              )
            ],
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Color(0xFFE5F0EE),
              shape: BoxShape.rectangle,
            ),
          ),
          const SizedBox(height: 15.0),
          GestureDetector(
            onTap: () async {
              setState(() {
                _activeSubPageIdx = 0;
              });
            },
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
                '\$ / HR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Color(0xFFE5F0EE),
              shape: BoxShape.rectangle,
            ),
          ),
          const SizedBox(height: 15.0),
          GestureDetector(
            child: const Text(
              'Add content',
              style: TextStyle(
                color: Color(0xFF237A6A),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Color(0xFFE5F0EE),
              shape: BoxShape.rectangle,
            ),
          ),
          const SizedBox(height: 20.0),
          GestureDetector(
            onTap: () async {
              setState(() {
                _activeSubPageIdx = 0;
              });
            },
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

  Widget buildPastJob() {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 340,
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
          const Text(
            'Past Job',
            style: TextStyle(
              color: Color(0xFF414C57),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Employer',
                    style: TextStyle(
                      color: Color(0xFF414C57),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: 133,
                    height: 42,
                    child: TextField(
                      controller: _employerController,
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
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Job Title',
                    style: TextStyle(
                      color: Color(0xFF414C57),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: 133,
                    height: 42,
                    child: TextField(
                      controller: _jobTitlerController,
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
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.only(top: 20),
                child: MlIconButton(
                  size: 25,
                  tooltip: 'Delete',
                  padding: EdgeInsets.zero,
                  onTap: () {
                    setState(() {});
                  },
                  icon: Icons.delete_outline,
                  enabledColor: const Color(0xFFF75757),
                ),
              )
            ],
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Color(0xFFE5F0EE),
              shape: BoxShape.rectangle,
            ),
          ),
          const SizedBox(height: 15.0),
          GestureDetector(
            onTap: () async {
              setState(() {
                _activeSubPageIdx = 0;
              });
            },
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
                '\$ / HR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Color(0xFFE5F0EE),
              shape: BoxShape.rectangle,
            ),
          ),
          const SizedBox(height: 15.0),
          GestureDetector(
            child: const Text(
              'Add content',
              style: TextStyle(
                color: Color(0xFF237A6A),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              color: Color(0xFFE5F0EE),
              shape: BoxShape.rectangle,
            ),
          ),
          const SizedBox(height: 20.0),
          GestureDetector(
            onTap: () async {
              setState(() {
                _activeSubPageIdx = 0;
              });
            },
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
