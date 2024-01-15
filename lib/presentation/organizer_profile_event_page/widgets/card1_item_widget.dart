import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class Card1ItemWidget extends StatelessWidget {
  const Card1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.outlineBluegray60011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.orange200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Container(
                height: 92.v,
                width: 79.h,
                decoration: AppDecoration.fillOrange.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage81,
                      height: 92.v,
                      width: 79.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 92.v,
                        width: 79.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage85,
                              height: 92.v,
                              width: 79.h,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage86,
                              height: 92.v,
                              width: 79.h,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 10.v,
                bottom: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1st  May- Sat -2:00 PM\r".toUpperCase(),
                    style:
                        CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 164.h,
                    child: Text(
                      "A virtual evening of smooth jazz\r",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumGray90003.copyWith(
                        height: 1.39,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
