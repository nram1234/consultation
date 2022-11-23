part of 'main_page_cubit.dart';

@immutable
abstract class MainPageCubirState {}

class MainPageCubirInitial extends MainPageCubirState {}
class BottomNavigationBar extends MainPageCubirState {
  int index=0;
int testThing =30;
  BottomNavigationBar(this.index);
}