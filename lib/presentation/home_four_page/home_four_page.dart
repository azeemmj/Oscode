import '../home_four_page/widgets/userprofilegrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class HomeFourPage extends StatefulWidget {
  const HomeFourPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeFourPageState createState() => HomeFourPageState();
}

class HomeFourPageState extends State<HomeFourPage>
    with AutomaticKeepAliveClientMixin<HomeFourPage> {
  String radioGroup = "";

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
                Column(
                  children: [
                    _buildUserProfileGrid(context),
                    SizedBox(height: 55.v),
                    _buildMinRow(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileGrid(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBlue,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 256.v,
          crossAxisCount: 2,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofilegridItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMinRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage88,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM\r".toUpperCase(),
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 191.h,
                  child: Text(
                    "International kids safe parents night out",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomRadioButton(
                  text: "Radius Gallery • Santa Cruz",
                  value: "Radius Gallery • Santa Cruz",
                  groupValue: radioGroup,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkSecondarycontainer,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 4.h,
              bottom: 72.v,
            ),
          ),
        ],
      ),
    );
  }
}
