import 'package:flutter/material.dart';
import 'package:radhey_knit_llp/screens/branches.dart';
import 'package:radhey_knit_llp/screens/checkCreditLimit.dart';
import 'package:radhey_knit_llp/screens/complain.dart';
import 'package:radhey_knit_llp/screens/ledger.dart';
import 'package:radhey_knit_llp/screens/loginPage.dart';
import 'package:radhey_knit_llp/screens/orderDetails.dart';
import 'package:radhey_knit_llp/screens/salesReport.dart';

import '../constants/colorConstants.dart';
import '../constants/stringConstant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/background.png',
                alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
                top: 70,
                left: 16,
                right: 16,
                bottom: 0,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                    flex: 8,
                                    child: Text(
                                      StringConstants.welcome,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                        height: 26.5,
                                        width: 30.29,
                                        child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const LoginPage()));
                                            },
                                            child: Image.asset(
                                                'assets/logout.png'))))
                              ],
                            ),
                            Text(
                              StringConstants.appName,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 33,
                            ),
                            Card(
                              color: Colors.white,
                              elevation: 2,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      'assets/card_background.png',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    top: 21,
                                    left: 14,
                                    right: 14,
                                    bottom: 21,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Current Outstanding',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rs.',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Text(
                                              '365287.0',
                                              style: TextStyle(
                                                  fontSize: 33,
                                                  fontWeight: FontWeight.w400,
                                                  color: ColorConstants
                                                      .primaryColor),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Show More',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  ColorConstants.primaryColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 6,
                          child: ListView(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Ledger()));
                                      },
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 53.0,
                                                top: 21,
                                                right: 53,
                                              ),
                                              child: Image.asset(
                                                  'assets/ledger.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants.ledger,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SalesReport()));
                                      },
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 53.0,
                                                  top: 21,
                                                  right: 53),
                                              child: Image.asset(
                                                  'assets/salesreport.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants.salesReports,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Card(
                                        elevation: 2,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 53.0,
                                                top: 5,
                                                right: 53,
                                              ),
                                              child: Image.asset(
                                                  'assets/pending order.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants.pendingOrder,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Card(
                                        elevation: 2,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 53.0,
                                                top: 21,
                                                right: 53,
                                              ),
                                              child: Image.asset(
                                                  'assets/Couries.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants.courier,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const OrderDetails()));
                                      },
                                      child: Card(
                                        elevation: 2,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 53.0,
                                                top: 21,
                                                right: 53,
                                              ),
                                              child: Image.asset(
                                                  'assets/Order Booking.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants.orderBooking,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const CheckCreditLimit()));
                                      },
                                      child: Card(
                                        elevation: 2,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 53.0,
                                                top: 21,
                                                right: 53,
                                              ),
                                              child: Image.asset(
                                                  'assets/Check credit limit icon.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants
                                                    .checkCreditLimit,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Branches()));
                                      },
                                      child: Card(
                                        elevation: 2,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 53.0,
                                                top: 21,
                                                right: 53,
                                              ),
                                              child: Image.asset(
                                                  'assets/branch.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants.branch,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Complain()));
                                      },
                                      child: Card(
                                        elevation: 2,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 53.0,
                                                top: 21,
                                                right: 53,
                                              ),
                                              child: Image.asset(
                                                  'assets/Complain.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 21.0),
                                              child: Text(
                                                StringConstants.complain,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                child: InkWell(
                                  onTap: () {},
                                  child: Card(
                                    elevation: 2,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 53.0,
                                            top: 21,
                                            right: 53,
                                          ),
                                          child: Image.asset(
                                              'assets/Contact Us.png'),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 21.0),
                                          child: Text(
                                            StringConstants.contactUs,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ))
          ],
        ));
  }
}
