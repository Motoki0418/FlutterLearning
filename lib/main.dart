import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false, // Material2 →　Material3に更新されたのでここをfalseにしないとAppBarが見えない
      ),
      home: JankenPage(),
    );
  }
}

class JankenPage extends StatefulWidget {
  const JankenPage({super.key});

  @override
  State<JankenPage> createState() => _JankenPageState();
}

class _JankenPageState extends State<JankenPage> {
  // 変数はここに書く
  String myHand = '✊';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけん'),
      ),
      body: Center(
        child: Column( // 縦に並べたい
          mainAxisAlignment: MainAxisAlignment.center,// 中央揃えにしたい
          children: [
            Text(
              myHand, // 変数の中身を表示
              style: TextStyle(
                fontSize: 32, // 文字サイズを大きくしたい
              ),
            ),
            SizedBox(height: 16), // 隙間をあけたい
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    myHand = '✊';
                    print(myHand);
                    setState(() {});// この命令を実行すると画面が更新される
                  },
                  child: Text('✊'),
                ),
                ElevatedButton(
                  onPressed: () {
                    myHand = '✌️';
                    print(myHand);
                    setState(() {});
                  },
                  child: Text('✌️'),
                ),
                ElevatedButton(
                  onPressed: () {
                    myHand = '✋';
                    print(myHand);
                    setState(() {});
                  },
                  child: Text('🖐'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}