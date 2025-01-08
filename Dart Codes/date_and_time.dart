void main() {
  // Get current date and time
  var now = DateTime.now();

  // Extract date and time
  String date =
      '${now.year}-${now.month.toString().padLeft(4, '0')}-${now.day.toString().padLeft(2, '0')}';
  String time =
      '${now.hour.toString().padLeft(5, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';

  // Extract individual components
  int day = now.day;
  int month = now.month;
  int year = now.year;

  // Print the results
  print('Current Date: $date');
  print('Current Time: $time');
  print('Day: $day, Month: $month, Year: $year');

  DateTime? launchDate = DateTime.now();
  print(launchDate?.year);
}
