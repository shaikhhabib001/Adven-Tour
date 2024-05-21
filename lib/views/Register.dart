import 'package:flutter/material.dart';

import 'MyHomePage.dart';

const List<Widget> consents = <Widget>[
  Text('Yes'),
  Text('No'),
];

const List<Widget> sex = <Widget>[
  Text('Male'),
  Text('Female'),
];

List<DropdownMenuItem<String>> get preferredDestination {
  List<DropdownMenuItem<String>> destination = [
    const DropdownMenuItem(
      value: "Kashmir",
      child: Text('Kashmir'),
    ),
    const DropdownMenuItem(
      value: "Istanbul",
      child: Text('Istanbul'),
    ),
    const DropdownMenuItem(
      value: "Paris",
      child: Text('Paris'),
    ),
    const DropdownMenuItem(
      value: "Bali",
      child: Text('Bali'),
    ),
    const DropdownMenuItem(
      value: "Dubai",
      child: Text('Dubai'),
    ),
    const DropdownMenuItem(
      value: "Geneva",
      child: Text('Geneva'),
    ),
    const DropdownMenuItem(
      value: "London",
      child: Text('London'),
    ),
    const DropdownMenuItem(
      value: "Rome",
      child: Text('Rome'),
    ),
  ];
  return destination;
}

List<DropdownMenuItem<String>> get preferredPackage {
  List<DropdownMenuItem<String>> package = [
    const DropdownMenuItem(
      value: "Bronze",
      child: Text('Bronze'),
    ),
    const DropdownMenuItem(
      value: "Silver",
      child: Text('Silver'),
    ),
    const DropdownMenuItem(
      value: "Gold",
      child: Text('Gold'),
    ),
    const DropdownMenuItem(
      value: "Platinum",
      child: Text('Platinum'),
    ),
  ];
  return package;
}

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
                        child: const Row(
                          children: [
                            Expanded(child: _Logo()),
                            Expanded(
                              child: Center(child: _FormContent()),
                            ),
                          ],
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
            width: isSmallScreen ? 50 : 150,
            height: isSmallScreen ? 50 : 150),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Welcome to AdvenTours",
            textAlign: TextAlign.center,
            style: isSmallScreen
                ? Theme.of(context).textTheme.headlineMedium
                : Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: const Color(0xFF29395B), fontWeight: FontWeight.bold),
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
  String? gender;
  final List<bool> _selectedGender = <bool>[false, false];

  String? status;
  final List<bool> _selectedStatus = <bool>[false, false];

  List<bool> selectedDestination = List.generate(
      8,
      (_) =>
          false); // Initialize with 8 elements, assuming there are 8 destinations
  List<String> destinations = [
    "Kashmir",
    "Istanbul",
    "Paris",
    "Bali",
    "Dubai",
    "Geneva",
    "London",
    "Rome"
  ];

  List<bool> selectedPackage = List.generate(
      4,
      (_) =>
          false); // Initialize with 8 elements, assuming there are 8 destinations
  List<String> packages = ["Bronze", "Silver", "Gold", "Platinum"];

  String selectedValue1 = "Kashmir";

  String selectedValue2 = "Bronze";
