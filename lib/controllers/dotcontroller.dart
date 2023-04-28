import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';




class DotController extends GetxController{
  RxInt currentPageIndex = 0.obs;

  void change(int x ){
     currentPageIndex.value= x;
  }
} 