import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  const NotificationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.h, 12.v, 24.h, 10.v),
      decoration: AppDecoration.outlineDeepPurple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleTL20,
              child: CustomImageView(
                imagePath: ImageConstant.imgScheduleOnprimary,
              ),
            ),
          ),
          Container(
            width: 230.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "Your session with Chinyere Njoku has been confirmed",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallGray90001_1.copyWith(
                height: 1.29,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2:30pm",
                  style: CustomTextStyles.labelLargeLatoGray90001,
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 41.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillLightBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "New",
                      style: CustomTextStyles.labelLargeLatoGray90001,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
