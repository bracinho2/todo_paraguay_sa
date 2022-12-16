enum PageState {
  search,
  loading,
  error,
  travel,
  shopping,
}

abstract class AppMainPageState {}

class SearchPageState extends AppMainPageState {
  SearchPageState();
}

class TravelState extends AppMainPageState {
  TravelState();
}

class ShoppingState extends AppMainPageState {
  ShoppingState();
}
