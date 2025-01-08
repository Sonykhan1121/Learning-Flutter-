// Use a optional positional parameter [ device ]
String say(String from, String msg, [String? device]) {
  var result = '$from says, \n$msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

void main() {
  print(say("THT", "Here is the description.",'Samsung a50'));
}
