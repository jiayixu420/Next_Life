import 'package:flutter/material.dart';
import 'package:mylife/components.dart';

class AvatarDialogPage extends StatefulWidget {
  const AvatarDialogPage({Key? key}) : super(key: key);

  @override
  State<AvatarDialogPage> createState() => _AvatarDialogPageState();
}

class _AvatarDialogPageState extends State<AvatarDialogPage> {
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
      height: 350,
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45,
                  backgroundImage: AssetImage('assets/meta/avatar.jpg'),
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
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {},
                        child: Container(
                          height: 42,
                          width: 128,
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
                            'Upload picture',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {},
                        child: Container(
                          height: 42,
                          width: 128,
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
                            'Take photo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 130.0,
                  child: GridView.count(
                    crossAxisCount: 4,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: null,
                        ),
                        child: Image.asset('assets/meta/photo1.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: null,
                        ),
                        child: Image.asset('assets/meta/photo1.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: null,
                        ),
                        child: Image.asset('assets/meta/photo1.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: null,
                        ),
                        child: Image.asset('assets/meta/photo1.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: null,
                        ),
                        child: Image.asset('assets/meta/photo1.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: null,
                        ),
                        child: Image.asset('assets/meta/photo1.png'),
                      ),
                    ],
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
