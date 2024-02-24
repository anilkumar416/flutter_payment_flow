import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.green.shade800),
            onPressed: () {},
          ),
          title: const Text(
            "Back to Deals",
            style: TextStyle(color: Colors.green),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                width: 90.0,
                height: 90.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
