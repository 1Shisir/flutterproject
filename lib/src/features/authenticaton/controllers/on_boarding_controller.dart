import 'package:flutterproject/src/constants/colors.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/models/model_on_boarding.dart';
import 'package:flutterproject/src/features/authenticaton/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        title: sOnBoardingTitle1,
        image: sOnBoardingImage1,
        subTitle: sOnBoardingSubTitle1,
        counterText: sOnBoardingCounter1,
        bgColor: sOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        title: sOnBoardingTitle2,
        image: sOnBoardingImage2,
        subTitle: sOnBoardingSubTitle2,
        counterText: sOnBoardingCounter2,
        bgColor: sOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        title: sOnBoardingTitle3,
        image: sOnBoardingImage3,
        subTitle: sOnBoardingSubTitle3,
        counterText: sOnBoardingCounter3,
        bgColor: sOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
