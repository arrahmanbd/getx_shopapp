import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/dev-modified.png',width: 50,height:50),
              const SizedBox(width: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AR Rahman',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Pretty Cool!',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset('assets/icons/like.svg'),
        ],
      ),
    );
  }
}
