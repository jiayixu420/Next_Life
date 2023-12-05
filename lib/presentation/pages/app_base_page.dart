import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

import 'package:mylife/pages.dart';
import 'package:mylife/constants.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int? _selectedProfileIdx;
  late List<int> _pageHistory;
  int _currentPageIndex = 0;
  final PageController _pageController = PageController();
  late final ExpandableController _expandableController;

  @override
  void initState() {
    super.initState();
    _pageHistory = [0];
    _expandableController = ExpandableController(initialExpanded: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f0ee),
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          ExpandableNotifier(
            controller: _expandableController,
            child: Expandable(
              collapsed: const SizedBox.shrink(),
              expanded: buildHeaderSection(),
              theme: const ExpandableThemeData(
                animationDuration: Duration(milliseconds: 500),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomePage(onGoToPage: goToPage),
                SettingPage(onGoToPage: goToPage),
                AccountPage(onGoToPage: goToPage),
                DobPage(onGoToPage: goToPage),
                UsernamePage(onGoToPage: goToPage),
                GenderPage(onGoToPage: goToPage),
                PasswordPage(onGoToPage: goToPage),
                AppearancePage(onGoToPage: goToPage),
                HelpSupportPage(onGoToPage: goToPage),
                PathFinderPage(onGoToPage: goToPage),
                YourAnswerPage(onGoToPage: goToPage),
                PathFinderReportPage(onGoToPage: goToPage),
                DetailPathInfoPage(onGoToPage: goToPage),
                PathSettingPage(onGoToPage: goToPage),
                Container(),
              ],
              onPageChanged: (value) {
                _currentPageIndex = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget? buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF237A6A),
      leading: buildLeading(),
      title: buildTitle(),
      actions: buildActions(),
      titleSpacing: 8,
    );
  }

  Widget buildHeaderSection() {
    return Container(
      color: const Color(0xFF237A6A),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () async {
                  goToPage(9);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  padding: const EdgeInsets.only(left: 15.0),
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7EBEB2),
                    shape: BoxShape.rectangle,
                    border: Border.all(color: const Color(0xFF7EBEB2)),
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
                        'Path Finder',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: 40,
                  padding: const EdgeInsets.only(left: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7EBEB2),
                    shape: BoxShape.rectangle,
                    border: Border.all(color: const Color(0xFF7EBEB2)),
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
            ],
          ),
          const SizedBox(height: 20.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: null,
              color: const Color(0xFF7EBEB2),
            ),
            alignment: Alignment.center,
            child: DropdownButton<String>(
              value: _selectedProfileIdx != null
                  ? profileTypes[_selectedProfileIdx!]
                  : null,
              hint: const Text(
                'Select an option',
                style: TextStyle(color: Colors.white),
              ),
              style: const TextStyle(color: Colors.white),
              isExpanded: true,
              dropdownColor: const Color(0xFF7EBEB2),
              underline: Container(),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              items: profileTypes.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                _selectedProfileIdx = profileTypes.indexOf(newValue!);
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget? buildLeading() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: GestureDetector(
        onTap: () {
          goToPage(2);
        },
        child: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          backgroundImage: AssetImage('assets/meta/avatar.jpg'),
        ),
      ),
    );
  }

  Widget buildTitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 5.0),
      child: Text(
        'Welcome, Rohan',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  List<Widget> buildActions() {
    return [
      GestureDetector(
        onTap: () async {
          _expandableController.toggle();
          // goToPage(0);
        },
        child: Container(
          margin: const EdgeInsets.only(right: 15.0, top: 5.0),
          width: 95,
          height: 37,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFF7EBEB2),
            shape: BoxShape.rectangle,
            border: Border.all(color: const Color(0xFF7EBEB2)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 10.0),
              Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ),
      ),
    ];
  }

  bool goToPage(int pageIdx) {
    if (pageIdx >= 0 && pageIdx != _currentPageIndex) {
      _pageHistory.add(pageIdx);
      _pageController.animateToPage(
        pageIdx,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
      return false;
    } else if (_pageHistory.length > 1 && pageIdx < 0) {
      _pageHistory.removeLast();
      goToPage(_pageHistory.last);
      _pageHistory.removeLast();
      return false;
    }
    return true;
  }
}
