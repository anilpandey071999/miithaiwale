import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:miithaiwale/Home/bottomappbar.dart';
import 'package:otp_screen/otp_screen.dart';

class PhoneOTP extends StatefulWidget {
  final String phone;
  PhoneOTP(this.phone);
  @override
  _PhoneOTPState createState() => _PhoneOTPState();
}

class _PhoneOTPState extends State<PhoneOTP> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _verificationCode;

  Future<String> _validateOtp(String otp) async {
    // print(otp);
    // if (otp == '000000') {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => BottomBar()));
    // }
    await Future.delayed(Duration(milliseconds: 2000));
    try {
      await FirebaseAuth.instance
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: _verificationCode, smsCode: otp))
          .then((value) async {
        if (value.user != null) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => BottomBar()),
              (route) => false);
        }
      });
    } catch (e) {
      FocusScope.of(context).unfocus();
      _scaffoldKey.currentState
          .showSnackBar((SnackBar(content: Text('invalid OTP'))));
    }
    return null;
  }

  void moveToNextScreen(pin) async {
    // try {
    // await FirebaseAuth.instance
    //     .signInWithCredential(PhoneAuthProvider.credential(
    //         verificationId: _verificationCode, smsCode: pin))
    //     .then((value) async {
    //   if (value.user != null) {
    // DocumentSnapshot doc = await userRef.doc(widget.phone).get();
    // Navigator.pushAndRemoveUntil(context,
    //     MaterialPageRoute(builder: (context) => Home()), (route) => false);
    //     }
    //   });
    // } catch (e) {
    //   FocusScope.of(context).unfocus();
    //   ScaffoldMessenger.of(context)
    //       .showSnackBar(SnackBar(content: Text('invalid OTP')));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: OtpScreen(
        otpLength: 6,
        validateOtp: _validateOtp,
        routeCallback: moveToNextScreen,
        titleColor: Colors.black,
        themeColor: Colors.black,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _verifyPhone();
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91${widget.phone}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) async {
          if (value.user != null) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => BottomBar()),
                (route) => false);
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verficationId, int resendToken) {
        setState(() {
          _verificationCode = verficationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        setState(() {
          _verificationCode = verificationId;
        });
      },
      // timeout: Duration(seconds: 120)
    );
  }
}
