import 'package:flutter/material.dart';
import 'package:flutter_otp_verification/constant/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color(0xFFeaeaea),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0),
                    child: Text(
                      "Enter your phone number",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Image(
                      image: AssetImage('assets/images/otp-icon.png'),
                      height: 120.0,
                      width: 120.0,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          autofocus: false,
                          enabled: false,
                          initialValue: "+91",
                          style: const TextStyle(
                              fontSize: 20.0, color: Colors.black),
                        ),
                        flex: 3,
                      ),
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          autofocus: false,
                          enabled: true,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          style: const TextStyle(
                              fontSize: 20.0, color: Colors.black),
                        ),
                        flex: 9,
                      ),
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                    child: SizedBox(
                      width: 150.0,
                      height: 40.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(
                              const TextStyle(color: Colors.white)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(otpScreen);
                        },
                        child: const Text("Get OTP"),
                      ),
                    ),
                  ),
                ])
          ],
        ));
    // TODO: implement build
  }
}
