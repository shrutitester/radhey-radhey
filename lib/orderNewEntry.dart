import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:radhey_knit_llp/homePage.dart';

import 'complain.dart';

class OrderNewEntry extends StatefulWidget {
  const OrderNewEntry({super.key});

  @override
  State<OrderNewEntry> createState() => _OrderNewEntryState();
}

class _OrderNewEntryState extends State<OrderNewEntry> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  String? scheme;
  String? loose;
  bool value = false;
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinput1 = TextEditingController();
  FilePickerResult? result;
  final _formKey = GlobalKey<FormState>();
  String? _chosenValue;
  String? _chosenValue1;
  String? _chosenValue2;
  String? _chosenValue3;
  String? _chosenValue4;
  String? _chosenValue5;


  @override
  void initState() {
    dateinput.text = '';
    dateinput1.text = '';
    super.initState();
  }

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
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Order New Entry',
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
                padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
                height: 220,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
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
                            value: _chosenValue1,
                            style: TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            hint: Text('Select Prefix',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue1 = value;
                              });
                            }),
                      ),
                      SizedBox(height: 42,),
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
                            value: _chosenValue2,
                            style: TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            hint: Text('Select Customer',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue2 = value;
                              });
                            }),
                      ),
                      SizedBox(height: 42,),
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
                            value: _chosenValue3,
                            style: TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            hint: Text('Select Supplier',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue3 = value;
                              });
                            }),
                      ),
                      SizedBox(height: 42,),
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
                            value: _chosenValue4,
                            style: TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            hint: Text('Select Brand',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue4 = value;
                              });
                            }),
                      ),
                      SizedBox(height: 42,),
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
                            value: _chosenValue5,
                            style: TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            hint: Text('Select Branch',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue5 = value;
                              });
                            }),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Scheme'),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: RadioListTile(
                                            title: Text('Yes',style: TextStyle(fontSize: 14),),
                                            value: 'yes',
                                            groupValue: scheme,
                                            onChanged: (value) {
                                              setState(() {
                                                scheme = value.toString();
                                              });
                                            }),
                                      ),
                                      Expanded(
                                        flex: 1,
                                          child: RadioListTile(
                                              title: Text('No',style: TextStyle(fontSize: 14),),
                                              value: 'no',
                                              groupValue: scheme,
                                              onChanged: (value) {
                                                setState(() {
                                                  scheme = value.toString();
                                                });
                                              })),
                                    ],
                                  ),
                                ],
                              )),
                          SizedBox(width: 2,),
                          Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Loose'),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: RadioListTile(
                                            title: Text('Yes',style: TextStyle(fontSize: 14),),
                                            value: 'yes',
                                            groupValue: loose,
                                            onChanged: (value) {
                                              setState(() {
                                                loose = value.toString();
                                              });
                                            }),
                                      ),
                                      Expanded(
                                        flex: 1,
                                          child: RadioListTile(
                                              title: Text('No',style: TextStyle(fontSize: 14),),
                                              value: 'no',
                                              groupValue: loose,
                                              onChanged: (value) {
                                                setState(() {
                                                  loose = value.toString();
                                                });
                                              }))
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Billing'),
                          SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                              value: this.value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              }),
                        ],
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select date';
                          }
                          return null;
                        },

                        controller: dateinput,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Date',
                          suffixIcon: Icon(Icons.calendar_today_outlined),
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101));
                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            setState(() {
                              dateinput.text = formattedDate;
                            });
                          } else {
                            print('Date is not selected');
                          }
                        },
                      ),
                      SizedBox(
                        height: 42,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select date';
                          }
                          return null;
                        },

                        controller: dateinput1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Due Date',
                          suffixIcon: Icon(Icons.calendar_today_outlined),
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101));
                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            setState(() {
                              dateinput1.text = formattedDate;
                            });
                          } else {
                            print('Date is not selected');
                          }
                        },
                      ),
                      SizedBox(
                        height: 42,
                      ),

                      Row(
                        children: [
                          Expanded(
                              flex: 5, child: buildTextField('Enter Case')),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Marks'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(flex: 5, child: buildTextField('Enter Pcs')),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Amount'),
                          ),
                        ],
                      ),

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
                            hint: Text('Select Method',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            }),
                      ),
                      SizedBox(height: 42,),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: buildTextField('Booking Station'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: buildTextField('Given By'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter ORP'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Billing'),
                          ),
                        ],
                      ),
                      buildTextField('Enter ORP Mobile'),
                      buildTextField('Enter Export To'),
                      buildTextField('Enter Remark'),
                      buildTextField('Enter Detailed Remark'),
                      Row(
                        children: [
                          const Text('Article Wise'),
                          const SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                              value: value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Design'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Size'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Color'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Pcs'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: buildTextField('Enter Rate'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFF2A2829)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            side: BorderSide(
                                                color: Color(0xFF2A2829))))),
                                onPressed: () {},
                                child: Text('ADD'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          DataTable(columns: const [
                            DataColumn(label: Text('Design')),
                            DataColumn(label: Text('Size')),
                            DataColumn(label: Text('Color')),
                            DataColumn(label: Text('Pcs')),
                            DataColumn(label: Text('Rate')),
                            DataColumn(label: Text('')),
                          ], rows: const [
                            DataRow(cells: [
                              DataCell(Text('ABCDE')),
                              DataCell(Text('XL')),
                              DataCell(Text('Baby pink')),
                              DataCell(Text('1,00')),
                              DataCell(Text('1,000 Rs.')),
                              DataCell(Icon(Icons.delete))
                            ]),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      if (result != null)
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Upload Document',
                                style: TextStyle(fontSize: 16),
                              ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: result?.files.length ?? 0,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      result?.files[index].name ?? '',
                                      style: const TextStyle(
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
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF2C2C2C)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFE0E0E0)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Colors.grey)))),
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
                              Icon(Icons.upload_file_rounded),
                              Text('Upload Document',style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFFF4A52)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return HomePage();
                              }));
                            }
                          },
                          child: Text('Submit'),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Column buildTextField(String message) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: message,
          ),
        ),
        SizedBox(
          height: 42,
        ),
      ],
    );
  }
}
