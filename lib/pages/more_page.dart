import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Activities
          Container(
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            height: 40,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.3),
            child: const Text(
              "Activities",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Trsnsaction History
          ListTile(
            title: const Text('Transaction History'),
            leading:
                Image.asset('assets/transaction.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //My Tickets
          ListTile(
            title: const Text('My Tickets'),
            leading: Image.asset('assets/tickets.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //Support
          Container(
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            height: 30,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.3),
            child: const Text(
              "Support",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //FAQ
          ListTile(
            title: const Text('FAQ'),
            leading: Image.asset('assets/faq.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //Contact US
          ListTile(
            title: const Text('Contact Us'),
            leading:
                Image.asset('assets/contact_us.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //Complain
          ListTile(
            title: const Text('Complain'),
            leading: Image.asset('assets/complain.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //Locate Us
          ListTile(
            title: const Text('Locate Us'),
            leading: Image.asset('assets/locate_us.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //terms and Condition
          ListTile(
            title: const Text('Terms and Conditions'),
            leading: Image.asset('assets/terms_condition.png',
                height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //Privacy Policy
          ListTile(
            title: const Text('Privacy Policy'),
            leading:
                Image.asset('assets/privacy_policy.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //Check for update
          ListTile(
            title: const Text('Check for Update'),
            leading:
                Image.asset('assets/check_update.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: Colors.white),

          //About Us
          ListTile(
            title: const Text('About Us'),
            leading: Image.asset('assets/about_us.png', height: 40, width: 40),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    ));
  }
}
