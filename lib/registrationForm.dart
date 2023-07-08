import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:radhey_knit_llp/loginPage.dart';

import 'orderNewEntry.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formKey = GlobalKey<FormState>();
  bool agree = false;
  String? _chosenValue;
  FilePickerResult? result;

  void _doSomething() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: Colors.red,
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 5, right: 10),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 22,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Registration Form',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
                top: 110,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(top: 17, left: 16, right: 15),
                  height: 220,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: ListView(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildDetailsRow('Firm Name', 'Enter Firm Name'),
                            buildDetailsRow('Owner Name', 'Enter Owner Name'),
                            buildDetailsRow(
                                'Whatsapp Number', 'Enter Whatsapp Number'),
                            buildDetailsRow(
                                'Email Address', 'Enter Email Address'),
                            buildDetailsRow(
                                'Type of Business', 'Select Business Type'),
                            buildDetailsRow('Address of Firm',
                                'Please enter complete address of firm'),
                            Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: buildDetailsRow(
                                        'PinCode', 'Enter PinCode')),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    flex: 5,
                                    child: buildDetailsRow(
                                        'State', 'Enter State')),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child:
                                        buildDetailsRow('City', 'Enter City')),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    flex: 5,
                                    child: buildDetailsRow(
                                        'District', 'Enter District')),
                              ],
                            ),
                            buildDetailsRow(
                                'Transport Name', 'Enter Transport Name'),
                            buildDetailsRow(
                                'Booking Station', 'Enter Booking Station'),
                            buildDetailsRow('Booking Station(Export to)',
                                'Enter Booking Station(Export to)'),
                            buildDetailsRow(
                                'Reference by (Name)', 'Enter Reference Name'),
                            Text(
                              'Credit Limit',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(left: 16,right: 16),
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
                                  hint: Text('Select Credit Limit',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  onChanged: (String? value) {
                                    setState(() {
                                      _chosenValue = value;
                                    });
                                  }),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              'Credit Days',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(left: 16,right: 16),
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
                                  hint: Text('Select Credit Days',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  onChanged: (String? value) {
                                    setState(() {
                                      _chosenValue = value;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Please Upload Aadhar card of Owner',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 8,),
                            if (result != null)
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      'Upload Document',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2C2C2C)),
                                    ),
                                    ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: result?.files.length ?? 0,
                                        itemBuilder: (context, index) {
                                          return Text(
                                            result?.files[index].name ?? '',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          );
                                        })
                                  ],
                                ),
                              ),
                            SizedBox(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFE4E4E4)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFE4E4E4)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            side: BorderSide(
                                                color: Color(0xFE4E4E4))))),
                                onPressed: () async {
                                  result = await FilePicker.platform
                                      .pickFiles(allowMultiple: true);
                                  if (result == null) {
                                    print('No file selected');
                                  } else {
                                    result?.files.forEach((element) {
                                      print(element.name);
                                    });
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload_file_rounded,
                                      color: Color(0xFF2C2C2C),
                                    ),
                                    Text('Upload Document',style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF2C2C2C)
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Material(
                                  child: Checkbox(
                                    value: agree,
                                    onChanged: (value) {
                                      setState(() {
                                        agree = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                        'Its not our (ANAPURNA SALES) Liability if -'),
                                    Text('1.Transport Delays'),
                                    Text('2.Any Shortage')
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Material(
                                  child: Checkbox(
                                    value: agree,
                                    onChanged: (value) {
                                      setState(() {
                                        agree = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                    'Term & conditions (Please Read Carefully)')
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFFFF4A52)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            side: BorderSide(
                                                color: Color(0xFFFF4A52))))),
                                onPressed: () {
                                  agree ? _doSomething : null;
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginPage()));
                                  }
                                },
                                child: Text('Submit',style: TextStyle(fontSize: 18),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }

  Column buildDetailsRow(String name, String message) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          style: TextStyle(fontSize: 14),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: message,

          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
