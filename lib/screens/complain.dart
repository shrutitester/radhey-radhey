import 'package:flutter/material.dart';

import '../component/roundButton.dart';
import '../component/roundInputField.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstant.dart';
import 'checkCreditLimit.dart';

class Complain extends StatefulWidget {
  const Complain({super.key});

  @override
  State<Complain> createState() => _ComplainState();
}

class _ComplainState extends State<Complain> {
  final _formKey = GlobalKey<FormState>();
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 22,
            )),
        title: const Text(
          StringConstants.complain,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        backgroundColor: ColorConstants.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, top: 16, right: 15.0),
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: ListView(
                children: [
                  const Text(
                    StringConstants.sales,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton<String>(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 36,
                        isExpanded: true,
                        underline: SizedBox(),
                        value: _chosenValue,
                        style: TextStyle(color: Colors.black),
                        items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text('Select Sales',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    StringConstants.refernceNo,
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RoundedInputField(
                    hintText: StringConstants.enterReferenceNo,
                    keyboardType: TextInputType.number,
                    type: StringConstants.username,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    StringConstants.yourComplaint,
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RoundedInputField(
                    hintText: StringConstants.pleaseEnterYourCompaintHere,
                    maxLines: 3,
                    keyboardType: TextInputType.number,
                    type: StringConstants.username,
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 29,
                child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: RoundedButton(
                        text: StringConstants.submitTxt,
                        btnColor: ColorConstants.primaryColor,
                        btnWidth: 300,
                        press: () {
                          // Navigator.push(context, MaterialPageRoute(
                          //     builder: (BuildContext context) {
                          //       return const OrderNewEntry();
                          //     }));
                        })
                    // ElevatedButton(
                    //   style: ButtonStyle(
                    //       foregroundColor:
                    //           MaterialStateProperty.all<Color>(Colors.white),
                    //       backgroundColor: MaterialStateProperty.all<Color>(
                    //           const Color(0xFFFF4A52)),
                    //       shape:
                    //           MaterialStateProperty.all<RoundedRectangleBorder>(
                    //               RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(5),
                    //                   side:
                    //                       const BorderSide(color: Colors.red)))),
                    //   onPressed: () {
                    //     if (_formKey.currentState!.validate()) {
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (BuildContext context) {
                    //         return const CheckCreditLimit();
                    //       }));
                    //     }
                    //   },
                    //   child: const Text(
                    //     'Submit',
                    //     style: TextStyle(fontSize: 18),
                    //   ),
                    // ),
                    ))
          ],
        ),
      ),
    );
  }
}
