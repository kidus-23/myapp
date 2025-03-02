import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    const border2 = OutlineInputBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(3),
          right: Radius.elliptical(10, 60),
        ),
        borderSide: BorderSide(
            color: Colors.greenAccent,
            width: 15.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside));
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Currency Coverter',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Times New Roman',
                color: Colors.black,
              ),
            ),
            const TextField(
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
                  filled: true,
                  fillColor: Colors.red,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(
                          color: Colors.redAccent,
                          width: 5.0,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignInside)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(
                          color: Colors.redAccent,
                          width: 5.0,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignInside))),
            ),
            TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: 'Currency you want to convert to:',
                labelStyle: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                hintText: 'BIRR',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: const Icon(Icons.monetization_on),
                helperText: 'This is the currency to convert to',
                helperStyle: const TextStyle(
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.green,

                //focus changes the border size to the width to show the focus of the user
                //enable gives the border some space to make that changes so
                //that when the user taps the input field it doesn't jump
                focusedBorder: border2,
                enabledBorder: border2,
              ),
            ),
          ],
        )));
  }
}
