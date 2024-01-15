import '../iphone_11_pro_max_twentyseven_screen/widgets/notificationlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';

class Iphone11ProMaxTwentysevenScreen extends StatelessWidget {
  const Iphone11ProMaxTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 24.v),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return NotificationlistItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Notifications",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }
}
