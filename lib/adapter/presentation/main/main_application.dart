import 'package:flutter/material.dart';
import 'package:paw_friends_web/adapter/presentation/state_management/answer_provider.dart';
import 'package:paw_friends_web/adapter/presentation/state_management/qusetion_provider.dart';
import 'package:provider/provider.dart';

class MainApplication extends StatefulWidget {
  const MainApplication({super.key, required this.title});

  final String title;

  @override
  State<MainApplication> createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  int _counter = 0;
  bool readOnly = true;
  bool enabled = true;
  double widthFactor = 0.6;
  bool isButtonClicked = false;
  int questionId = 0;

  final TextEditingController _textEditingController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Theme.of(context).colorScheme.background,
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.white, // Theme.of(context).colorScheme.onPrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title,
            style:
                Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.grey, fontWeight: FontWeight.bold)),

        centerTitle: false,
      ),
      body: Consumer<AnswerProvider>(builder: (context, answerProvider, child) {
        return Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: widthFactor * 0.9,
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        String answerSummary = "";
                        List answerContents = [];
                        String answerExtra = "";

                        if (answerProvider.isSubmitted) {
                          answerSummary = answerProvider.answerList[answerProvider.selectedItem].answerSummary;
                          answerContents = answerProvider.answerList[answerProvider.selectedItem].answerContents;
                          answerExtra = answerProvider.answerList[answerProvider.selectedItem].answerExtra;
                        }
                        return answerProvider.isSubmitted
                            ? Column(
                                children: [
                                  Text(answerSummary),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: answerContents.map<Widget>((section) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              section['title'],
                                              style: Theme.of(context).textTheme.headline6,
                                            ),
                                            if (section['summary'].isNotEmpty)
                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                                child: Text(section['summary']),
                                              ),
                                            ...section['contents'].map<Widget>((content) {
                                              return Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      content['subtitle'] ?? 'null item',
                                                      style: Theme.of(context).textTheme.subtitle1,
                                                    ),
                                                    ...content['content']
                                                        .map<Widget>((item) => Padding(
                                                              padding: const EdgeInsets.symmetric(vertical: 2.0),
                                                              child: Text('- $item'),
                                                            ))
                                                        .toList(),
                                                  ],
                                                ),
                                              );
                                            }).toList(),
                                            if (section['extra'].isNotEmpty)
                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                                child: Text(section['extra']),
                                              ),
                                            Divider(),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(answerExtra)
                                ],
                              )
                            : SizedBox.shrink();
                      }),
                ),
              ),
              // LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
              //   // Calculate the height based on the number of children
              //   double buttonHeight = 48.0; // Assuming each button has a height of 48.0
              //   double listHeight = 48.0; // Minimum height to show one button
              //   int itemCount = 10;
              //
              //   if (itemCount > 0) {
              //     listHeight = (buttonHeight * itemCount).clamp(48.0, constraints.maxHeight);
              //   }
              //   return Container(
              //     height: listHeight,
              //     child: ListView.builder(
              //       shrinkWrap: true,
              //       itemCount: 10,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (BuildContext context, int index) {
              //         return OutlinedButton(
              //             onPressed: () {
              //               print("out lined button clicked!");
              //             },
              //             child: Text("outLinedButton ${index}"));
              //       },
              //     ),
              //   );
              // }),
              Consumer<QuestionProvider>(builder: (context, questProvider, child) {
                List<Question> questionList = questProvider.getQuestionList;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        spacing: 8.0, // Space between items horizontally
                        runSpacing: 8.0, // Space between items vertically
                        children: List.generate(questionList.length, (int index) {
                          return Column(
                            children: [
                              // Tooltip(
                              //   preferBelow: false,
                              //   message: questionList[index].questionContents,
                              //   child: OutlinedButton(
                              //     onHover: (isHover) {},
                              //     onPressed: () {
                              //       print("Outlined button clicked!");
                              //     },
                              //     child: Text(questionList[index].questionTitle),
                              //   ),
                              // ),
                              OutlinedButton(
                                style: ButtonStyle(
                                    backgroundColor: questProvider.getQuestionList[index].isSelected
                                        ? MaterialStateProperty.all<Color>(Colors.blue[100]!)
                                        : MaterialStateProperty.all<Color>(Colors.transparent)),
                                onHover: (isHover) {},
                                onPressed: () {
                                  questProvider.setIsSelected = index;
                                  print("Outlined button clicked!");
                                  isButtonClicked = questProvider.getQuestionList[index].isSelected;
                                  if (questProvider.getQuestionList[index].isSelected) {
                                    _textEditingController.text = questionList[index].questionContents;
                                    questionId = questProvider.getQuestionList[index].id;
                                  } else {
                                    _textEditingController.clear();
                                  }
                                },
                                child: Text(questionList[index].questionTitle),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      // color: Colors.grey[100],
                      child: FractionallySizedBox(
                        widthFactor: widthFactor,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodySmall,
                                readOnly: readOnly,
                                enabled: enabled,
                                minLines: 1,
                                maxLines: null,
                                controller: _textEditingController,
                                decoration: InputDecoration(
                                  filled: isButtonClicked,
                                  fillColor: Colors.grey,
                                  hintText: 'Enter your message...',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.send),
                              onPressed: () {
                                // if (_textEditingController.text.isNotEmpty) {
                                //   // Perform the action when the send button is pressed
                                //   print("Message sent: ${_textEditingController.text}");
                                //   _textEditingController.clear();
                                // }
                                answerProvider.setSelectedItem = questionId;
                                // answerProvider.isSubmitted = false;
                                answerProvider.setIsSubmitted = true;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        );
      }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    ;
  }
}
