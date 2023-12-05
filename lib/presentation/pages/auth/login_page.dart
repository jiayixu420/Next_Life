import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();

    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image(
                    image: const AssetImage('assets/meta/logo.png'),
                    width: MediaQuery.of(context).size.width * 0.35,
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      prefixIcon: const Icon(Icons.person_outline),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.42),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      prefixIcon: const Icon(Icons.lock_outline),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.42),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      child: const Text(
                        'Forget password',
                        style: TextStyle(
                          color: Color(0xFF237A6A),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () async {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Container(
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF237A6A),
                        shape: BoxShape.rectangle,
                        border: null,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  //
                  GestureDetector(
                    onTap: () {
                      print("!!!!!!");
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.42),
                          fontSize: 14,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Color(0xFF237A6A),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: const BoxDecoration(
                            color: Color(0xFF949494),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'or',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.42),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: const BoxDecoration(
                            color: Color(0xFF949494),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                      height: 36,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: const Color(0xFFC3C3C3)),
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
                        border: Border.all(color: const Color(0xFFC3C3C3)),
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
                        border: Border.all(color: const Color(0xFFC3C3C3)),
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
                        border: Border.all(color: const Color(0xFFC3C3C3)),
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
          ),
        ),
      ),
    );
  }
}
