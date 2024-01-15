import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/presentation/organizer_profile_about_page/organizer_profile_about_page.dart';
import 'package:oscode2/presentation/organizer_profile_event_page/organizer_profile_event_page.dart';
import 'package:oscode2/presentation/organizer_profile_review_page/organizer_profile_review_page.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';

class OrganizerProfileReviewTabContainerScreen extends StatefulWidget {
  const OrganizerProfileReviewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OrganizerProfileReviewTabContainerScreenState createState() =>
      OrganizerProfileReviewTabContainerScreenState();
}

class OrganizerProfileReviewTabContainerScreenState
    extends State<OrganizerProfileReviewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup122,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage8996x96,
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                  radius: BorderRadius.circular(
                    48.h,
                  ),
                ),
                SizedBox(height: 19.v),
                Text(
                  "David  Silbia",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  "mentor",
                  style: CustomTextStyles.titleLargeBluegray40001,
                ),
                SizedBox(height: 19.v),
                CustomOutlinedButton(
                  height: 50.v,
                  text: "Book 1:1 session with me",
                  margin: EdgeInsets.only(
                    left: 44.h,
                    right: 40.h,
                  ),
                  buttonStyle: CustomButtonStyles.outlineIndigoATL10,
                  buttonTextStyle:
                      CustomTextStyles.bodyLargeAirbnbCerealWBkPrimary,
                ),
                SizedBox(height: 34.v),
                _buildTabview(context),
                _buildOrganizerProfileTabBarView(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMore,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 34.v,
      width: 326.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.indigoA20003,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray600,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'AirbnbCereal_W_Bk',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.indigoA20003,
        tabs: [
          Tab(
            child: Text(
              "About",
            ),
          ),
          Tab(
            child: Text(
              "event",
            ),
          ),
          Tab(
            child: Text(
              "Reviews",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrganizerProfileTabBarView(BuildContext context) {
    return SizedBox(
      height: 387.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          OrganizerProfileAboutPage(),
          OrganizerProfileEventPage(),
          OrganizerProfileReviewPage(),
        ],
      ),
    );
  }
}
