// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:intro_slider/intro_slider.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   SignUpState createState() => SignUpState();
// }

// class SignUpState extends State<SignUp> {
//   List<ContentConfig> listContentConfig = [];

//   @override
//   void initState() {
//     super.initState();

//     listContentConfig.add(
//       ContentConfig(
//         // title: "ERASER \n asdf",
//         description:
//             "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//         // pathImage: "assets/meta/slide_img.png",
//         backgroundColor: Color.fromARGB(255, 35, 34, 34),
//         centerWidget: Column(
//           children: <Widget>[
//             Container(
//               color: Colors.red,
//               padding: const EdgeInsets.only(left: 40),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   'Your Next Life',
//                   style: customTextStyle,
//                 ),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.only(left: 40, bottom: 40),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   'Begins Now...',
//                   style: customTextStyle,
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(bottom: 5000),
//               child: const Align(
//                 alignment: Alignment.center,
//                 child: Image(image: AssetImage('assets/meta/slide_img.png')),
//               ),
//             ),
//             Container(
//               color: Colors.red,
//               height: 500,
//             ),
//           ],
//           //   centerWidget: Container(
//           //     padding: EdgeInsets.only(top: 500),
//           //     child: const Text(
//           //       'Hello',
//           //       style: TextStyle(color: Color(0x298977)),
//           //     ),
//           //   ),
//         ),
//       ),
//     );
//     listContentConfig.add(
//       const ContentConfig(
//         title: "PENCIL",
//         description:
//             "Ye indulgence unreserved connection alteration appearance",
//         pathImage: "assets/meta/photo_pencil.png",
//         backgroundColor: Color(0xff203152),
//       ),
//     );
//     listContentConfig.add(
//       const ContentConfig(
//         title: "RULER",
//         description:
//             "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
//         pathImage: "assets/meta/photo_ruler.png",
//         backgroundColor: Color(0xff9932CC),
//       ),
//     );
//   }

//   void onDonePress() {
//     log("End of slides");
//   }

//   final TextStyle customTextStyle = const TextStyle(
//     color: Color(0xFF298977),
//     fontSize: 30,
//     fontFamily: 'Joti',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return IntroSlider(
//       key: UniqueKey(),
//       listContentConfig: listContentConfig,
//       onDonePress: onDonePress,
//       isShowSkipBtn: false,
//       isShowNextBtn: false,
//       isShowPrevBtn: false,
//       isShowDoneBtn: false,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _SignUpState extends State<SignUp> {
  late int selectedPage;
  late int selectedRadio;
  late final PageController _pageController;

  String dropdownValue = list.first;
  String age = "25";
  List<String> ageList = [];
  @override
  void initState() {
    selectedPage = 0;
    selectedRadio = 1;
    _pageController = PageController(initialPage: selectedPage);
    for (int i = 0; i < 120; i++) {
      ageList.add(i.toString());
    }
    super.initState();
  }

  final TextStyle customTextStyle = const TextStyle(
    color: Color(0xFF298977),
    fontSize: 30,
    fontFamily: 'Joti',
  );

  @override
  Widget build(BuildContext context) {
    const pageCount = 6;

    // ignore: unused_local_variable

    return MaterialApp(
      title: 'Page view dot indicator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
                  children: List.generate(pageCount, (index) {
                    if (index == 0) {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            margin: const EdgeInsets.only(top: 100),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Your Next Life',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Begins Now...',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 40),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Image(
                                  image:
                                      AssetImage('assets/meta/slide_img.png')),
                            ),
                          ),
                        ],
                      );
                    } else if (index == 1) {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            margin: const EdgeInsets.only(top: 100),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Let’s start with few of ',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'your life details',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 40),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Image(
                                  image:
                                      AssetImage('assets/meta/slide_img.png')),
                            ),
                          ),
                        ],
                      );
                    } else if (index == 2) {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            margin: const EdgeInsets.only(top: 100),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'How old are you?',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(30),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: const Color(0xFFE5F0EE),
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the border radius
                                border: Border.all(
                                  color: Color(
                                      0xFF237A6A), // Adjust the border color
                                  width: 2.0, // Adjust the border width
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: DropdownButton<String>(
                                  value: age,
                                  items: ageList.map<DropdownMenuItem<String>>(
                                    (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (String? value) {
                                    // print("Selected value: $value");
                                    setState(() {
                                      age = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 270),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (selectedPage < pageCount - 1) {
                                    // Navigate to the next page
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                    );
                                    setState(() {
                                      selectedPage++;
                                    });
                                  }
                                },
                                child: Text("Next"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF237A6A),
                                  minimumSize: Size(280, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Set border radius
                                    side: const BorderSide(
                                      color:
                                          Color(0xFF7EBEB2), // Set border color
                                      width: 1.5, // Set border width
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else if (index == 3) {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            margin: const EdgeInsets.only(top: 100),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Where do you live?',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            margin: const EdgeInsets.only(top: 100),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Zipcoder',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.only(
                                left: 30, top: 5, right: 30),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: const Color(0xFFE5F0EE),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFF237A6A),
                                  width: 2.0,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: TextField(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 250),
                            child: Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (selectedPage < pageCount - 1) {
                                    // Navigate to the next page
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                    );
                                    setState(() {
                                      selectedPage++;
                                    });
                                  }
                                },
                                child: Text("Next"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF237A6A),
                                  minimumSize: Size(300, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Set border radius
                                    side: const BorderSide(
                                      color:
                                          Color(0xFF7EBEB2), // Set border color
                                      width: 1.5, // Set border width
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else if (index == 4) {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            margin: const EdgeInsets.only(top: 100),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Do you work or go to school?',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Radio(
                                      value: 1,
                                      groupValue: selectedRadio,
                                      onChanged: (int? value) {
                                        setState(() {
                                          selectedRadio = value!;
                                        });
                                      },
                                    ),
                                    Text("Yes"),
                                  ],
                                ),
                                SizedBox(
                                    width:
                                        20), // Add some spacing between radio buttons and text
                                Row(
                                  children: <Widget>[
                                    SizedBox(width: 100),
                                    Radio(
                                      value: 2,
                                      groupValue: selectedRadio,
                                      onChanged: (int? value) {
                                        setState(() {
                                          selectedRadio = value!;
                                        });
                                      },
                                    ),
                                    Text("No"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 301),
                            child: Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (selectedPage < pageCount - 1) {
                                    // Navigate to the next page
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                    );
                                    setState(() {
                                      selectedPage++;
                                    });
                                  }
                                },
                                child: Text("Next"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF237A6A),
                                  minimumSize: Size(300, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Set border radius
                                    side: const BorderSide(
                                      color:
                                          Color(0xFF7EBEB2), // Set border color
                                      width: 1.5, // Set border width
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            margin: const EdgeInsets.only(top: 100),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'You are on your way!',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Let’s find the best path for you',
                                style: customTextStyle,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 340),
                            child: Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (selectedPage < pageCount - 1) {
                                    // Navigate to the next page
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                    );
                                    setState(() {
                                      selectedPage++;
                                    });
                                  }
                                },
                                child: Text("Pathfinder"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF237A6A),
                                  minimumSize: Size(300, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Set border radius
                                    side: const BorderSide(
                                      color:
                                          Color(0xFF7EBEB2), // Set border color
                                      width: 1.5, // Set border width
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PageViewDotIndicator(
                  currentItem: selectedPage,
                  count: pageCount,
                  unselectedColor: Color(0xFFE3F0ED),
                  selectedColor: Color(0xFF298977),
                  duration: const Duration(milliseconds: 200),
                  boxShape: BoxShape.circle,
                  onItemClicked: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
