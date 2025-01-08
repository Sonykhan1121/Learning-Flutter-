import 'dart:io';

void main() {
  var startTime = DateTime.now();
  print("Function started at : $startTime");

  sleep(Duration(seconds: 5));

  var endTime = DateTime.now();
  print("Function ended at : $endTime");

  var timedif = endTime.difference(startTime);

  print("time Taken by this program:: ${timedif.inSeconds}");
}
