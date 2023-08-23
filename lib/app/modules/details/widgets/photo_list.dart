import 'package:flutter/material.dart';
import 'package:zainik_task/app/core/constants/colors.dart';


class PhotoList extends StatelessWidget {
  List<String> photos;
  PhotoList({
    Key? key,
    required this.photos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 221,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Container(
                height: 221,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: ColorPalette.gradient
                  ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                    photos[index],
                    
                  ),
                  placeholder: const AssetImage(
                      'assets/images/slider.jpg'
                  ),
                  )
                )),
          );
        },
      ),
    );
  }
}
