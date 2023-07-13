import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:radhey_knit_llp/component/roundButton.dart';
import 'package:radhey_knit_llp/screens/homePage.dart';
import 'package:radhey_knit_llp/articleWise.dart';

import '../component/roundInputField.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstant.dart';

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
  bool _value = false;
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
  TextEditingController caseController = TextEditingController();
  TextEditingController marksController = TextEditingController();
  TextEditingController pcsController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController designController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  // TextEditingController Controller = TextEditingController();
  List<ArticleWise> article = [];

  @override
  void initState() {
    dateinput.text = '';
    dateinput1.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // void addArticleData(ArticleWise articlewise){
    //   setState(() {
    //     article.add(articlewise);
    //   });
    // }
    return Scaffold(
      key: _globalKey,
      backgroundColor: ColorConstants.primaryColor,
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
                      StringConstants.orderNewEntry,
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
                padding: const EdgeInsets.only(top: 40, left: 16, right: 16,bottom: 40),
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
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 36,
                            isExpanded: true,
                            underline: const SizedBox(),
                            value: _chosenValue1,
                            style: const TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: const Text(StringConstants.selectPrefix,
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue1 = value;
                              });
                            }),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 36,
                            isExpanded: true,
                            underline: const SizedBox(),
                            value: _chosenValue2,
                            style: const TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: const Text(StringConstants.selectCustomer,
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue2 = value;
                              });
                            }),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 36,
                            isExpanded: true,
                            underline: const SizedBox(),
                            value: _chosenValue3,
                            style: const TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: const Text(StringConstants.selectSupplier,
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue3 = value;
                              });
                            }),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 36,
                            isExpanded: true,
                            underline: const SizedBox(),
                            value: _chosenValue4,
                            style: const TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: const Text(StringConstants.selectBrand,
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue4 = value;
                              });
                            }),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 36,
                            isExpanded: true,
                            underline: const SizedBox(),
                            value: _chosenValue5,
                            style: const TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: const Text(StringConstants.selectBranch,
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue5 = value;
                              });
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(StringConstants.scheme,style: TextStyle(),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: RadioListTile(
                                    title: const Text(
                                      StringConstants.yes,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    value: 'yes',
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
                                        StringConstants.no,
                                        style: TextStyle(fontSize: 14),
                                      ),
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
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(StringConstants.loose),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: RadioListTile(
                                    title: const Text(
                                      StringConstants.yes,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    value: 'yes',
                                    groupValue: loose,
                                    onChanged: (value) {
                                      setState(() {
                                        loose = value.toString();
                                      });
                                    }),
                              ),
                              Expanded(
                                  child: RadioListTile(
                                      title: Text(
                                        StringConstants.no,
                                        style: TextStyle(fontSize: 14),
                                      ),
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
                      ),
                      Row(
                        children: [
                          const Text(StringConstants.billing),
                          const SizedBox(
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
                      SizedBox(height: 43,),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select date';
                          }
                          return null;
                        },
                        controller: dateinput,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: StringConstants.enterDate,
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
                            const Text('Date is not selected');
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select date';
                          }
                          return null;
                        },
                        controller: dateinput1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: StringConstants.enterDueDate,
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
                            Text('Date is not selected');
                          }
                        },
                      ),
                      const SizedBox(
                        height: 42,
                      ),

                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.enterCase,
                              hintText: StringConstants.enterCase,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.enterMarks,
                              hintText: StringConstants.enterMarks,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                          ),
                        ],
                      ),
