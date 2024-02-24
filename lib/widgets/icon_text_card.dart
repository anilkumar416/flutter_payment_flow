import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconTextCard extends StatelessWidget {
  final String inputText;

  const IconTextCard({
    super.key,
    required this.inputText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(8),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/bulb_icon.svg',
              ),
              const SizedBox(height: 16),
              Text(
                inputText,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