/*

  String? destination;
  final List<bool> _selectedDestination = <bool>[false, false, false, false, false, false, false, false];

  String? package;
  final List<bool> _selectedPackage = <bool>[false, false, false, false];
*/

  bool _rememberMe = false;
  bool _termsAndConditions = false;
  bool _newsletter = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Before we continue, we would like to know more about you!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF29395B),
              ),
            ),
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
                  return 'Please enter your username';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                prefixIcon: Icon(Icons.account_circle_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add name
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Create a password',
                prefixIcon: Icon(Icons.lock_outline_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add birthday
                if (value == null || value.isEmpty) {
                  return 'Please enter your date of birth';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Birthday',
                hintText: 'Enter your birthdate',
                prefixIcon: Icon(Icons.date_range_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add birthday
                if (value == null || value.isEmpty) {
                  return 'Please enter your contact info';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter your phone number',
                prefixIcon: Icon(Icons.location_on_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add birthday
                if (value == null || value.isEmpty) {
                  return 'Please enter where you were born';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Place of Birth',
                hintText: 'Enter your birth place',
                prefixIcon: Icon(Icons.calendar_view_day_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add birthday
                if (value == null || value.isEmpty) {
                  return 'Please enter your current location';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Current Place',
                hintText: 'Enter your current location',
                prefixIcon: Icon(Icons.location_on_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            ListTile(
              title: const Text("Gender"),
              trailing: ToggleButtons(
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedGender.length; i++) {
                      _selectedGender[i] = i == index;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                selectedBorderColor: const Color(0xFFe65c00),
                selectedColor: const Color(0xFFe65c00),
                fillColor: const Color(0xFFfcf3e8),
                color: Colors.black54,
                constraints: BoxConstraints(
                  minHeight: isSmallScreen
                      ? MediaQuery.of(context).size.height * 0.04
                      : MediaQuery.of(context).size.height * 0.04,
                  minWidth: isSmallScreen
                      ? MediaQuery.of(context).size.height * 0.06
                      : MediaQuery.of(context).size.height * 0.08,
                ),
                isSelected: _selectedGender,
                children: sex,
              ),
            ),
            ListTile(
              title: const Text("Married"),
              trailing: ToggleButtons(
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedStatus.length; i++) {
                      _selectedStatus[i] = i == index;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                selectedBorderColor: const Color(0xFFe65c00),
                selectedColor: const Color(0xFFe65c00),
                fillColor: const Color(0xFFfcf3e8),
                color: Colors.black54,
                constraints: BoxConstraints(
                  minHeight: isSmallScreen
                      ? MediaQuery.of(context).size.height * 0.04
                      : MediaQuery.of(context).size.height * 0.04,
                  minWidth: isSmallScreen
                      ? MediaQuery.of(context).size.height * 0.06
                      : MediaQuery.of(context).size.height * 0.08,
                ),
                isSelected: _selectedStatus,
                children: consents,
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add birthday
                if (value == null || value.isEmpty) {
                  return 'Date of Departure';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Planned Date of Departure',
                hintText: 'Enter your Departure Date',
                prefixIcon: Icon(Icons.date_range_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add birthday
                if (value == null || value.isEmpty) {
                  return 'Date of Return';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Planned Date of Return',
                hintText: 'Enter your Return Date',
                prefixIcon: Icon(Icons.date_range_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            ListTile(
              title: const Text(
                "Travel Destination",
                style: TextStyle(color: Color(0xFFe65c00)),
              ),
              trailing: DropdownButton(
                iconEnabledColor: const Color(0xFFe65c00),
                value: selectedValue1,
                items: preferredDestination,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue1 = newValue!;
                  });
                },
              ),
            ),
            _gap(),
            ListTile(
              title: const Text(
                "Travel Package",
                style: TextStyle(color: Color(0xFFe65c00)),
              ),
              trailing: DropdownButton(
                iconEnabledColor: const Color(0xFFe65c00),
                value: selectedValue2,
                items: preferredPackage,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue2 = newValue!;
                  });
                },
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
            CheckboxListTile(
              value: _termsAndConditions,
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  _termsAndConditions = value;
                });
              },
              subtitle: !_termsAndConditions
                  ? const Text(
                      'required',
                      style: TextStyle(color: Colors.red),
                    )
                  : null,
              title: const Text('I agree to the Terms and Conditions'),
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              contentPadding: const EdgeInsets.all(0),
            ),
            _gap(),
            CheckboxListTile(
              value: _newsletter,
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  _newsletter = value;
                });
              },
              title: const Text(
                  'I agree to receive newsletter and understand that I can unsubscribe anytime'),
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
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Submit',
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
                            builder: (context) =>
                                const MyHomePage(title: "AdvenTour")));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 13);

  Widget _gapList() => const SizedBox(height: 2);
}
