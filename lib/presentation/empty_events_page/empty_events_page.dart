import '../empty_events_page/widgets/eventcard2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EmptyEventsPage extends StatefulWidget {
  const EmptyEventsPage({Key? key})
      : super(
          key: key,
        );

  @override
  EmptyEventsPageState createState() => EmptyEventsPageState();
}

class EmptyEventsPageState extends State<EmptyEventsPage>
    with AutomaticKeepAliveClientMixin<EmptyEventsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildEventCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventCard(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return Eventcard2ItemWidget();
          },
        ),
      ),
    );
  }
}
