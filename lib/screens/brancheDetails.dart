import 'package:flutter/material.dart';

class BrancheDetails extends StatefulWidget {
  const BrancheDetails({super.key});

  @override
  State<BrancheDetails> createState() => _BrancheDetailsState();
}

class _BrancheDetailsState extends State<BrancheDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
          'Branche Details',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          children: [
            const Text(
              'ANAPURNA SALES(DELHI-HO)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              color: Colors.white,
              elevation: 3,
              child: const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 12, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Firm Address:'),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Tel. No.:')
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'CONTACT PERSON',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              color: Colors.white,
              elevation: 3,
              child: const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 12, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Branch Head:'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Contact no.:')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
