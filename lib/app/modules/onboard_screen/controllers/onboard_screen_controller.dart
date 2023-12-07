import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/modules/onboard_screen/models/onboard_data_model.dart';
import 'package:student_schools/app/routes/app_pages.dart';
import 'package:student_schools/m_image_path.dart';

class OnboardScreenController extends GetxController {
  RxInt index = 0.obs;

  changeIndex(int pageIndex) {
    index.value = pageIndex;
  }

  toNextScreen() {
    if (index.value == onBoardDataList.length - 1) {
      Get.offAllNamed(Routes.USER_SELECT_INPUT);
    } else {
      index.value++;
      onboardPageController.nextPage(
          duration: const Duration(seconds: 1), curve: Curves.ease);
    }
  }

  late PageController onboardPageController =
      PageController(initialPage: index.value);

  RxList<OnBoardDataModel> onBoardDataList = <OnBoardDataModel>[
    OnBoardDataModel(
        imgUrl: MImagesPath.onboarding1,
        title: 'Flutter Developer..1',
        subTitle: 'Sub--Development..1'),
    OnBoardDataModel(
        imgUrl: MImagesPath.onboarding2,
        title: 'Flutter Developer..2',
        subTitle: 'Sub--Development..2'),
    OnBoardDataModel(
        imgUrl: MImagesPath.onboarding3,
        title: 'Flutter Developer..3',
        subTitle: 'Sub--Development..3'),
  ].obs;
}
