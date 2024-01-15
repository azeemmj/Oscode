import 'package:flutter/material.dart';import 'package:oscode2/core/app_export.dart';import 'package:oscode2/presentation/frame_page/frame_page.dart';import 'package:oscode2/presentation/home_page/home_page.dart';import 'package:oscode2/presentation/home_two_tab_container_page/home_two_tab_container_page.dart';import 'package:oscode2/presentation/see_all_events_one_page/see_all_events_one_page.dart';import 'package:oscode2/presentation/see_all_events_two_page/see_all_events_two_page.dart';import 'package:oscode2/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Explore: return AppRoutes.homePage; case BottomBarEnum.Events: return AppRoutes.seeAllEventsTwoPage; case BottomBarEnum.Mentor: return AppRoutes.homeTwoTabContainerPage; case BottomBarEnum.Podcast: return AppRoutes.seeAllEventsOnePage; case BottomBarEnum.Profile: return AppRoutes.framePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.seeAllEventsTwoPage: return SeeAllEventsTwoPage(); case AppRoutes.homeTwoTabContainerPage: return HomeTwoTabContainerPage(); case AppRoutes.seeAllEventsOnePage: return SeeAllEventsOnePage(); case AppRoutes.framePage: return FramePage(); default: return DefaultWidget();} } 
 }
