import 'package:flutter/material.dart';

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
          'Complain',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        backgroundColor: Colors.red,
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
                    'Sales',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,
                            width: 1),
                        borderRadius:
                        BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 36,
                        isExpanded: true,
                        underline: SizedBox(),
                        value: _chosenValue,
                        style: TextStyle(color: Colors.black),
                        items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                            .map<DropdownMenuItem<String>>(
                                (String value) {
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
                    'Reference No',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Reference No',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Your Complaint',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Please Enter Your Complaint Here",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 29,
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFFF4A52)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side:
                                        const BorderSide(color: Colors.red)))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const CheckCreditLimit();
                        }));
                      }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
