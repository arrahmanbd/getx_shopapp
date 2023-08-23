class ImageAsset {
  ImageAsset._();
  static const String asset = 'assets/';
  static String icon(String value) {
    return '${asset}icons/$value.svg';
  }
  static String image(String value){
     return '${asset}images/$value.png';
  }
}
