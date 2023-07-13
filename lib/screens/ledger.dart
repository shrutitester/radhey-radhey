import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../component/roundButton.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstant.dart';
import 'salesReport.dart';

class Ledger extends StatefulWidget {
  const Ledger({super.key});

  @override
  State<Ledger> createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
  String? scheme;
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinput1 = TextEditingController();

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
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 22,
          ),
        ),
        title: const Text(
          StringConstants.ledger,
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
                            side: const BorderSide(color: Colors.black)))),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 260,
                          child: Scaffold(
                            appBar: AppBar(
                              title: const Text(
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
                                    icon: const Icon(
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
                                            title:
                                                const Text(StringConstants.all),
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
                                            title: const Text(
                                                StringConstants.tick),
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
                                            title: const Text(
                                                StringConstants.untick),
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
                                          decoration: const InputDecoration(
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
                                      const SizedBox(
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
                                          decoration: const InputDecoration(
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
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
                                      child: RoundedButton(
                                          text: StringConstants.next,
                                          btnColor: ColorConstants.primaryColor,
                                          btnWidth: 300,
                                          press: () {
                                            // Navigator.push(context, MaterialPageRoute(
                                            // builder: (BuildContext context) {
                                            // return const OrderNewEntry();
                                            // }));
                                          })
                                      // ElevatedButton(
                                      //   style: ButtonStyle(
                                      //       foregroundColor:
                                      //           MaterialStateProperty.all<Color>(
                                      //               Colors.white),
                                      //       backgroundColor:
                                      //           MaterialStateProperty.all<Color>(
                                      //               const Color(0xFFFF4A52)),
                                      //       shape: MaterialStateProperty.all<
                                      //               RoundedRectangleBorder>(
                                      //           RoundedRectangleBorder(
                                      //               borderRadius:
                                      //                   BorderRadius.circular(5),
                                      //               side: const BorderSide(
                                      //                   color: Colors.red)))),
                                      //   onPressed: () {
                                      //     // Navigator.push(context,
                                      //     //     MaterialPageRoute(builder:
                                      //     //         (BuildContext context) {
                                      //     //   return const SalesReport();
                                      //     // }));
                                      //   },
                                      //   child: const Text('Submit'),
                                      // ),
                                      )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: const Row(
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
      body: ListView(
        children: [
          DataTable(columns: const [
            DataColumn(label: Text('Date')),
            DataColumn(label: Text('Account')),
            DataColumn(label: Text('Description')),
            DataColumn(label: Text('Debit Amt')),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('1')),
              DataCell(Text('1')),
              DataCell(Text('1')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('1')),
              DataCell(Text('1')),
              DataCell(Text('1')),
            ]),
          ])
        ],
      ),
    );
  }
}
