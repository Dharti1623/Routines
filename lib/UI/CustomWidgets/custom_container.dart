import 'package:flutter/material.dart';

import '../../../Utils/common_function.dart';
import '../../Utils/text_style_constant.dart';

// ignore: must_be_immutable
class CustomImageContainer extends StatelessWidget {
  String imagePath;
  Color bgColor;
  CustomImageContainer(this.imagePath, this.bgColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      // color: AppColor.transparent,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 10,
        bottom: MediaQuery.of(context).size.height / 4,
        left: MediaQuery.of(context).size.width / 10,
        right: MediaQuery.of(context).size.width / 10,
      ),
      child: imageLoad(imagePath),
    );
  }
}

// ignore: must_be_immutable
class CustomTextContainer extends StatelessWidget {
  String text;
  CustomTextContainer(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 3,
        bottom: 0,
        left: MediaQuery.of(context).size.width / 10,
        right: MediaQuery.of(context).size.width / 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            maxLines: 4,
            textAlign: TextAlign.center,
            style: AppTextStyle.customTxtStyle,
          ),
        ],
      ),
    );
  }
}

/*Widget CustomImageContainer(String imagePath, BuildContext context, bgColor) {
  return Container(
    color: bgColor,
    // color: AppColor.transparent,
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height / 10,
      bottom: MediaQuery.of(context).size.height / 4,
      left: MediaQuery.of(context).size.width / 10,
      right: MediaQuery.of(context).size.width / 10,
    ),
    child: imageLoad(imagePath),
  );
}*/
/*Widget CustomTextContainer(BuildContext context, String text) {
  return Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height / 3,
      bottom: 0,
      left: MediaQuery.of(context).size.width / 10,
      right: MediaQuery.of(context).size.width / 10,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          maxLines: 4,
          textAlign: TextAlign.center,
          style: AppTextStyle.customTxtStyle,
        ),
      ],
    ),
  );
}*/
