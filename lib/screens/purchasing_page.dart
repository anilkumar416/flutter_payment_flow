import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class PurchasingPage extends StatefulWidget {
  const PurchasingPage({super.key});

  @override
  State<PurchasingPage> createState() => _PurchasingPageState();
}

class _PurchasingPageState extends State<PurchasingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            'assets/images/back_icon.svg',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Purchasing',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    'Agrizy',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  SvgPicture.asset(
                    'assets/images/arrow_small.svg',
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'Keshav Industries',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'ENTER AMOUNT',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  hintText: '₹ Min 50,000',
                  hintStyle: TextStyle(fontSize: 24),
                  border: InputBorder.none,
                ),
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Returns',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '₹ 56,555',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Not Yield',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        'assets/images/irr_icon.svg',
                      ),
                    ],
                  ),
                  const Text(
                    '13.11 %',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tenure',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '61 days',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 120,
        child: BottomAppBar(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Balance : ₹1,00,000',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Required : ₹0',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ActionSlider.standard(
                backgroundBorderRadius: BorderRadius.circular(12),
                sliderBehavior: SliderBehavior.stretch,
                rolling: false,
                height: 60,
                backgroundColor: Colors.white,
                toggleColor: Colors.green.shade800,
                iconAlignment: Alignment.centerRight,
                icon: const SizedBox(
                  width: 55,
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
                action: (controller) async {
                  // Perform desired action
                },
                child: const Text('SWIPE TO PAY'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
