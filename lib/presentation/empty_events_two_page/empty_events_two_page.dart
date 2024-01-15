import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class EmptyEventsTwoPage extends StatefulWidget {
  const EmptyEventsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  EmptyEventsTwoPageState createState() => EmptyEventsTwoPageState();
}

class EmptyEventsTwoPageState extends State<EmptyEventsTwoPage>
    with AutomaticKeepAliveClientMixin<EmptyEventsTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 97.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52.h),
                  child: Column(
                    children: [
                      _buildTitleSection(context),
                      SizedBox(height: 149.v),
                      SizedBox(
                        height: 58.v,
                        width: 271.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 58.v,
                                width: 271.h,
                                padding: EdgeInsets.all(14.h),
                                decoration:
                                    AppDecoration.outlineIndigoF.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: CustomIconButton(
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowleft,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Explore Events ".toUpperCase(),
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 202.adaptSize,
              width: 202.adaptSize,
              margin: EdgeInsets.only(left: 6.h),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              decoration: AppDecoration.fillBlue5001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder101,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroupBlue5001,
                height: 157.adaptSize,
                width: 157.adaptSize,
                alignment: Alignment.bottomRight,
              ),
            ),
          ),
          SizedBox(height: 32.v),
          Text(
            "No Upcoming Event",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 11.v),
          Container(
            width: 204.h,
            margin: EdgeInsets.only(
              left: 11.h,
              right: 9.h,
            ),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style:
                  CustomTextStyles.bodyLargeAirbnbCerealWBkGray600_1.copyWith(
                height: 1.56,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
