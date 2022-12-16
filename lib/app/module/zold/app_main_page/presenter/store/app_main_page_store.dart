import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/page_states/app_main_page_state.dart';

class AppMainPageStore {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final mainPageState = ValueNotifier<AppMainPageState>(SearchPageState());

  void changePageState({required PageState state}) {
    switch (state) {
      case PageState.search:
        mainPageState.value = SearchPageState();
        break;

      case PageState.travel:
        mainPageState.value = TravelState();
        break;
      default:
        mainPageState.value = SearchPageState();
    }
  }

  void openDrawer() {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}
