import 'package:flutter/material.dart';

class YourAnswerPage extends StatefulWidget {
  const YourAnswerPage({
    required this.onGoToPage,
    super.key,
  });

  /// The action to go to target page when tap,
  final bool Function(int) onGoToPage;

  @override
  State<YourAnswerPage> createState() => _YourAnswerPageState();
}

class _YourAnswerPageState extends State<YourAnswerPage>
    with SingleTickerProviderStateMixin {
  final PageController _answersController = PageController();
  late AnimationController _animationController;
  int _activePage = 0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _answersController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'What is your answer to...?',
                style: TextStyle(
                  color: Color(0xFF414C57),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: indicators(13, _activePage),
              ),
              const SizedBox(height: 130.0),
              SizedBox(
                width: double.maxFinite,
                height: 250.0,
                child: PageView(
                  controller: _answersController,
                  children: [
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                    buildAnswerCard(),
                  ],
                  onPageChanged: (page) {
                    setState(() {
                      _activePage = page;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      prevPage();
                    },
                    child: Image.asset('assets/meta/pre_answer.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      nextPage();
                    },
                    child: Image.asset('assets/meta/next_answer.png'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      onWillPop: () async {
        return widget.onGoToPage(-1);
      },
    );
  }

  Widget buildAnswerCard() {
    return GestureDetector(
      onTap: () {
        widget.onGoToPage(11);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 95),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          border: Border.all(
            color: const Color(0xFF84C1B6),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Text(
          'This is answer #1 to the question you are currently answering.',
          style: TextStyle(
            color: Color(0xFF414C57),
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  List<Widget> indicators(answerLength, currentIndex) {
    return List<Widget>.generate(
      answerLength,
      (index) {
        return Container(
          margin: const EdgeInsets.all(1),
          width: 14,
          height: 4,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color(0xFF237A6A)
                : const Color(0xFF7EBEB2),
            shape: BoxShape.rectangle,
          ),
        );
      },
    );
  }

  void prevPage() {
    _answersController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    _animationController.reset();
    _animationController.forward();
  }

  void nextPage() {
    _answersController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    _animationController.reset();
    _animationController.forward();
  }
}
