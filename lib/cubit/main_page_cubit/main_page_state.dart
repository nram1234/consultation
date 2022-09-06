part of 'main_page_cubit.dart';

@immutable
abstract class MainPageCubirState {}

class MainPageCubirInitial extends MainPageCubirState {}
class BottomNavigationBar extends MainPageCubirState {
  int index=0;

  BottomNavigationBar(this.index);
}