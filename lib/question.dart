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