SizedBox(height: 42,),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.enterPcs,
                              hintText: StringConstants.enterPcs,
                              keyboardType: TextInputType.number,
                              type: StringConstants.username,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.enterRegisterPhone,
                              hintText: StringConstants.enterRegisterPhone,
                              maxLength: 10,
                              counterText: '',
                              keyboardType: TextInputType.number,
                              type: StringConstants.mobile,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 36,
                            isExpanded: true,
                            underline: const SizedBox(),
                            value: _chosenValue,
                            style: const TextStyle(color: Colors.black),
                            items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: const Text(StringConstants.selectMethod,
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
                        height: 42,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.bookingStation,
                              hintText: StringConstants.bookingStation,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.givenBy,
                              hintText: StringConstants.givenBy,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 42,),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.enterOrp,
                              hintText: StringConstants.enterOrp,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 5,
                            child: RoundedInputField(
                              label: StringConstants.enterBilling,
                              hintText: StringConstants.enterBilling,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 42,),
                      RoundedInputField(
                        label: StringConstants.enterOrpMobile,
                        hintText: StringConstants.enterOrpMobile,
                        keyboardType: TextInputType.name,
                        type: StringConstants.username,
                      ),
                      SizedBox(height: 42,),
                      RoundedInputField(
                        label: StringConstants.enterExportTo,
                        hintText: StringConstants.enterExportTo,
                        keyboardType: TextInputType.name,
                        type: StringConstants.username,
                      ),
                      SizedBox(height: 42,),
                      RoundedInputField(
                        label: StringConstants.enterRemark,
                        hintText: StringConstants.enterRemark,
                        keyboardType: TextInputType.name,
                        type: StringConstants.username,
                      ),
                      SizedBox(height: 42,),
                      RoundedInputField(
                        label: StringConstants.enterDetailedRemark,
                        hintText: StringConstants.enterDetailedRemark,
                        keyboardType: TextInputType.name,
                        type: StringConstants.username,
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          const Text(StringConstants.articleWise),
                          const SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                              value: _value,
                              onChanged: (bool? value) {
                                setState(() {
                                  _value = value!;
                                });
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //         child: SizedBox(
                      //       height: 40,
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //             border: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(20),
                      //               borderSide: BorderSide(
                      //                 color: ColorConstants.textDark,
                      //                 width: 1.0,
                      //               ),
                      //             ),
                      //             labelText: StringConstants.enterDesign),
                      //       ),
                      //     )),
                      //     const SizedBox(
                      //       width: 5,
                      //     ),
                      //     Expanded(
                      //         child: SizedBox(
                      //       height: 40,
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //             border: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(20),
                      //               borderSide: BorderSide(
                      //                 color: ColorConstants.textDark,
                      //                 width: 1.0,
                      //               ),
                      //             ),
                      //             labelText: StringConstants.enterSize),
                      //       ),
                      //     )),
                      //     const SizedBox(
                      //       width: 5,
                      //     ),
                      //     Expanded(
                      //         child: SizedBox(
                      //       height: 40,
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //             border: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(20),
                      //               borderSide: BorderSide(
                      //                 color: ColorConstants.textDark,
                      //                 width: 1.0,
                      //               ),
                      //             ),
                      //             labelText: StringConstants.enterColor),
                      //       ),
                      //     )),
                      //     const SizedBox(
                      //       width: 5,
                      //     ),
                      //     Expanded(
                      //         child: SizedBox(
                      //       height: 40,
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //             border: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(20),
                      //               borderSide: BorderSide(
                      //                 color: ColorConstants.textDark,
                      //                 width: 1.0,
                      //               ),
                      //             ),
                      //             labelText: StringConstants.enterPcs),
                      //       ),
                      //     )),
                      //     const SizedBox(
                      //       width: 5,
                      //     ),
                      //     Expanded(
                      //         child: SizedBox(
                      //       height: 40,
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //             border: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(20),
                      //               borderSide: BorderSide(
                      //                 color: ColorConstants.textDark,
                      //                 width: 1.0,
                      //               ),
                      //             ),
                      //             labelText: StringConstants.enterRate),
                      //       ),
                      //     )),
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // RoundedButton(
                      //     text: StringConstants.add,
                      //     btnColor: ColorConstants.black,
                      //     btnWidth: MediaQuery.of(context).size.width / 10,
                      //     press: () {
                      //       // Navigator.push(context, MaterialPageRoute(
                      //       //     builder: (BuildContext context) {
                      //       //       return const OrderNewEntry();
                      //       //     }));
                      //     }),
                      SizedBox(
                        height: 30,
                      ),

                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: RoundedInputField(
                                  controller: designController,
                                  label: StringConstants.enterDesign,
                                  hintText: StringConstants.enterDesign,
                                  keyboardType: TextInputType.name,
                                  type: StringConstants.username,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 5,
                                child: RoundedInputField(
                                  controller: sizeController,
                                  label: StringConstants.enterSize,
                                  hintText: StringConstants.enterSize,
                                  keyboardType: TextInputType.name,
                                  type: StringConstants.username,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: RoundedInputField(
                                  controller: colorController,
                                  label: StringConstants.enterColor,
                                  hintText: StringConstants.enterColor,
                                  keyboardType: TextInputType.name,
                                  type: StringConstants.username,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 5,
                                child: RoundedInputField(
                                  controller: pcsController,
                                  label: StringConstants.enterPcs,
                                  hintText: StringConstants.enterPcs,
                                  keyboardType: TextInputType.number,
                                  type: StringConstants.username,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: RoundedInputField(
                                  controller: rateController,
                                  label: StringConstants.enterRate,
                                  hintText: StringConstants.enterRate,
                                  keyboardType: TextInputType.number,
                                  type: StringConstants.username,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                    child: RoundedButton(
                                        text: StringConstants.add,
                                        btnColor: ColorConstants.black,
                                        btnWidth: 300,
                                        height: 45,
                                        press: () {
                                          // final article = ArticleWise(designController.text, sizeController.text, colorController.text, pcsController.text, rateController.text );
                                          // setState(() {

                                          // });
                                        })
                                  // ElevatedButton(
                                  //   style: ButtonStyle(
                                  //       foregroundColor:
                                  //           MaterialStateProperty.all<Color>(
                                  //               Colors.white),
                                  //       backgroundColor:
                                  //           MaterialStateProperty.all<Color>(
                                  //               Color(0xFF2A2829)),
                                  //       shape: MaterialStateProperty.all<
                                  //               RoundedRectangleBorder>(
                                  //           RoundedRectangleBorder(
                                  //               borderRadius:
                                  //                   BorderRadius.circular(5),
                                  //               side: BorderSide(
                                  //                   color: Color(0xFF2A2829))))),
                                  //   onPressed: () {},
                                  //   child: Text(StringConstants.add),
                                  // ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ListView.builder(itemBuilder: (ctx,index){
                            return ListTile(
                              title: Row(
                                children: [
                                  Text(article[index].design ??'', style: TextStyle(fontSize: 14),),
                                  Text(article[index].size ??'', style: TextStyle(fontSize: 14) ),
                                  Text(article[index].color ??'', style: TextStyle(fontSize: 14)),
                                  Text(article[index].pcs ??'',style: TextStyle(fontSize: 14)),
                                  Text(article[index].rate ??'',style: TextStyle(fontSize: 14)),
                                ],
                              ),
                            );
                          },
                            itemCount: article.length,
                          )
                        ],
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
                            height: 42,
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
                                StringConstants.uploadDocument,
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
                                  const Color(0xFF2C2C2C)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFE0E0E0)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: const BorderSide(
                                          color: Colors.grey)))),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.upload_file_rounded),
                              Text(
                                StringConstants.uploadDocument,
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
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
                              if (_formKey.currentState?.validate() == true) {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const HomePage();
                                }));
                              }
                            }),
                        // RoundedButton(
                        //     text: StringConstants.submitTxt,
                        //     btnColor: ColorConstants.primaryColor,
                        //     btnWidth: 300,
                        //     press: () async {
                        //       if (_formKey.currentState?.validate() == true) {
                        //         if (caseController.toString() == '') {
                        //           ScaffoldMessenger.of(context).showSnackBar(
                        //               SnackBar(
                        //                   content: Text(
                        //                       'Alert! Please enter Phone Number')));
                        //         } else {
                        //           // Navigator.push(context, MaterialPageRoute(
                        //           //                   builder: (BuildContext context) {
                        //           //                 return const OtpLogin();
                        //           //               }));}
                        //           // String result = await phoneNumberController.toString();
                        //           // if(result == 'true'){
                        //           Navigator.push(context, MaterialPageRoute(
                        //               builder: (BuildContext context) {
                        //             return const HomePage();
                        //           }));
                        //         }
                        //       }
                        //     }),
                      ),
                      // SizedBox(
                      //   height: 50,
                      //   width: MediaQuery.of(context).size.width,
                      //   child: ElevatedButton(
                      //     style: ButtonStyle(
                      //         foregroundColor: MaterialStateProperty.all<Color>(
                      //             Colors.white),
                      //         backgroundColor: MaterialStateProperty.all<Color>(
                      //             Color(0xFFFF4A52)),
                      //         shape: MaterialStateProperty.all<
                      //                 RoundedRectangleBorder>(
                      //             RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.circular(5),
                      //                 side: BorderSide(color: Colors.red)))),
                      //     onPressed: () {
                      //       if (_formKey.currentState!.validate()) {
                      //         Navigator.push(context, MaterialPageRoute(
                      //             builder: (BuildContext context) {
                      //           return HomePage();
                      //         }));
                      //       }
                      //     },
                      //     child: Text('Submit'),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
