import 'package:flutter/material.dart';
import 'package:mylife/components.dart';

class CertificationDialogPage extends StatefulWidget {
  const CertificationDialogPage({Key? key}) : super(key: key);

  @override
  State<CertificationDialogPage> createState() =>
      _CertificationDialogPageState();
}

class _CertificationDialogPageState extends State<CertificationDialogPage> {
  late final TextEditingController _certificationController;

  @override
  void initState() {
    super.initState();
    _certificationController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0.0),
      content: buildContent(),
    );
  }

  Widget buildContent() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: const Color(0xFFBDDED8)),
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: double.maxFinite,
      height: 275,
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 5),
                child: const Text(
                  'Certifications',
                  style: TextStyle(
                    color: Color(0xFF414C57),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.zero,
                child: MlIconButton(
                  size: 25,
                  tooltip: 'Close',
                  onTap: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.zero,
                  icon: Icons.close,
                  enabledColor: const Color(0xFF237A6A),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Certification',
                          style: TextStyle(
                            color: Color(0xFF414C57),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        SizedBox(
                          width: 140,
                          height: 42,
                          child: TextField(
                            controller: _certificationController,
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
                                  borderSide: const BorderSide(
                                      color: Color(0xFF237A6A))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFF237A6A)),
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
                          'Year',
                          style: TextStyle(
                            color: Color(0xFF414C57),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          height: 42,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: const Color(0xFF237A6A)),
                            color: const Color(0xFFF1F7F6),
                          ),
                          alignment: Alignment.center,
                          child: DropdownButton<String>(
                            value: '2023',
                            style: const TextStyle(color: Color(0xFF46A291)),
                            isExpanded: true,
                            dropdownColor: const Color(0xFFF1F7F6),
                            onChanged: (newValue) {},
                            underline: Container(),
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF46A291),
                            ),
                            items: <String>['2023', '2022', '2021']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
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
                const SizedBox(height: 20.0),
                Container(
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Color(0xFF7EBEB2),
                    shape: BoxShape.rectangle,
                  ),
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  child: const Text(
                    'Add additional hobby',
                    style: TextStyle(
                      color: Color(0xFF237A6A),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Color(0xFF7EBEB2),
                    shape: BoxShape.rectangle,
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {},
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
