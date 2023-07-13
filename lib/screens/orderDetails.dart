import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:radhey_knit_llp/constants/stringConstant.dart';

import '../constants/colorConstants.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  String? scheme;
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinput1 = TextEditingController();
  String? _chosenValue1;
  String? _chosenValue2;

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
          StringConstants.orderDetails,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: ColorConstants.primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14.0),
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
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.red,
                              actions: [
                                IconButton(
                                    onPressed: () {},
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
                                        child: Container(
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding: const EdgeInsets.only(
                                              left: 16, right: 16),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: DropdownButton<String>(
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down),
                                              iconSize: 36,
                                              isExpanded: true,
                                              underline: SizedBox(),
                                              value: _chosenValue1,
                                              style: TextStyle(
                                                  color: Colors.black),
                                              items: <String>[
                                                'ABC',
                                                'XYZ',
                                                'OPQ',
                                                'STU'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                              hint: const Text(
                                                  StringConstants
                                                      .selectCustomer,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  )),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  _chosenValue1 = value;
                                                });
                                              }),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding: const EdgeInsets.only(
                                              left: 16, right: 16),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: DropdownButton<String>(
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down),
                                              iconSize: 36,
                                              isExpanded: true,
                                              underline: SizedBox(),
                                              value: _chosenValue2,
                                              style: TextStyle(
                                                  color: Colors.black),
                                              items: <String>[
                                                'ABC',
                                                'XYZ',
                                                'OPQ',
                                                'STU'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                              hint: const Text(
                                                  StringConstants
                                                      .selectSupplier,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  )),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  _chosenValue2 = value;
                                                });
                                              }),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
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
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color(0xFFFF4A52)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  side: const BorderSide(
                                                      color: Colors.red)))),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return ListView(
                                                children: [
                                                  Container(
                                                    color: ColorConstants
                                                        .primaryColor,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 80,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16.0),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                              child: SizedBox(
                                                            height: 40,
                                                            width: 40,
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .download,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  Text(
                                                                    StringConstants
                                                                        .downloadPdf,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          )),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Expanded(
                                                              child: IconButton(
                                                            color: Colors.white,
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Icon(
                                                                Icons.cancel),
                                                          )),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Column()
                                                ],
                                              );

                                              //   Scaffold(
                                              //   appBar: AppBar(
                                              //     backgroundColor: Colors.red,
                                              //     toolbarHeight: 70,
                                              //     leading: SizedBox(
                                              //       child: ElevatedButton(
                                              //         style: ButtonStyle(
                                              //             foregroundColor:
                                              //                 MaterialStateProperty.all<Color>(
                                              //                     Colors.white),
                                              //             backgroundColor: MaterialStateProperty
                                              //                 .all<Color>(const Color(
                                              //                     0xFFFF4A52)),
                                              //             shape: MaterialStateProperty.all<
                                              //                     RoundedRectangleBorder>(
                                              //                 RoundedRectangleBorder(
                                              //                     borderRadius:
                                              //                         BorderRadius.circular(5),
                                              //                     side: BorderSide(color: Colors.red)))),
                                              //         onPressed: () {},
                                              //         child: const Row(
                                              //           children: [
                                              //             Icon(Icons.download),
                                              //             SizedBox(width: 20,),
                                              //             Text('Download Pdf')
                                              //           ],
                                              //         ),
                                              //       ),
                                              //     ),
                                              //     actions: const [Icon(Icons.cancel)],
                                              //   ),
                                              // );
                                            });
                                      },
                                      child: const Text('Show'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: const Row(
                  children: [Icon(Icons.filter_list_rounded), Text('Filter')],
                )),
          )
        ],
      ),
    );
  }
}
