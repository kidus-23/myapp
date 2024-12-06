import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Currency Coverter',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Times New Roman',
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: 'Enter Amount in USD:',
                labelStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                hintText: '0.00',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefix: Icon(Icons.monetization_on),
                helperText: 'This is to change from 1 currency to another',
                helperStyle: TextStyle(color: Colors.grey),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: 'Currency you want to convert to:',
                labelStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                hintText: 'BIRR',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Icon(Icons.monetization_on),
                helperText: 'This is the currency to convert to',
                helperStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        )));
  }
}
