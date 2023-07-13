import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'package:file_picker/file_picker.dart';
import 'package:radhey_knit_llp/screens/loginPage.dart';

import '../component/roundButton.dart';
import '../component/roundInputField.dart';
import '../constants/colorConstants.dart';
import '../constants/stringConstant.dart';
import '../utils/lotOfThemes.dart';
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
  bool _agree = false;
  String? _chosenValue;
  FilePickerResult? result;
  // final TextEditingController _mobileController = TextEditingController();
  // String?  mobileNo = '';
  // String? selectedPartyName = 'Select Party';


  @override
  Widget build(BuildContext context) {
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
                        StringConstants.registrationForm,
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
                  padding: const EdgeInsets.only(top: 17, left: 16, right: 15, bottom: 17),
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
                            const Text(
                              StringConstants.firmName,
                              style: LotOfThemes.textText12,
                            ),
                            const SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants.enterFirmName,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              StringConstants.ownerName,
                              style: LotOfThemes.textText12,
                            ),
                            const SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants.enterOwnerName,
                              keyboardType: TextInputType.name,
                              type: StringConstants.username,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              StringConstants.whatsappNo,
                              style: LotOfThemes.textText12,
                            ),
                            const SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants.enterWhatsAppNumber,
                              maxLength: 10,
                              counterText: '',
                              keyboardType: TextInputType.phone,
                              type: StringConstants.mobile,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              StringConstants.emailAdress,
                              style: LotOfThemes.textText12,
                            ),
                            const SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants.enterEmailAdress,
                              keyboardType: TextInputType.emailAddress,
                              type: StringConstants.username,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              StringConstants.typeOfBusiness,
                              style: LotOfThemes.textText12,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownSearch<String>(
                                popupProps: PopupProps.menu(
                                    showSelectedItems: true,
                                    disabledItemFn: (String s) =>
                                        s.startsWith('I')),
                                items: ['ABC', 'XYZ', 'OPQ', 'STU'],
                                dropdownDecoratorProps: const DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                        labelText: 'Type of Business',
                                        hintText: 'Select Business Type')),
                                onChanged: print,
                                selectedItem: ' ',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              StringConstants.addressOfFirm,
                              style: LotOfThemes.textText12,
                            ),
                            SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants
                                  .pleaseEnterCompleteAddressOfFirm,
                              keyboardType: TextInputType.text,
                              type: StringConstants.username,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // RoundedInputField(
                            //   hintText: 'Enter Register Phone Number',
                            //   maxLength: 10,
                            //   keyboardType: TextInputType.phone,
                            //   type: StringConstants.mobile,
                            // ),
                            // buildDetailsRow('Firm Name', 'Enter Firm Name'),
                            // buildDetailsRow('Owner Name', 'Enter Owner Name'),
                            // buildDetailsRow(
                            //     'Whatsapp Number', 'Enter Whatsapp Number'),
                            // buildDetailsRow(
                            //     'Email Address', 'Enter Email Address'),
                            // buildDetailsRow(
                            //     'Type of Business', 'Select Business Type'),
                            // buildDetailsRow('Address of Firm',
                            //     'Please enter complete address of firm'),
                            Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConstants.pinCode,
                                          style: LotOfThemes.textText12,
                                        ),
                                        SizedBox(height: 8,),
                                        RoundedInputField(
                                          hintText:
                                              StringConstants.enterPinCode,
                                          maxLength: 6,
                                          counterText: '',
                                          keyboardType: TextInputType.number,
                                          type: StringConstants.username,
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConstants.state,
                                          style: LotOfThemes.textText12,
                                        ),
                                        SizedBox(height: 8,),
                                        RoundedInputField(
                                          hintText: StringConstants.enterState,
                                          keyboardType: TextInputType.text,
                                          type: StringConstants.username,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConstants.city,
                                          style: LotOfThemes.textText12,
                                        ),
                                        SizedBox(height: 8,),
                                        RoundedInputField(
                                          hintText: StringConstants.enterCity,
                                          keyboardType: TextInputType.text,
                                          type: StringConstants.username,
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConstants.district,
                                          style: LotOfThemes.textText12,
                                        ),
                                        SizedBox(height: 8,),
                                        RoundedInputField(
                                          hintText:
                                              StringConstants.enterDistrict,
                                          keyboardType: TextInputType.text,
                                          type: StringConstants.username,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              StringConstants.transportName,
                              style: LotOfThemes.textText12,
                            ),
                            SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants.enter_transport,
                              keyboardType: TextInputType.text,
                              type: StringConstants.username,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              StringConstants.bookingStation,
                              style: LotOfThemes.textText12,
                            ),
                            SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants.enterBookingStation,
                              keyboardType: TextInputType.text,
                              type: StringConstants.username,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              StringConstants.bookingStationExportTo,
                              style: LotOfThemes.textText12,
                            ),
                            SizedBox(height: 8,),
                            RoundedInputField(
                              hintText:
                                  StringConstants.enterBookingStationExportTo,
                              keyboardType: TextInputType.text,
                              type: StringConstants.username,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              StringConstants.referenceByName,
                              style: LotOfThemes.textText12,
                            ),
                            SizedBox(height: 8,),
                            RoundedInputField(
                              hintText: StringConstants.enterReferenceName,
                              keyboardType: TextInputType.text,
                              type: StringConstants.username,
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            // buildDetailsRow(
                            //     'Transport Name', 'Enter Transport Name'),
                            // buildDetailsRow(
                            //     'Booking Station', 'Enter Booking Station'),
                            // buildDetailsRow('Booking Station(Export to)',
                            //     'Enter Booking Station(Export to)'),
                            // buildDetailsRow(
                            //     'Reference by (Name)', 'Enter Reference Name'),
                            Text(
                              StringConstants.creditLimit,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownSearch<String>(
                                popupProps: PopupProps.menu(
                                    showSelectedItems: true,
                                    disabledItemFn: (String s) =>
                                        s.startsWith('I')),
                                items: ['ABC', 'XYZ', 'OPQ', 'STU'],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                  labelText: 'Credit Limit',
                                  hintText: 'Select Credit Limit',
                                )),
                                onChanged: print,
                                selectedItem: ' ',
                              ),
                            ),

                            // Container(
                            //   height: 50,
                            //   width: MediaQuery.of(context).size.width,
                            //   padding: EdgeInsets.only(left: 16,right: 16),
                            //   decoration: BoxDecoration(
                            //     border: Border.all(color: Colors.black,
                            //     width: 1),
                            //     borderRadius:
                            //       BorderRadius.circular(5)
                            //   ),
                            //   child: DropdownButton<String>(
                            //     icon: Icon(Icons.keyboard_arrow_down),
                            //       iconSize: 36,
                            //       isExpanded: true,
                            //       underline: SizedBox(),
                            //       value: _chosenValue,
                            //       style: TextStyle(color: Colors.black),
                            //       items: <String>['ABC', 'XYZ', 'OPQ', 'STU']
                            //           .map<DropdownMenuItem<String>>(
                            //               (String value) {
                            //         return DropdownMenuItem<String>(
                            //           value: value,
                            //           child: Text(value),
                            //         );
                            //       }).toList(),
                            //       hint: Text('Select Credit Limit',
                            //           style: TextStyle(
                            //             fontSize: 16,
                            //           )),
                            //       onChanged: (String? value) {
                            //         setState(() {
                            //           _chosenValue = value;
                            //         });
                            //       }),
                            // ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              StringConstants.creditDays,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
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
                              StringConstants.pleaseUploadAadharCardOfOwner,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            if (result != null)
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      StringConstants.uploadDocument,
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
                                    Text(
                                      StringConstants.uploadDocument,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2C2C2C)),
                                    ),
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
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(StringConstants.itsNotOurLiability),
                                    Text(StringConstants.transportDelays),
                                    Text(StringConstants.anyShortage)
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Material(
                                  child: Checkbox(
                                    value: _agree,
                                    onChanged: (value) {
                                      setState(() {
                                        _agree = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                                Text(StringConstants.termConditions)
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: RoundedButton(
                                    text: StringConstants.submitTxt,
                                    btnColor: ColorConstants.primaryColor,
                                    btnWidth: 300,
                                    press: () {
                                      if (_formKey.currentState?.validate() ==
                                          true) {
                                        if(agree == true && _agree ==true){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return const LoginPage();
                                        }));
                                      }}
                                    })
                                // ElevatedButton(
                                //   style: ButtonStyle(
                                //       foregroundColor:
                                //           MaterialStateProperty.all<Color>(
                                //               Colors.white),
                                //       backgroundColor:
                                //           MaterialStateProperty.all<Color>(
                                //               Color(0xFFFF4A52)),
                                //       shape: MaterialStateProperty.all<
                                //               RoundedRectangleBorder>(
                                //           RoundedRectangleBorder(
                                //               borderRadius:
                                //                   BorderRadius.circular(5),
                                //               side: BorderSide(
                                //                   color: Color(0xFFFF4A52))))),
                                //   onPressed: () {
                                //     agree ? _doSomething : null;
                                //     if (_formKey.currentState!.validate()) {
                                //       Navigator.push(
                                //           context,
                                //           MaterialPageRoute(
                                //               builder: (context) =>
                                //                   LoginPage()));
                                //     }
                                //   },
                                //   child: Text(StringConstants.submitTxt,style: TextStyle(fontSize: 18),),
                                // ),
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

  // Column buildDetailsRow(String name, String message) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         name,
  //         style: TextStyle(color: Colors.black, fontSize: 12),
  //       ),
  //       SizedBox(
  //         height: 8,
  //       ),
  //       TextFormField(
  //         validator: (value) {
  //           if (value == null || value.isEmpty) {
  //             return 'Please enter some text';
  //           }
  //           return null;
  //         },
  //         style: TextStyle(fontSize: 14),
  //         decoration: InputDecoration(
  //           border: OutlineInputBorder(),
  //           hintText: message,
  //
  //         ),
  //       ),
  //       SizedBox(
  //         height: 20,
  //       ),
  //     ],
  //   );
  // }

  // partyList

  // Widget partyWidgetList(AddProductController controller){
  //   return SizedBox(
  //     height: 60,
  //     child: Theme(
  //       data: ThemeData(
  //         textTheme: TextTheme(
  //           titleMedium: LotOfThemes.editHeading,
  //         ),
  //       ),
  //       child: DropdownSearch<Parties>(
  //         mode: Mode.DIALOG,
  //         items: controller.parties,
  //         showSearchBox: true,
  //         // key: officeCtrlKey,
  //         // autoValidateMode: selectedPartyName!.isNotEmpty
  //         //     ? AutovalidateMode.always
  //         //     : AutovalidateMode.disabled,
  //         searchFieldProps: TextFieldProps(
  //             decoration: ThemeHelper().textInputDecoration(
  //                 selectedPartyName, StringConstants.search)),
  //         dropdownSearchBaseStyle: LotOfThemes.editHint,
  //         //  validator: Validator.isNullCheckDynamic,
  //         dropdownSearchDecoration: ThemeHelper().textInputDecoration(
  //             selectedPartyName, selectedPartyName, null, null),
  //         /* selectedItem: state.isNotEmpty
  //               ? state[0]
  //               : null,*/
  //         itemAsString: (Parties p) => p.partyName.toString(),
  //         onChanged: (Parties? value) {
  //           setState(() {
  //             selectedPartyValue = value;
  //             selectedPartyName = selectedPartyValue!.partyName;
  //             mobileNo = selectedPartyValue!.mobileNo;
  //             _mobileController.text = mobileNo!;
  //           });
  //         },
  //       ),
  //     ),
  //   );
  // }
}
