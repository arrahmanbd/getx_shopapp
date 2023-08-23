import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:zainik_task/app/core/constants/colors.dart';
import 'package:zainik_task/app/core/constants/image_assets.dart';

class CustomProfileCardDialog extends StatelessWidget {
  final String name;
  final String address;
  final String profile;
  final String image;
  const CustomProfileCardDialog({
    Key? key,
    required this.name,
    required this.address,
    required this.profile,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.primaryLight,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(66, 75, 75, 75).withOpacity(0.3),
            offset: const Offset(2, 3),
            blurRadius: 14,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.symmetric(horizontal: size.width * .15),
      child: Wrap(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    //user profile picture
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        profile,
                        height: 32,
                        width: 32,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: ColorPalette.secondaryDark,
                            ),
                          ),
                          Text(
                            address,
                            style: const TextStyle(
                              fontSize: 10,
                              color: ColorPalette.secondaryDark,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(width: 20.0),
                    Chip(
                      side:  BorderSide(width: 0, color: ColorPalette.primary.withOpacity(0.1)),
                      labelPadding: const EdgeInsets.all(4.0),
                      avatar: SvgPicture.asset(
                        ImageAsset.icon('add_user'),
                      ),
                      label: const Text(
                        'Follow',
                        style: TextStyle(
                            color: ColorPalette.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.3),
                      ),
                      backgroundColor: ColorPalette.primary.withOpacity(0.05),
                      elevation: 6.0,
                      //shadowColor: Colors.grey[60],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16, bottom: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: 234,
                      height: 234,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: ColorPalette.secondaryLight,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: const BorderSide(width: 0, color: ColorPalette.secondaryLight),
                    ),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: ColorPalette.secondaryLight,
                        foregroundColor: ColorPalette.secondaryDark),
                    child: const Text(
                      "View Post",
                      style: TextStyle(
                        color: ColorPalette.secondaryDark,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   style: ButtonStyle(
                //       elevation: MaterialStateProperty.resolveWith((states) =>
                //           states.contains(MaterialState.pressed) ? 0.3 : 0),
                //       // Change the 8 to adjust the default elevation of the button
                //       backgroundColor: MaterialStateProperty.all<Color>(
                //           ColorPalette.secondaryLight),
                //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //         RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(16.0),
                //         ),
                //       )),
                //   child: Container(
                //     height: 44,
                //     alignment: Alignment.center,
                //     width: double.infinity,
                //     padding: const EdgeInsets.all(12),
                //     child: const Text(
                //       "View Post",
                //       style: TextStyle(
                //           color: ColorPalette.secondaryDark,
                //           fontSize: 14,
                //           fontWeight: FontWeight.w700),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
