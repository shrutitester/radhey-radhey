import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:radhey_knit_llp/screens/orderNewEntry.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../component/roundButton.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstant.dart';

class OtpLogin extends StatefulWidget {
  const OtpLogin({super.key});

  @override
  State<OtpLogin> createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
  int secondsRemaining =30;
  bool enableResend = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (_) {
      if (secondsRemaining != 0){
        setState(() {
          secondsRemaining--;
        });
      }else{
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
          const Stack(
            children: [
              SizedBox(
                height: 52,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset('assets/logo.png'),
          ),
          const SizedBox(
            height: 148,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'We are automatically detecting SMS sent to your Mobile Number .',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 78,
              ),
              OTPTextField(
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 20,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print('Completed: ' + pin);
                },
              ),
              const SizedBox(
                height: 34,
              ),
              SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: RoundedButton(
                      text: StringConstants.next,
                      btnColor: ColorConstants.primaryColor,
                      btnWidth: 300,
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const OrderNewEntry();
                        }));
                      })
                  // ElevatedButton(
                  //     style: ButtonStyle(
                  //         foregroundColor:
                  //         MaterialStateProperty.all<Color>(Colors.white),
                  //         backgroundColor: MaterialStateProperty.all<Color>(
                  //             const Color(0xFFFF4A52)),
                  //         shape: MaterialStateProperty.all<
                  //             RoundedRectangleBorder>(
                  //             RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(5),
                  //                 side: const BorderSide(color: Color(0xFFFF4A52))))),
                  //     onPressed: () {
                  //
                  //         Navigator.push(context, MaterialPageRoute(
                  //             builder: (BuildContext context) {
                  //               return const OrderNewEntry();
                  //             }));
                  //
                  //     },
                  //     child: const Text(
                  //       'Next',
                  //       style: TextStyle(
                  //           fontSize: 16, fontWeight: FontWeight.w500),
                  //     )),
                  )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(fontSize: 16,color: Colors.redAccent),
                ),
                onPressed: enableResend ? _resendCode : null,
              ),
              Text('after $secondsRemaining seconds',style: TextStyle(color: Colors.black,fontSize: 10),)

            ],
          ),
        ]),
      ),
      // body: Container(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16),
      //     child: Column(
      //       children: [
      //         SizedBox(height: 52,),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20),
      //           child: Image.asset('assets/logo.png'),
      //         ),
      //         SizedBox(
      //           height: 40,
      //         ),
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Expanded(
      //                 child: Text(
      //                     'We are automatically detecting SMS sent to your Mobile Number XXXXXX0930.',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,),)),
      //             SizedBox(
      //               height: 8,
      //             ),
      //             OTPTextField(
      //               length: 6,
      //               width: MediaQuery.of(context).size.width,
      //               fieldWidth: 20,
      //               style: TextStyle(
      //                 color: Colors.black,
      //                 fontSize: 17,
      //               ),
      //               textFieldAlignment: MainAxisAlignment.spaceAround,
      //               fieldStyle: FieldStyle.underline,
      //               onCompleted: (pin) {
      //                 print('Completed: ' + pin);
      //               },
      //             ),
      //             SizedBox(
      //               height: 20,
      //             ),
      //             SizedBox(
      //               height: 50,
      //               width: MediaQuery.of(context).size.width,
      //               child: ElevatedButton(
      //                   style: ButtonStyle(
      //                       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      //                       backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFF4A52)),
      //                       shape: MaterialStateProperty.all<
      //                               RoundedRectangleBorder>(
      //                           RoundedRectangleBorder(
      //                               borderRadius: BorderRadius.circular(5),
      //                               side: BorderSide(color:Color(0xFFFF4A52))))),
      //                   onPressed: () {
      //                     Navigator.push(context, MaterialPageRoute(
      //                         builder: (BuildContext context) {
      //                       return OrderNewEntry();
      //                     }));
      //                   },
      //                   child: Text(
      //                     'Verify',
      //                     style: TextStyle(fontSize: 21),
      //                   )),
      //             )
      //           ],
      //         ),
      //         SizedBox(
      //           height: 15,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: <Widget>[
      //             TextButton(
      //               child: const Text(
      //                 'Resend Otp',
      //                 style: TextStyle(fontSize: 14),
      //               ),
      //               onPressed: () {
      //
      //                 //signup screen
      //               },
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  void _resendCode() {
    setState(() {
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
