import 'package:flutter/material.dart';
import 'task.dart';
import 'question.dart';
import 'dart:async';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("Dart Tutorial"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Task(1, "创建一个奇数数组,包含1~10内的奇数\n\n任务：完成函数list_1", list_1, display: BlockAnimationWidget(),),
              Task(2, "字符串拼接\n\n任务：完成函数string_1", string_1),
              Task(3, "字符串插入和替换\n\n任务：完成函数string_2", string_1),
              Task(4, "映射\n\n任务： 完成函数map_1", map_1),
              Task(5, "求和函数\n\n任务：完成函数function_1", function_1),
              Task(6, "斐波那契数列\n\n任务：完成函数function_2", function_2),
              Task(7, "创建一个名为 Rectangle 的类\n\n任务：完成函数class_1", class_1),
            ],
          ),
        ),
      ),
    );
  }
}



class BlockAnimationWidget extends StatefulWidget {
  @override
  _BlockAnimationWidgetState createState() => _BlockAnimationWidgetState();
}

class _BlockAnimationWidgetState extends State<BlockAnimationWidget> {
  List<Widget> blockGroups = [
    // 第一组 block
    Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 水平方向居中
        children: [
          Container(color: Colors.red, width: 100, height: 100),
          Container(color: Colors.green, width: 100, height: 100),
          Container(color: Colors.blue, width: 100, height: 100),
        ],
      ),
    ),
    // 第二组 block
    Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 水平方向居中
        children: [
          Container(color: Colors.green, width: 100, height: 100),
          Container(color: Colors.red, width: 100, height: 100),
          Container(color: Colors.blue, width: 100, height: 100),
        ],
      ),
    ),
    // 第三组 block
    Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 水平方向居中
        children: [
          Container(color: Colors.blue, width: 100, height: 100),
          Container(color: Colors.green, width: 100, height: 100),
          Container(color: Colors.red, width: 100, height: 100),
        ],
      ),
    ),
  ];

  int currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        currentIndex++;
        if (currentIndex == blockGroups.length) {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (currentIndex < blockGroups.length)
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: blockGroups[currentIndex],
          ),
      ],
    );
  }
}

