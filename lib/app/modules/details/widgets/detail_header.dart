import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/colors.dart';
import '../../discovery/models/discovery_models.dart';

class DetailHeader extends StatelessWidget {
  final Product item;

  const DetailHeader({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset('assets/icons/chevron-left.svg'),
              ),
              const Text(
                'Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SvgPicture.asset('assets/icons/bookmark.svg'),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title.toString(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '\$${item.price.toString()}',
                      style: const TextStyle(
                        color: ColorPalette.secondaryDark,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  WidgetSpan(
                    child: Transform.translate(
                      offset: const Offset(2, -10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal:8,vertical: 2),
                       decoration: const BoxDecoration(
                         color:  ColorPalette.primary,
                         borderRadius: BorderRadius.all(
                           Radius.circular(21),
                         ),
                       ),
                        child: Text(
                          '${item.discountPercentage.toString()}%',
                          textScaleFactor: .8,
                          style: const TextStyle(color: ColorPalette.secondaryLight),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Image.asset('assets/images/review1.png'),
                      ),
                      Positioned(
                        left: 30,
                        child: Image.asset('assets/images/review2.png'),
                      ),
                      Positioned(
                        left: 60,
                        child: Image.asset('assets/images/review3.png'),
                      ),
                      Positioned(
                        left: 90,
                        child: Image.asset('assets/images/review4.png'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  const Text(
                    '204 Reviewers',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
