import 'package:flutter/material.dart'; // ❗ 가장 위에 추가

void main() {
  runApp(MyApp()); // ❗ 무조건 runApp(MyApp())
}

class MyApp extends StatelessWidget {
  // ❗ Flutter 기본 구조
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱 제목')),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              child: Center(child: Text('첫 번째 박스')),
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: double.infinity,
              child: Center(child: Text('두 번째 박스')),
            ),
          ],
        ),
      ),
    );
  }
}
