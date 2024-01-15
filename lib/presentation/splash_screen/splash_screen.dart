import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
    // Replace 'home' with the route you want to navigate to
    Navigator.pushReplacementNamed(context, AppRoutes.signInScreen);
  });

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Opacity(
                  opacity: 0.7,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse69,
                    height: 61.v,
                    width: 188.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
                SizedBox(height: 238.v),
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage20231227,
                  height: 125.v,
                  width: 256.h,
                ),
                SizedBox(height: 22.v),
                _buildSplashScreenRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSplashScreenRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse71,
              height: 225.v,
              width: 133.h,
              margin: EdgeInsets.only(top: 153.v),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse70,
              height: 322.v,
              width: 81.h,
              margin: EdgeInsets.only(bottom: 56.v),
            ),
          ),
        ],
      ),
    );
  }
}
