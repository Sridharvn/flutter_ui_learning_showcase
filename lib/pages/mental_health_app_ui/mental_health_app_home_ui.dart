import 'package:flutter/material.dart';
import 'package:flutter_ui_learning_showcase/pages/mental_health_app_ui/emoticon_face.dart';
import 'package:flutter_ui_learning_showcase/pages/mental_health_app_ui/exercise_tile.dart';
import 'package:flutter_ui_learning_showcase/widgets/UniversalFABToHome.dart';

class MentalHealthAppHomeUi extends StatefulWidget {
  const MentalHealthAppHomeUi({super.key});

  @override
  State<MentalHealthAppHomeUi> createState() => _MentalHealthAppHomeUiState();
}

class _MentalHealthAppHomeUiState extends State<MentalHealthAppHomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const UniversalFABToHome(),
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
        ],
        fixedColor: Colors.blue[800],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Sridhar
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Sridhar',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "31 Aug 1999",
                            style: TextStyle(color: Colors.blue[100]),
                          )
                        ],
                      ),
                      // Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      spacing: 5,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How Do You Feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      EmoticonFace(
                        emoticonFace: '☹️',
                        subTitle: 'Bad',
                      ),
                      // fine
                      EmoticonFace(
                        emoticonFace: '😑',
                        subTitle: 'Fine',
                      ),
                      // well
                      EmoticonFace(
                        emoticonFace: '🙂',
                        subTitle: 'Well',
                      ),
                      // excellent
                      EmoticonFace(
                        emoticonFace: '😊',
                        subTitle: 'Excellent',
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // White Container
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      // Exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // List view for Exercises
                      Expanded(
                          child: ListView(children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: "Speaking Skills",
                          numberOfExercises: "17",
                          Color: Colors.orange,
                        ),
                        ExerciseTile(
                          icon: Icons.person,
                          exerciseName: "Speaking Skills",
                          numberOfExercises: "17",
                          Color: Colors.deepOrange,
                        ),
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: "Speaking Skills",
                          numberOfExercises: "17",
                          Color: Colors.orange,
                        ),
                      ]))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
