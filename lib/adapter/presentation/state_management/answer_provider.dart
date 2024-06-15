import 'dart:math';

import 'package:flutter/cupertino.dart';

class AnswerProvider extends ChangeNotifier {
  /// List of answers for test

  List<Answer> answerList = [
    Answer(
        id: 0,
        answerSummary: "강아지 입양을 고려하고 계시군요! 입양 절차와 신뢰할 만한 입양처를 찾는 데 도움을 드리겠습니다. 입양 절차는 아래와 같습니다.",
        answerContents: [
          {
            "title": "입양 절차",
            "summary": "",
            "contents": [
              {
                "subtitle": "입양처 탐색:",
                "content": ["신뢰할 수 있는 입양처를 찾는 것이 중요합니다. 보호소, 동물보호단체, 입양 전문 사이트 등을 통해 입양처를 탐색하세요."]
              },
              {
                "subtitle": "방문 및 상담:",
                "content": ["입양을 고려하는 곳을 직접 방문하거나 상담을 진행하여 입양 절차, 강아지의 상태, 필요한 서류 등을 확인하세요."]
              },
              {
                "subtitle": "입양 신청:",
                "content": ["입양 신청서를 작성하고 제출하세요. 대부분의 입양처는 신청자의 생활 환경, 경험 등을 고려하여 적합한 반려동물을 매칭합니다."]
              },
              {
                "subtitle": "심사 및 면담:",
                "content": ["입양처에서 신청자를 심사하고 면담을 진행합니다. 이 과정에서 신청자의 반려동물 양육 능력과 환경을 평가합니다."]
              },
              {
                "subtitle": "입양 확정 및 교육:",
                "content": ["입양이 확정되면 입양처에서 필요한 교육과 안내를 제공합니다. 강아지의 건강 관리, 적응 방법 등에 대한 교육이 포함됩니다."]
              }
            ],
            "extra": ""
          },
          {
            "title": "신뢰할 만한 입양처",
            "summary": "",
            "contents": [
              {
                "subtitle": "유기견 보호소:",
                "content": [
                  "서울시 동물보호소: 서울시에서 운영하는 보호소로, 유기견 입양을 진행합니다.",
                  "대한동물보호협회 (KAWA): 전국적으로 유기동물을 보호하고 입양을 주선하는 협회입니다."
                ]
              },
              {
                "subtitle": "동물보호단체:",
                "content": [
                  "케어 (CARE): 동물권 보호 활동을 하는 단체로, 구조된 동물들의 입양을 주선합니다.",
                  "동물자유연대 (KARA): 유기동물 보호 및 입양 활동을 하는 단체입니다."
                ]
              },
              {
                "subtitle": "입양 전문 사이트:",
                "content": [
                  "포인핸드: 유기동물 입양을 돕기 위한 앱으로, 전국의 유기동물 정보를 제공합니다.",
                  "동물자유연대 입양센터: 입양을 원하는 사람들에게 맞춤형 강아지 매칭 서비스를 제공합니다."
                ]
              },
              {
                "subtitle": "SNS 및 온라인 커뮤니티:",
                "content": [
                  "인스타그램, 페이스북: 동물 보호 단체들의 계정을 팔로우하면 새로운 입양 공고를 신속하게 접할 수 있습니다.",
                  "네이버 카페, 다음 카페: '강아지 입양' 관련 커뮤니티를 검색하여 입양 정보를 찾아보세요."
                ]
              },
            ],
            "extra": ""
          },
          {
            "title": "입양 후 준비사항",
            "summary": "",
            "contents": [
              {
                "subtitle": "강아지 용품 준비:",
                "content": ["침대, 장난감, 사료, 목줄, 이름표 등 필요한 물품을 준비하세요."]
              },
              {
                "subtitle": "건강 관리:",
                "content": ["입양 후 처음 몇 주간은 동물병원에서 건강 검진을 받고 예방 접종 일정을 확인하세요."]
              },
              {
                "subtitle": "훈련 및 사회화:",
                "content": ["강아지가 새로운 환경에 적응할 수 있도록 기본 훈련과 사회화를 도와주세요."]
              },
            ],
            "extra": ""
          },
        ],
        answerExtra: "입양은 강아지에게 새로운 삶을 제공하는 중요한 결정입니다. 신중하게 준비하고 적절한 곳에서 입양하여 강아지가 건강하고 행복하게 지낼 수 있도록 도와주세요."),
    Answer(
        id: 1,
        answerSummary:
            "강아지의 슬개골 탈구는 특히 작은 종에서 흔히 발생하는 문제입니다. 말티즈도 슬개골 탈구에 취약한 종 중 하나입니다. 강아지의 슬개골 탈구와 관련된 몇 가지 중요한 정보를 알려드리겠습니다.",
        answerContents: [
          {
            "title": "슬개골 탈구 재수술",
            "summary": "슬개골 탈구가 재발하거나 상태가 악화된 경우 재수술이 필요할 수 있습니다. 다음 사항을 고려해 보세요:",
            "contents": [
              {
                "subtitle": "재수술의 필요성 평가",
                "content": ["수의사와 상담하여 현재 상태와 재수술의 필요성을 평가받으세요. 재발이 심각한 경우 수술이 불가피할 수 있습니다."]
              },
              {
                "subtitle": "수술 방법",
                "content": ["첫 번째 수술에서 사용된 방법과 재수술에서 권장되는 방법을 비교해 보세요. 최신 기술이나 다른 접근법이 더 나은 결과를 가져올 수 있습니다."]
              },
            ],
            "extra": "수술 후 재활과 관리도 매우 중요합니다. 수술 후 강아지의 슬개골 건강을 유지하기 위해 다음을 고려해 보세요:"
          },
          {
            "title": "물리치료 및 재활:",
            "summary": "",
            "contents": [
              {
                "subtitle": "수영",
                "content": ["수영은 저충격 운동으로 슬개골 건강에 도움이 될 수 있습니다. 물 속에서 운동하면 관절에 무리가 가지 않으면서 근력을 강화할 수 있습니다."]
              },
              {
                "subtitle": "물리치료",
                "content": ["전문 물리치료사와 상담하여 맞춤형 재활 프로그램을 구성해 보세요."]
              },
              {
                "subtitle": "체중 관리",
                "content": ["과체중은 관절에 추가 부담을 줄 수 있습니다. 적절한 체중을 유지하는 것이 중요합니다. 수의사와 상담하여 적절한 식단을 구성하세요."]
              }
            ],
            "extra": ""
          },
          {
            "title": "예방법",
            "summary": "슬개골 탈구의 재발을 막기 위해 다음을 신경 써 주세요:",
            "contents": [
              {
                "subtitle": "규칙적인 검사",
                "content": ["수의사와 정기적인 검진을 통해 슬개골 상태를 모니터링하세요."]
              },
              {
                "subtitle": "적절한 운동",
                "content": ["무리한 운동을 피하고 적절한 수준의 운동을 유지하세요."]
              }
            ],
            "extra": ""
          }
        ],
        answerExtra: "강아지의 슬개골 문제는 지속적인 관리와 주의가 필요합니다. 수의사와 상의하여 최상의 방법을 찾고 강아지가 건강하게 지낼 수 있도록 도와주세요."),
    Answer(
        id: 2,
        answerSummary:
            "강아지의 사료를 선택하는 것은 매우 중요한 일입니다. 특히 사료 이슈가 많기 때문에 신중한 선택이 필요합니다. 가성비가 좋고 검증된 성견 사료 몇 가지를 추천해드리겠습니다.",
        answerContents: [
          {
            "title": "추천 사료 목록",
            "summary": "",
            "contents": [
              {
                "subtitle": "오리젠 어덜트 독 푸드 (Orijen Adult Dog Food)",
                "content": [
                  "특징: 고단백, 곡물 무첨가, 신선한 재료 사용.",
                  "장점: 다양한 동물성 단백질과 신선한 재료로 구성되어 있어 영양가가 높습니다.",
                  "단점: 다소 가격이 높을 수 있습니다."
                ]
              },
              {
                "subtitle": "아카나 어덜트 독 푸드 (Acana Adult Dog Food)",
                "content": [
                  "특징: 고단백, 저탄수화물, 신선한 지역 재료 사용.",
                  "장점: 다양한 육류와 채소를 포함하며, 식이섬유가 풍부하여 소화에 좋습니다.",
                  "단점: 가격이 조금 높은 편이지만, 품질 대비 가성비가 좋습니다."
                ]
              },
              {
                "subtitle": "내추럴 밸런스 리미티드 인그리디언트 (Natural Balance L.I.D. Limited Ingredient Diets)",
                "content": [
                  "특징: 단일 동물성 단백질, 알러지 유발 성분 최소화.",
                  "장점: 알러지가 있는 강아지에게 적합하며, 소화가 용이한 재료를 사용합니다.",
                  "단점: 일부 강아지에게는 맛이 덜 매력적일 수 있습니다."
                ]
              },
              {
                "subtitle": "웰니스 코어 그레인 프리 (Wellness Core Grain-Free)",
                "content": [
                  "특징: 고단백, 곡물 무첨가, 자연 유래 성분.",
                  "장점: 강아지의 근육 발달과 전반적인 건강에 좋은 성분들이 포함되어 있습니다.",
                  "단점: 일부 강아지에게는 소화 문제가 있을 수 있습니다."
                ]
              },
              {
                "subtitle": "퓨리나 프로 플랜 스포트 퍼포먼스 (Purina Pro Plan Sport Performance)",
                "content": [
                  "특징: 고단백, 고칼로리, 운동량이 많은 강아지에게 적합.",
                  "장점: 운동량이 많은 강아지에게 필요한 영양소를 제공합니다.",
                  "단점: 일부 강아지에게는 고칼로리가 과도할 수 있습니다."
                ]
              },
            ],
            "extra": ""
          },
          {
            "title": "사료 선택 시 고려사항",
            "summary": "",
            "contents": [
              {
                "subtitle": "영양 성분:",
                "content": ["단백질, 지방, 탄수화물, 비타민, 미네랄 등의 균형이 잘 잡힌 사료를 선택하세요."]
              },
              {
                "subtitle": "성분 목록:",
                "content": ["첫 번째 성분이 동물성 단백질(닭, 소, 양 등)인지 확인하세요."]
              },
              {
                "subtitle": "알러지 유발 성분:",
                "content": ["강아지가 특정 성분에 알러지가 있는 경우 해당 성분이 포함되지 않은 사료를 선택하세요."]
              },
              {
                "subtitle": "사료 브랜드 평판:",
                "content": ["브랜드의 평판과 리뷰를 확인하여 신뢰할 수 있는 브랜드인지 확인하세요."]
              },
              {
                "subtitle": "수의사 상담:",
                "content": ["수의사와 상담하여 강아지의 건강 상태와 특성에 맞는 사료를 추천받는 것도 좋은 방법입니다."]
              },
            ],
            "extra": ""
          },
          {
            "title": "사료 변경 방법",
            "summary": "",
            "contents": [
              {
                "subtitle": "서서히 전환:",
                "content": ["기존 사료에서 새로운 사료로 바꿀 때는 서서히 전환하는 것이 좋습니다. 7-10일간 점진적으로 새로운 사료의 비율을 늘려가세요."]
              },
              {
                "subtitle": "관찰:",
                "content": ["사료 전환 과정에서 강아지의 소화 상태와 건강 상태를 주의 깊게 관찰하세요. 이상이 있을 경우 수의사와 상담하세요."]
              },
            ],
            "extra": ""
          },
        ],
        answerExtra: "이러한 추천 사료와 고려사항을 참고하여 강아지에게 맞는 성견 사료를 선택하시기 바랍니다."),
    Answer(
        id: 3,
        answerSummary:
            "강아지 입양을 축하드립니다! 반려견과 함께하는 삶은 많은 기쁨을 가져다줄 것입니다. 강아지 보험과 관련된 몇 가지 정보와 접종 및 중성화 수술 비용에 대해 알려드리겠습니다.",
        answerContents: [
          {
            "title": "강아지 보험",
            "summary":
                "강아지 보험은 갑작스러운 의료비용 부담을 줄이는 데 도움이 됩니다. 최근 일부 지역에서는 초기 2개월 동안 보험 가입이 의무화된 사례가 있을 수 있지만, 모든 지역에서 해당되는 것은 아닙니다. 자세한 사항은 입양 시 해당 기관이나 보험사에 문의하시는 것이 좋습니다.\n\n보험을 선택할 때 고려할 사항:",
            "contents": [
              {
                "subtitle": "포함 항목:",
                "content": [
                  "사고, 질병, 정기 검진 등 보험이 어떤 항목을 커버하는지 확인하세요.",
                ]
              },
              {
                "subtitle": "자부담 비율:",
                "content": [
                  "보험금 청구 시 자부담 비율과 한도를 확인하세요.",
                ]
              },
              {
                "subtitle": "보험료:",
                "content": [
                  "월 보험료와 보장 내용을 비교해 가성비를 확인하세요.",
                ]
              },
              {
                "subtitle": "예외사항:",
                "content": [
                  "보험이 커버하지 않는 예외사항이 무엇인지 확인하세요.",
                ]
              },
            ],
            "extra": ""
          },
          {
            "title": "강아지 접종 비용",
            "summary": "강아지의 첫 해에는 중요한 예방 접종이 필요합니다. 접종 비용은 병원과 지역에 따라 다를 수 있지만, 일반적인 비용은 다음과 같습니다:",
            "contents": [
              {
                "subtitle": "1차 접종:",
                "content": ["약 2-3만원"]
              },
              {
                "subtitle": "2차 접종:",
                "content": ["약 2-3만원"]
              },
              {
                "subtitle": "3차 접종:",
                "content": ["약 2-3만원"]
              },
            ],
            "extra": "각 접종은 강아지의 나이에 따라 다르게 맞추며, 보통 6주, 9주, 12주에 맞추게 됩니다."
          },
          {
            "title": "중성화 수술 비용",
            "summary": "중성화 수술 비용도 병원과 지역에 따라 다를 수 있습니다. 일반적인 비용은 다음과 같습니다:",
            "contents": [
              {
                "subtitle": "수컷 강아지:",
                "content": ["약 15-30만원"]
              },
              {
                "subtitle": "암컷 강아지:",
                "content": ["약 20-40만원"]
              },
            ],
            "extra": "암컷의 경우 수술이 더 복잡하여 비용이 더 높을 수 있습니다."
          },
          {
            "title": "보험의 필요성",
            "summary": "강아지 보험의 필요성은 개별 상황에 따라 다릅니다. 고려해야 할 점은:",
            "contents": [
              {
                "subtitle": "의료비 부담:",
                "content": ["강아지가 아프거나 사고를 당했을 때 의료비 부담을 줄일 수 있습니다."]
              },
              {
                "subtitle": "정기 검진:",
                "content": ["보험에 포함된 정기 검진 항목을 통해 강아지의 건강을 체계적으로 관리할 수 있습니다."]
              },
              {
                "subtitle": "예상치 못한 비용:",
                "content": ["갑작스러운 질병이나 사고에 대비할 수 있습니다."]
              },
            ],
            "extra": "보험 가입을 결정하실 때는 다양한 보험 상품을 비교해보고, 강아지의 건강 상태와 생활 환경을 고려하여 결정하는 것이 좋습니다."
          },
        ],
        answerExtra: "강아지의 건강과 행복을 위해 필요한 조치를 잘 취하시고, 함께하는 시간이 더욱 즐겁고 행복하길 바랍니다!"),
    Answer(
        id: 4,
        answerSummary:
            "강아지를 키우고 싶다는 강한 열망이 느껴지네요. 가족 구성원들의 의견을 고려하면서도 진지하게 논의할 수 있는 방법을 제안해드릴게요. 강아지를 키우는 데 있어서 가족 모두의 동의와 협조가 중요하니, 차분하고 성숙한 태도로 접근해보세요.",
        answerContents: [
          {
            "title": "준비 단계",
            "summary": "",
            "contents": [
              {
                "subtitle": "정보 수집:",
                "content": [
                  "강아지를 키우는 데 필요한 정보와 준비사항을 철저히 조사하세요. 강아지의 종류, 필요한 용품, 사료, 의료비용, 훈련 방법 등을 미리 알아두세요.",
                ]
              },
              {
                "subtitle": "책임감 강조:",
                "content": [
                  "강아지를 키우는 것이 단순히 예뻐서가 아니라, 친구이자 가족으로서 책임감을 가지고 돌보겠다는 의지를 강조하세요.",
                ]
              },
            ],
            "extra": ""
          },
          {
            "title": "가족과의 대화",
            "summary": "",
            "contents": [
              {
                "subtitle": "진지한 대화 준비:",
                "content": ["가족 모두가 함께할 수 있는 시간을 정해 진지하게 대화할 수 있는 시간을 마련하세요. 가족 모두의 의견을 존중하는 태도를 보여주세요."]
              },
              {
                "subtitle": "계획서 작성:",
                "content": ["강아지를 키우는 데 필요한 계획서를 작성하세요. 여기에는 강아지의 일상적인 돌봄, 비용 분담, 훈련 계획, 비상 시 대처 방안 등이 포함되어야 합니다."]
              },
              {
                "subtitle": "이유와 혜택 설명:",
                "content": [
                  "정서적 안정: 강아지가 가족에게 제공할 수 있는 정서적 안정과 행복을 설명하세요.",
                  "운동: 강아지와 함께하는 산책이 가족의 건강에도 도움이 될 수 있다는 점을 강조하세요.",
                  "책임감 학습: 강아지를 돌보는 과정에서 책임감과 리더십을 배울 수 있다는 점을 설명하세요."
                ]
              },
              {
                "subtitle": "반대 의견에 대한 대처:",
                "content": [
                  "할아버지의 반대: 강아지를 싫어하시는 할아버지의 의견을 존중하면서도, 강아지가 어떻게 할아버지의 생활에 방해가 되지 않도록 할 수 있을지 설명하세요. 예를 들어, 강아지가 할아버지의 공간에 접근하지 않도록 하거나, 할아버지와의 시간을 강아지가 방해하지 않도록 조치할 수 있습니다.",
                  "할머니의 걱정: 강아지가 죽을 때의 감정적 고통에 대한 할머니의 걱정을 이해하며, 생명에 대한 책임감을 가지고 있다는 것을 강조하세요.",
                  "엄마의 우려: 엄마가 반대하는 이유를 구체적으로 파악하고, 그 우려를 해결할 수 있는 방안을 제시하세요. 예를 들어, 강아지의 돌봄을 주도적으로 맡겠다고 약속하거나, 강아지의 교육과 훈련을 철저히 하겠다고 다짐하세요."
                ]
              },
            ],
            "extra": ""
          },
          {
            "title": "실행 계획",
            "summary": "",
            "contents": [
              {
                "subtitle": "체험 기간 제안:",
                "content": [
                  "가족이 강아지 키우는 것에 대해 여전히 확신이 없다면, 임시로 강아지를 돌보는 체험 기간을 제안해 보세요. 이 기간 동안 강아지가 가족에게 미치는 긍정적인 영향을 보여줄 수 있습니다."
                ]
              },
              {
                "subtitle": "책임 분담:",
                "content": ["강아지를 키우는 데 있어 가족 구성원들이 어떤 역할을 할지 명확히 나누고, 이를 충실히 이행하겠다는 다짐을 보여주세요."]
              },
              {
                "subtitle": "장기적인 계획:",
                "content": [
                  "강아지의 일생을 함께할 계획을 세우고, 이에 대한 준비가 되어 있음을 보여주세요. 예를 들어, 강아지의 건강 관리, 교육, 놀이 시간 등을 어떻게 관리할지 구체적으로 설명하세요."
                ]
              },
            ],
            "extra": "암컷의 경우 수술이 더 복잡하여 비용이 더 높을 수 있습니다."
          },
          {
            "title": "대화 예시",
            "summary":
                "엄마, 할아버지, 할머니, 저에게 정말 중요한 이야기가 있어요. 저는 정말 오랫동안 강아지를 키우고 싶어 했어요. 강아지를 키우는 것이 단순히 좋아서가 아니라, 가족으로서 함께 지내고 싶다는 마음에서예요. 제가 직접 조사해본 결과, 강아지를 키우는 데 필요한 모든 준비를 할 수 있고, 책임감 있게 돌볼 수 있다는 것을 확신하게 되었어요. 강아지가 가족에게 주는 행복과 정서적 안정, 그리고 저의 책임감과 리더십을 키울 수 있는 기회가 될 것 같아요. 여러분의 우려도 충분히 이해하고, 이를 해결할 수 있는 방안도 생각해봤어요. 함께 대화하고 결정해보고 싶어요.",
            "contents": [],
            "extra": ""
          },
        ],
        answerExtra: "이렇게 준비하고 접근하면, 가족이 당신의 진지한 의지를 이해하고 긍정적으로 검토해 줄 가능성이 높아질 것입니다. 화이팅!")
  ];

