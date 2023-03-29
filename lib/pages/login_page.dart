import 'package:flutter/material.dart';
import 'package:globalbankuiclone/Pages/navigation_page.dart';
import 'package:globalbankuiclone/Pages/register_page.dart';
import 'package:globalbankuiclone/constants/colors.dart';
import 'package:globalbankuiclone/widgets/carousel_widget.dart';
import 'package:globalbankuiclone/widgets/navigation_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'GlobalSmart+',
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sms),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              ListTile(
                title: Text(
                  'Good Morning, Girija',
                  style: TextStyle(
                    fontSize: 25,
                    color: Kcolor.darkTextColor,
                  ),
                ),
                subtitle: Text(
                  "Welcome to GlobalSMart Plus",
                  style: TextStyle(
                    fontSize: 18,
                    color: Kcolor.greyTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //Phone Number Field
              TextField(
                style: const TextStyle(
                  fontSize: 19,
                ),
                maxLength: 10,
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

              //Password Field
              const SizedBox(height: 30),
              TextField(
                cursorColor: Kcolor.darkTextColor,
                obscureText: true,
                decoration: InputDecoration(
                  suffix: const Icon(Icons.visibility_off),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Kcolor.darkTextColor,
                    ),
                  ),
                  label: const Text('Password'),
                  labelStyle: TextStyle(
                    color: Kcolor.greyTextColor,
                    fontSize: 19,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
              ),

              //forget Password
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password',
                    style: TextStyle(
                      fontSize: 18,
                      color: Kcolor.blueTextColor,
                    ),
                  ),
                ],
              ),

              //Login
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const NavigationPage()));
                        },
                      ),
                    ),
                  )
                ],
              ),

              //register
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Don\'t have a Login?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 18,
                        color: Kcolor.blueTextColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RegisterPage()));
                    },
                  ),
                ],
              ),

              //slide show image carousel
              const CarouselWidget(),

              //Copyright
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Global IME Bank | © Copyright 2022. All rights reserved',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        items: navItems(
          [
            const Icon(Icons.login),
            const Icon(Icons.location_on),
            const Icon(Icons.qr_code_rounded),
            const Icon(Icons.phone),
            const Icon(Icons.apps),
          ],
          [
            'Login',
            'Locate Us',
            'Qr',
            'Contact',
            'More',
          ],
        ),
      ),
    );
  }
}
