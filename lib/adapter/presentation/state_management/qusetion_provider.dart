import 'package:flutter/cupertino.dart';

class QuestionProvider extends ChangeNotifier {
  List<Question> questionList = [
    Question(
      id: 0,
      questionTitle: "강아지 입양하려면 어떻게 해야 하나요?",
      questionContents:
          "강아지입양을 이번에 하기로 했는데 막상 강아지입양을 하자니 어디서 입양을 해야할지 정말 고민입니다.. 인터넷에 검색해서 찾아보니 괜찮은 곳이 없어서 혹시 괜찮은 곳 있다면 제발 알려주세요!!",
      isSelected: false,
    ),
    Question(
      id: 1,
      questionTitle: "강아지가 절뚝거려서 진찰받았더니 슬개골 수술 받아야 한데요. 어떻게 해야 하나요?",
      questionContents: "강아지 슬개골 수술 한 번 했었는데 또 다시 안 좋아지는 거 같아서 여쭤봐요. 강아지 슬개골에 수영이 좋은가요? 강아지 종은 말티즈입니당",
      isSelected: false,
    ),
    Question(
      id: 2,
      questionTitle: "강아지 사료 추천",
      questionContents:
          "강아지가 곧 성견이 돼서 퍼피 사료에서 성견 사료로 바꿔 주려고 하는데 요즘 사료 이슈 때문에 너무 불안 해서요ㅠㅠㅠ 가성비 괜찮고 문제 없는 사료 어떤 것들이 있을까요???",
      isSelected: false,
    ),
    Question(
      id: 3,
      questionTitle: "강아지 입양했는데 강아지 보험 들어야 할까요?",
      questionContents:
          "강아지를 분양을 받게되었습니다~~ 저희 가족이 되었는데요~~ 강아지 보험이 2개월은 의무라고하던데 진짜인가요?? 그리고 애기가 접종을 맞아야하는데 1 2 3 차 접종 비용이랑 중성화 수술 비용도 알려주세요~~",
      isSelected: false,
    ),
    Question(
      id: 4,
      questionTitle: "강아지 키우는거 허락받는법",
      questionContents:
          "16살이고 초5부터 강아지 키우자는 얘기 계속했었습니다. 할머니 할아버지 엄마 저 이렇게 살아요. 단순히 강아지를 예뻐서 키우고 싶은게 아니라 진짜 친구같은 가족으로 같이 살고싶어요. 친척집에서 강아지를 키우는데 제가 시간날때마다 가서 산책도 해주고 씻겨주고 그래요 할아버지는 강아지 싫어하시고 할머니는 좋아하시는것같은데 개 죽으면 어떻게 할거냐는 말을 하시고 엄마도 강아지 좋아하는데 키우는건 싫다고해요 그래서 제가 맨날 집에서 심심하다고 강아지 안키울거면 나랑 좀더 놀아달라고 말을 했는데 엄마가 약간 좀 뭘 생각하시는것같은 표정이었고 예전에 강아지 키우자고 계속 그랬다가 엄마가 엄청 화낸적도 있어요 강아지 키우는거 진지하게 말하고싶은데 어떻게 방법이있을까요?그냥 포기하라는 답변은 안받습니다. 어짜피 이번에도 안되면 포기할거에요",
      isSelected: false,
    )
  ];

  String _question = '';

  String get question => _question;

  set question(String value) {
    _question = value;
    notifyListeners();
  }

  List<Question> get getQuestionList => questionList;

  set setQuestionList(value) {
    questionList = value;
    notifyListeners();
  }

  set setIsSelected(int index) {
    for (int i = 0; i < questionList.length; i++) {
      if (i == index) {
        questionList[index].isSelected = !questionList[index].isSelected;
      } else {
        questionList[i].isSelected = false;
      }
    }

    notifyListeners();
  }
}

class Question {
  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      questionTitle: json['questionTitle'],
      questionSummary: json['questionContent'],
      questionContents: json['questions'],
      isSelected: json['isSelected'],
    );
  }

  Question(
      {required this.isSelected,
      required this.id,
      required this.questionTitle,
      this.questionSummary,
      required this.questionContents});

  final int id;
  final String questionTitle;
  String? questionSummary;
  final String questionContents;
  bool isSelected = false;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'questionTitle': questionTitle,
      'questionContent': questionSummary,
      'questions': questionContents,
      'isSelected': isSelected,
    };
  }
}
