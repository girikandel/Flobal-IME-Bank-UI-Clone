import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/favorite.png', height: 250, width: 250),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Seems like you don\'t have any card associated with your bank account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  // fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
