import 'package:flutter/material.dart';
import 'package:steps_challenge/tabs.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 2),
            Image.asset(
              'assets/banner.png',
              height: 100,
            ),
            Text(
              "500K Step Challenge",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  buildEmailFormField(),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("SEND OTP"),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Tabs.routeName);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'By entering your registered email or mobile number, you agree to\nour ',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Terms and Conditions & Privacy Policy',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: RichText(
                text: TextSpan(
                  text: 'Not Registered?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[800],
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Register',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Race Management by",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 2),
                Image.asset(
                  'assets/promotion.png',
                  height: 30,
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  buildEmailFormField() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue!,
          textInputAction: TextInputAction.next,
          onChanged: (value) {
            setState(() {
              email = value;
            });
          },
          decoration: InputDecoration(
            hintText: "Email or mobile number",
            hintStyle: TextStyle(color: Colors.blue[800]),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.phone,
                color: Colors.blue[800],
              ),
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }
}
