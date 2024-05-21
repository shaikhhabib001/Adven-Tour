import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'MyHomePage.dart';
import 'Register.dart';

const List<Widget> consents = <Widget>[
  Text('Yes'),
  Text('No'),
];

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Dialog(
              insetPadding: const EdgeInsets.all(32.0),
              alignment: Alignment.center,
              elevation: 10,
              child: Center(
                child: isSmallScreen
                    ? const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _Logo(),
                          _FormContent(),
                        ],
                      )
                    : Container(
                        padding: const EdgeInsets.all(32.0),
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: const Center(
                          child: Row(
                            children: [
                              Expanded(child: _Logo()),
                              Expanded(
                                child: Center(child: _FormContent()),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            )));
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 15,
        ),
        Image.asset("assets/images/logo-black.png",
            width: isSmallScreen ? 100 : 250,
            height: isSmallScreen ? 100 : 250),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Welcome to AdvenTour",
            textAlign: TextAlign.center,
            style: isSmallScreen
                ? Theme.of(context).textTheme.headlineMedium
                : Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: const Color(0xFF333333)),
          ),
        )
      ],
    );
  }
}

class _FormContent extends StatefulWidget {
  const _FormContent({Key? key}) : super(key: key);

  @override
  State<_FormContent> createState() => __FormContentState();
}

class __FormContentState extends State<_FormContent> {
  bool _rememberMe = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _gap(),
              TextFormField(
                validator: (value) {
                  // add name
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.alternate_email_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
              _gap(),
              TextFormField(
                validator: (value) {
                  // add name
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  border: OutlineInputBorder(),
                ),
              ),
              _gap(),
              CheckboxListTile(
                value: _rememberMe,
                onChanged: (value) {
                  if (value == null) return;
                  setState(() {
                    _rememberMe = value;
                  });
                },
                title: const Text('Remember me'),
                controlAffinity: ListTileControlAffinity.leading,
                dense: true,
                contentPadding: const EdgeInsets.all(0),
              ),
              _gap(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF29395B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(
                            title: "AdvenTour",
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              _gap(),
              _gap(),
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "Don't have an account yet?",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.center,
                  )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      child: const Text("Sign Up!",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF29395B)),
                          textAlign: TextAlign.center)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 13);
}
