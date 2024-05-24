import 'package:adventour/views/MyHomePage.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
        backgroundColor: const Color(0xFFfdfaf5),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: isSmallScreen
                  ? const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 25),
                        _Logo(),
                        SizedBox(height: 15),
                        _ButtonContent(),
                      ],
                    )
                  : Container(
                      padding: const EdgeInsets.all(32.0),
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: const Row(
                        children: [
                          Expanded(child: _Logo()),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: Center(child: _ButtonContent()),
                          ),
                        ],
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
        Image.asset("assets/images/text-logo-new.png",
            width: isSmallScreen ? 400 : 800),
      ],
    );
  }
}

class _ButtonContent extends StatefulWidget {
  const _ButtonContent({Key? key}) : super(key: key);

  @override
  State<_ButtonContent> createState() => __ButtonContentState();
}

class __ButtonContentState extends State<_ButtonContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Column(
      mainAxisSize: MainAxisSize.min,
      //constraints: const BoxConstraints(maxWidth: 300),
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset("assets/icons/color-map.png",
            width: isSmallScreen ? 200 : 300),
        const SizedBox(height: 30),
        Wrap(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "WELCOME",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF1a1a1a),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset("assets/icons/english.png", width: 60, height: 60),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFFe65c00)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                          title: 'AdvenTour',
                        ),
                      ),
                    );
                  },
                  child: const Text("Continue"),
                ),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "KARIBU SANA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF1a1a1a),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset("assets/icons/kenya.png", width: 60, height: 60),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                        const Color(0xFFe65c00)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage(
                                  title: 'AdvenTour',
                                )));
                  },
                  child: const Text("Endelea"),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget _gap() => const SizedBox(height: 13);

  Widget _gapList() => const SizedBox(width: 20);
}
