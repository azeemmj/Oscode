import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/presentation/empty_events_two_page/empty_events_two_page.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';

class EmptyEventsTabContainerScreen extends StatefulWidget {
  const EmptyEventsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmptyEventsTabContainerScreenState createState() =>
      EmptyEventsTabContainerScreenState();
}

class EmptyEventsTabContainerScreenState
    extends State<EmptyEventsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Container(
                height: 45.v,
                width: 295.h,
                decoration: BoxDecoration(
                  color: appTheme.black900.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(
                    22.h,
                  ),
                ),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.indigoA20003,
                  labelStyle: TextStyle(
                    fontSize: 15.fSize,
                    fontFamily: 'AirbnbCereal_W_Bk',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: appTheme.gray50002,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 15.fSize,
                    fontFamily: 'AirbnbCereal_W_Bk',
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorPadding: EdgeInsets.all(
                    5.0.h,
                  ),
                  indicator: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      17.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black900.withOpacity(0.1),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          5,
                        ),
                      ),
                    ],
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "UPCOMING",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "PAST EVENTS",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 667.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      EmptyEventsTwoPage(),
                      EmptyEventsTwoPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90003,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "My Booked Events",
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(24.h, 9.v, 24.h, 14.v),
        ),
      ],
    );
  }
}