  List<String> displayedData = [];
  List<String> queuedData = [];

  bool isGeneratingFinished = false;

  double opacityLevel = 1.0;

  void addAnswerContent(List<String> contents) {
    displayedData = [];
    queuedData.addAll(contents);
    notifyListeners();
    _displayNextItem();
  }

  void _displayNextItem() async {
    if (queuedData.isNotEmpty) {
      final random = Random();
      int randomNumber = random.nextInt(3) + 1;
      print("Random number: $randomNumber");
      await Future.delayed(Duration(seconds: randomNumber)); // Delay of 1 second between items
      displayedData.add(queuedData.removeAt(0));
      notifyListeners();
      if (queuedData.isNotEmpty) {
        _displayNextItem(); // Continue to display next item
      } else {
        await Future.delayed(Duration(seconds: 7));
        isGeneratingFinished = true;
        // opacityLevel == 0 ? opacityLevel = 1 : opacityLevel = 0;
        notifyListeners();
      }
    }
  }

  String _answer = '';

  String get answer => _answer;

  void setAnswer(String answer) {
    _answer = answer;
    notifyListeners();
  }

  List<Answer> get getAnswerList => answerList;

  set setAnswerList(List<Answer> answerList) {
    answerList = answerList;
    notifyListeners();
  }

  int selectedItem = 0;

  set setSelectedItem(int index) {
    selectedItem = index;
    notifyListeners();
  }

  bool isSubmitted = false;

  set setIsSubmitted(bool value) {
    isSubmitted = value;
    notifyListeners();
    if (value) {
      // Start displaying the selected answer's contents
      addAnswerContent([
        answerList[selectedItem].answerSummary,
        ...answerList[selectedItem]
            .answerContents
            .expand((section) => [
                  section['title'],
                  if (section['summary'].isNotEmpty) section['summary'],
                  ...section['contents'].expand((content) => [content['subtitle'], ...content['content']])
                ])
            .map((item) => item.toString()),
        answerList[selectedItem].answerExtra
      ]);
    }
  }
}

class Answer {
  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      id: json['id'],
      answerSummary: json['answerSummary'],
      answerContents: json['answerContents'],
      answerExtra: json['answerExtra'],
    );
  }

  Answer({required this.id, required this.answerSummary, required this.answerContents, required this.answerExtra});

  final int id;
  final String answerSummary;
  final List<Map<String, dynamic>> answerContents;
  final String answerExtra;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'answerSummary': answerSummary,
      'answerContents': answerContents,
      'answerExtra': answerExtra,
    };
  }
}
