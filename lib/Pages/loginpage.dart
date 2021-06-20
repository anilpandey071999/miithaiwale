import 'package:flutter/material.dart';
import 'package:miithaiwale/Pages/phone_OTP.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneAuthController = TextEditingController();
  bool _checkBoxVal = false;
  final _phoneNumberForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 100,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: Center(
                child: Text(
                  "MiithaiWale",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Form(
                key: _phoneNumberForm,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value.length != 10 || value.isEmpty) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                      controller: _phoneAuthController,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        prefix: Text('+91'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color(0xff0075f6),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color(0xff0900C3),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          onChanged: (bool value) {
                            setState(() => this._checkBoxVal = value);
                          },
                          value: this._checkBoxVal,
                        ),
                        Expanded(
                          child: Text(
                            'I have read and agree to the privacy policy and terms and conditions',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              height: 1.4,
                              fontSize: 16.0,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0900C3),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 12.0,
                        ),
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        "Send OTP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      // onPressed: _checkBoxVal ? () => sentPhoneOTP() : null,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PhoneOTP(_phoneAuthController.text),
                        ));
                        // if (_phoneNumberForm.currentState.validate() &&
                        //     _checkBoxVal) {
                        //   sentPhoneOTP();
                        // } else {}
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
