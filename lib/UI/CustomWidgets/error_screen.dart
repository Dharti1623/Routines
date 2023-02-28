import 'package:flutter/material.dart';
import '../../Utils/color_constant.dart';
import 'custom_container.dart';
import '../../Utils/image_constants.dart';
import '../../Utils/string_constant.dart';

// ignore: must_be_immutable
class SomethingWentWrong extends StatefulWidget {
  const SomethingWentWrong({Key? key,}) : super(key: key);
  @override
  State<SomethingWentWrong> createState() => _SomethingWentWrongState();
}

class _SomethingWentWrongState extends State<SomethingWentWrong> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.internetImageClr,
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Center(child: CustomImageContainer(ImageConstants.noInternetImage,AppColor.internetImageClr)),
            Center(child: CustomTextContainer(StringConstants.pleaseTryAgain)),
          ],
        ),
      ),
    );
  }
}
