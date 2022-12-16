import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/page_states/app_main_page_state.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/store/app_main_page_store.dart';

class AppMainPageController {
  final AppMainPageStore appMainPageStore;

  AppMainPageController(this.appMainPageStore);

  void goMenuNavigation({required PageState state}) {
    switch (state) {
      case PageState.search:
        return appMainPageStore.changePageState(state: state);
      case PageState.travel:
        return appMainPageStore.changePageState(state: state);

      default:
        appMainPageStore.changePageState(state: state);
    }

    appMainPageStore.changePageState(state: state);
  }
}
