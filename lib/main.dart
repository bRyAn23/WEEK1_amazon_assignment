import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'asset/logo.png',
            width: 90,
            height: 30,
          ),
        ),
        backgroundColor: const Color.fromRGBO(14, 22, 30, 1.0),
        leadingWidth: 75,
        leading: const Center(
          child: Text(
            "Back",
            style: TextStyle(
                color: Color.fromRGBO(1, 166, 251, 1.0),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.refresh_rounded,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        color: const Color.fromRGBO(14, 22, 30, 1.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create account",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                hintText: "Name",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0), height: 1),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                hintText: "Your email address",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0), height: 1),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                hintText: "Create a password",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0), height: 1),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.info,
                          size: 20,
                          color: Color.fromRGBO(1, 166, 251, 1.0),),
                    ),
                    TextSpan(
                        text: '   Passwords must be at least 6 characters.',
                        style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: ctrlCheckBox(),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {
                  print("Sign In Button tapped !!");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(1, 166, 251, 1.0),
                  ),
                ),
                child: const Text(
                  "Create Amazon Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: const TextSpan(
                text: "By creating an account, you agree to ",
                style: TextStyle(color: Colors.grey,height: 1.5),
                children: <TextSpan>[
                  TextSpan(
                    text: 'the Prime Video Terms Of Use',
                    style: TextStyle(color: Color.fromRGBO(1, 166, 251, 1.0)),
                  ),
                  TextSpan(
                      text:
                          ' and License agreements which can be fund on the Amazon website.',
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Already have an accounts?",
              style: TextStyle(color: Color.fromRGBO(246, 246, 246, 1.0),fontSize: 15,fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {
                  print("Sign-In Now");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(66, 81, 101, 1.0),
                  ),
                ),
                child: const Text(
                  "Sign-In now",
                  style: TextStyle(
                    color: Color.fromRGBO(246, 246, 246, 1.0),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "1996-2021, Amazon.com, Inc. or its affiliates",
              style: TextStyle(color: Color.fromRGBO(246, 246, 246, 1.0)),
            ),
          ],
        ),
      ),

    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            //fillColor: Colors.white,
            activeColor: Colors.white,
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.all(Colors.grey),
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
          Expanded(
              child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          )),
        ],
      ),
    );
  }
}

class ctrlCheckBox extends StatefulWidget {
  const ctrlCheckBox({super.key});

  @override
  State<ctrlCheckBox> createState() => _ctrlCheckBox();
}

class _ctrlCheckBox extends State<ctrlCheckBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      label: 'Show password',
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}
