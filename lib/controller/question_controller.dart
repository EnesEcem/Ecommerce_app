import 'package:ecommerce_app/model/question.dart';
import 'package:ecommerce_app/service/remote_service/remote_question.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  static QuestionController instance = Get.find();
  RxList<Question> questionList = List<Question>.empty(growable: true).obs;
  RxBool isQuestionLoading = false.obs;

  @override
  void onInit() {
    getQuestions();
    super.onInit();
  }

  void getQuestions() async {
    try {
      isQuestionLoading(true);
      var result = await ReomoteQuestionService().get();
      if (result != null) {
        questionList.assignAll(QuestionListFromJson(result.body));
      }
    } finally {
      isQuestionLoading(false);
    }
  }
}
