import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDonePage extends StatelessWidget {
  const PaymentDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/done.svg',
            ),
            const Text(
              'Payment done',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'You are almost there!',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            const Text(
              'Do not leave this page, or press the back button.',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
