import 'package:flutter/material.dart';
import 'package:flutter_payment_flow/screens/purchasing_page.dart';
import 'package:flutter_payment_flow/widgets/custom_card_widget.dart';
import 'package:flutter_payment_flow/widgets/doucment_card_widget.dart';
import 'package:flutter_payment_flow/widgets/icon_text_card.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedIndex = 0;
  List<String> buttonTexts = [
    'FUNDING',
    'TRACTION',
    'FINANCIALS',
    'COMPETITION'
  ];

  void selectButton(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
            style: TextStyle(color: Colors.green, fontSize: 18),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 90.0,
                  height: 90.0,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      "Agrizy",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      'assets/images/arrow_symbol.svg',
                      width: 12.0,
                      height: 16.0,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Keshav Industries",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14.0, // Optionally, you can set the font size
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        CustomCardWidget(
                          title: 'MIN INVT',
                          value: '₹ 1 Lakh',
                        ),
                        CustomCardWidget(
                          title: 'TENURE',
                          value: '61 days',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomCardWidget(
                          title: 'NET YIELD',
                          value: '13.23 %',
                        ),
                        CustomCardWidget(
                          title: 'RAISED',
                          value: '70 %',
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                const Text(
                  "Clients",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Clients",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Highlights",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return const IconTextCard(
                        inputText:
                            'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Key Metrics",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ElevatedButton(
                          onPressed: () {
                            selectButton(index);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: selectedIndex == index
                                ? Colors.green.shade800
                                : Colors.grey.shade400,
                          ),
                          child: Text(
                            buttonTexts[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        CustomCardWidget(
                          title: 'ACTIVE DEALS',
                          value: '6 of 18',
                        ),
                        CustomCardWidget(
                          title: 'RAISED',
                          value: '₹ 6.94 Cr',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomCardWidget(
                          title: 'MATURED DEALS',
                          value: '12 of 18',
                        ),
                        CustomCardWidget(
                          title: 'ON TIME PAYMENT',
                          value: '100 %',
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Documents",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const DoucmentCardView(
                  inputTitle: 'Invoice Discounting Contract',
                  inputDetails:
                      'All the legalese surrounding this deal and how it relates to you.',
                  imgLink: 'assets/images/documents_one.svg',
                ),
                const DoucmentCardView(
                  inputTitle: 'Invoice Discounting Contract',
                  inputDetails:
                      'Read more about the company and see how they pitch to investors.',
                  imgLink: 'assets/images/documents_two.svg',
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          child: BottomAppBar(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FILLED',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      '30%',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PurchasingPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.green.shade800,
                    minimumSize: const Size(150, 42),
                  ),
                  child: const Text(
                    'Tap to Invest',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
