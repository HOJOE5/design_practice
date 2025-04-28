import 'package:flutter/material.dart';

void main() {
  runApp(DesignPracticeApp());
}

class DesignPracticeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DesignPracticeHome(),
    );
  }
}

class DesignPracticeHome extends StatefulWidget {
  @override
  _DesignPracticeHomeState createState() => _DesignPracticeHomeState();
}

class _DesignPracticeHomeState extends State<DesignPracticeHome> {
  Color boxColor = Colors.blue[300]!;
  double boxSize = 150;

  void changeBox() {
    setState(() {
      // 색깔과 크기 바꿔줌
      boxColor =
          boxColor == Colors.blue[300] ? Colors.green[300]! : Colors.blue[300]!;
      boxSize = boxSize == 150 ? 200 : 150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('통합 연습 앱', style: TextStyle(fontSize: 22)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: boxSize,
                  height: boxSize,
                  decoration: BoxDecoration(
                    color: boxColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '변경될 박스',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: changeBox,
              child: Text('박스 변경하기', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
