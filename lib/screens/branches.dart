import 'package:flutter/material.dart';
import 'package:radhey_knit_llp/screens/brancheDetails.dart';

class Branches extends StatelessWidget {
  const Branches({super.key});

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
          'Branches',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, top: 24, bottom: 490),
        child: Row(
          children: [
            Expanded(
                flex: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const BrancheDetails();
                    }));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 48.0, top: 21, right: 48, bottom: 21),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                                Image.asset('assets/photo1.jpg').image,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Delhi')
                        ],
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                flex: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const BrancheDetails();
                    }));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 48.0, top: 21, right: 48, bottom: 21),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                                Image.asset('assets/photo1.jpg').image,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Kolkata')
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
