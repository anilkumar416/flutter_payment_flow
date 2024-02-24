import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoucmentCardView extends StatelessWidget {
  final String inputTitle;
  final String inputDetails;
  final String imgLink;

  const DoucmentCardView({
    super.key,
    required this.inputTitle,
    required this.inputDetails,
    required this.imgLink,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 320,
      child: Card(
        // elevation: 4,
        margin: const EdgeInsets.all(8),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                imgLink,
              ),
              const SizedBox(height: 16),
              Text(
                inputTitle,
                style: const TextStyle(color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Text(
                      inputDetails,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    'assets/images/download_icon.svg',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
