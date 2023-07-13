import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../component/roundButton.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstant.dart';

class SalesReport extends StatefulWidget {
  const SalesReport({super.key});

  @override
  State<SalesReport> createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  String? scheme;
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinput1 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    dateinput.text = '';
    dateinput1.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: Colors.white,
          ),
        ),
        title: Text(
          StringConstants.salesReports,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: ColorConstants.primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.black)))),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 260,
                          child: Scaffold(
                            appBar: AppBar(
                              title: Text(
                                StringConstants.filter,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              backgroundColor: ColorConstants.primaryColor,
                              actions: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.cancel,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            body: Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, right: 18),
                              child: ListView(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: RadioListTile(
                                            title: Text(StringConstants.all),
                                            value: 'all',
                                            groupValue: scheme,
                                            onChanged: (value) {
                                              setState(() {
                                                scheme = value.toString();
                                              });
                                            }),
                                      ),
                                      Expanded(
                                        child: RadioListTile(
                                            title: Text(StringConstants.tick),
                                            value: 'tick',
                                            groupValue: scheme,
                                            onChanged: (value) {
                                              setState(() {
                                                scheme = value.toString();
                                              });
                                            }),
                                      ),
                                      Expanded(
                                        child: RadioListTile(
                                            title: Text(StringConstants.untick),
                                            value: 'untick',
                                            groupValue: scheme,
                                            onChanged: (value) {
                                              setState(() {
                                                scheme = value.toString();
                                              });
                                            }),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: dateinput,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter some text';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: StringConstants.dateFrom,
                                            suffixIcon: Icon(
                                                Icons.calendar_today_outlined),
                                          ),
                                          readOnly: true,
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2000),
                                                    lastDate: DateTime(2101));
                                            if (pickedDate != null) {
                                              String formattedDate =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickedDate);
                                              setState(() {
                                                dateinput.text = formattedDate;
                                              });
                                            } else {
                                              print('Date is not selected');
                                            }
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: dateinput1,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter some text';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: StringConstants.dateTo,
                                            suffixIcon: Icon(
                                                Icons.calendar_today_outlined),
                                          ),
                                          readOnly: true,
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2000),
                                                    lastDate: DateTime(2101));
                                            if (pickedDate != null) {
                                              String formattedDate =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickedDate);
                                              setState(() {
                                                dateinput1.text = formattedDate;
                                              });
                                            } else {
                                              print('Date is not selected');
                                            }
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
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
                                      //       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      //       backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFF4A52)),
                                      //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      //           RoundedRectangleBorder(
                                      //               borderRadius: BorderRadius.circular(5),
                                      //               side: BorderSide(color: Colors.red)
                                      //           )
                                      //       )
                                      //   ),
                                      //   onPressed: (){
                                      //     // Navigator.push(context,
                                      //     //     MaterialPageRoute(builder:
                                      //     //         (BuildContext context) {
                                      //     //       return OrderDetails();
                                      //     //     }));
                                      //
                                      //   },
                                      //   child: Text('Submit'),
                                      // ),
                                      )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Row(
                  children: [
                    Icon(Icons.filter_list_rounded),
                    Text(
                      'Filter',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
