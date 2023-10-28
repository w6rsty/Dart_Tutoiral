import 'package:collection/collection.dart';

bool list_1() {
  // TODO: 创建一个奇数数组,包含1~10内的奇数
  var your_answer; // 使用循环创建这个数组


  // 不许改这里 :)
  const answer = [1,3,5,7,9];
  if (const ListEquality().equals(answer, your_answer)) {
    return true;
  } else {
    print("你的答案 $your_answer  正确答案 $answer");
    return false;
  }
}

bool string_1() {
  // TODO: 将以下两个字符串拼接成一个新的字符串
  var str1 = "Hello,";
  var str2 = "World!";
  var your_answer;

  // 不许改这里 :)
  const answer = "Hello,World!";
  if (answer == your_answer) {
    return true;
  } else {
    print("你的答案 '$your_answer'  正确答案 '$answer'");
    return false;
  }
}

bool string_2() {
  // TODO: 任务1 将字符串 "Hello" 插入到 "World!" 的中间位置
  var str1 = "World!";
  var str2 = "Hello";
  var your_answer_1; // 在这里编写代码

  // TODO: 任务2 将字符串 "bad" 替换为 "good"，并返回新的字符串
  var str = "That was a bad idea.";
  var your_answer_2; // 在这里编写代码

  // 不许改这里 :)
  const answer_1 = "HelloWorld!";
  const answer_2 = "That was a good idea.";
  if (answer_1 == your_answer_1 && answer_2 == your_answer_2) {
    return true;
  } else {
    print("你的答案 '$your_answer_1'  正确答案 '$answer_1'");
    print("你的答案 '$your_answer_2'  正确答案 '$answer_2'");
    return false;
  }
}
bool function_1() {
  // TODO: 创建一个函数，接受两个整数参数，并返回它们的和
  int sum(int a, int b) {
    // TODO: 在这里编写代码，计算两个整数 a 和 b 的和，并将结果返回
    return 114514;
  }

  // 不许改这里 :)
  const answer = 23649369912+12821371329;
  var your_answer = sum(23649369912, 12821371329);

  if (answer == your_answer) {
    return true;
  } else {
    print("你的答案 '$your_answer'  正确答案 '$answer'");
    return false;
  }
}

bool function_2() {
  // TODO: 创建一个函数，接受一个整数参数 n，并返回前 n 个斐波那契数列的列表
  // 请将函数命名为 'fibonacciList'

  // 不许改这里 :)
  const answer = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];
  var your_answer; // = fibonacciLisr()

  if (const ListEquality().equals(answer, your_answer)) {
    return true;
  } else {
    print("你的答案 '$your_answer'  正确答案 '$answer'");
    return false;
  }
}


bool class_1() {
  // TODO: 创建一个名为 Rectangle 的类，具有长度和宽度属性，以及一个计算面积的方法，
  // TODO: 随后创建一个长度为4，宽度为5的长方形对象，并计算其面积，赋值给your_answer
  // 请在下方编写你的代码
  var your_answer = 0;
  // 不许改这里 :)


  const answer = 20;
  if (answer == your_answer) {
    return true;
  } else {
    print("你的答案 '$your_answer'  正确答案 '$answer'");
    return false;
  }
}




