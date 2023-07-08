import 'package:flutter/material.dart';
import 'package:radhey_knit_llp/orderNewEntry.dart';
import 'package:radhey_knit_llp/registrationForm.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpLogin extends StatefulWidget {
  const OtpLogin({super.key});

  @override
  State<OtpLogin> createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
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
            'We are automatically detecting SMS sent to your Mobile Number XXXXXX0930.',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,),),
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
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFFF4A52)),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(color: Color(0xFFFF4A52))))),
                    onPressed: () {

                        Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const OrderNewEntry();
                            }));

                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextButton(
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const RegistrationForm();
                      }));
                  //signup screen
                },
              )
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
}
