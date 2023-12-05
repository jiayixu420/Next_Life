import 'package:flutter/material.dart';
import 'package:mylife/pages.dart';

class FinancialCategoryPage extends StatefulWidget {
  const FinancialCategoryPage({Key? key}) : super(key: key);

  @override
  State<FinancialCategoryPage> createState() => _FinancialCategoryPageState();
}

class _FinancialCategoryPageState extends State<FinancialCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return buildFinancialCategory();
  }

  Widget buildFinancialCategory() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            height: 270,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              border: Border.all(color: const Color(0xFFBDDED8)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    if (context.mounted) {
                      await showDialog(
                        context: context,
                        builder: (context) => const MonthlyIncomeDialogPage(),
                      );
                    }
                  },
                  child: Container(
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
                      'Monthly Income',
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
                    if (context.mounted) {
                      await showDialog(
                        context: context,
                        builder: (context) => const MonthlyExpenseDialogPage(),
                      );
                    }
                  },
                  child: Container(
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
                      'Monthly Expense',
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
                    if (context.mounted) {
                      await showDialog(
                        context: context,
                        builder: (context) => const TotalDebtDialogPage(),
                      );
                    }
                  },
                  child: Container(
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
                      'Total Debt',
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
    );
  }
}
