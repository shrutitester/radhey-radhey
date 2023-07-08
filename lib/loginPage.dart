import 'package:flutter/material.dart';
import 'package:radhey_knit_llp/registrationForm.dart';

import 'otpLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
          const Stack(
            children: [
              SizedBox(
                height: 52,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset('assets/logo.png'),
          ),
          const SizedBox(
            height: 148,
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Register Phone Number',
                  ),
                  validator: (value) {
                    if (value == null || value.length != 10) {
                      return 'Please enter valid phone number';
                    }
                    return null;
                  },
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
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFF4A52)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: const BorderSide(color: Color(0xFFFF4A52))))),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const OtpLogin();
                          }));
                        }
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 188,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Need an account?',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const RegistrationForm();
                  }));
                  //signup screen
                },
              )
            ],
          ),
        ]),
      ),
    );
  }
}
