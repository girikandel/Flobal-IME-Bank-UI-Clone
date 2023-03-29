import 'package:flutter/material.dart';
import 'package:globalbankuiclone/Pages/login_page.dart';
import 'package:globalbankuiclone/constants/colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 25,
                    color: Kcolor.darkTextColor,
                  ),
                ),

                const SizedBox(height: 20),
                Text(
                  'Enter you account details',
                  style: TextStyle(
                    fontSize: 18,
                    color: Kcolor.greyTextColor,
                  ),
                ),

                //Account Number Field
                const SizedBox(height: 30),
                TextField(
                  cursorColor: Kcolor.darkTextColor,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Kcolor.darkTextColor,
                      ),
                    ),
                    label: const Text('Account Number'),
                    labelStyle: TextStyle(
                      color: Kcolor.greyTextColor,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Kcolor.greyTextColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                ),

                //Account holder's name Field
                const SizedBox(height: 30),
                TextField(
                  cursorColor: Kcolor.darkTextColor,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Kcolor.darkTextColor,
                      ),
                    ),
                    label: const Text('Account Holder\'s Name'),
                    labelStyle: TextStyle(
                      color: Kcolor.greyTextColor,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Kcolor.greyTextColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                ),

                //Phone Number Field
                const SizedBox(height: 20),
                TextField(
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  cursorColor: Kcolor.darkTextColor,
                  decoration: InputDecoration(
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        '+977',
                        style: TextStyle(
                          color: Kcolor.darkTextColor,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Kcolor.darkTextColor,
                      ),
                    ),
                    label: Text(
                      'Mobile Number',
                      style: TextStyle(
                        color: Kcolor.greyTextColor,
                        fontSize: 19,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                ),

                //Select Identification Type Field
                const SizedBox(height: 30),
                TextField(
                  cursorColor: Kcolor.darkTextColor,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Kcolor.darkTextColor,
                      ),
                    ),
                    label: const Text('Select Identification Type'),
                    labelStyle: TextStyle(
                      color: Kcolor.greyTextColor,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Kcolor.greyTextColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (_newValue) {},
                      activeColor: Kcolor.buttonColor,
                    ),
                    Text(
                      'I agree to the Terms & Conditions',
                      style: TextStyle(
                        fontSize: 18,
                        color: Kcolor.darkTextColor,
                      ),
                    ),
                  ],
                ),

                //Continue Button
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20),
                Text(
                  'Need help? Call: 01-5970600',
                  style: TextStyle(
                    fontSize: 18,
                    color: Kcolor.darkTextColor,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
