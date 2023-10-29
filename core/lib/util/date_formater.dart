class DateFormatter {
  static DateFormatter? _instance;

  factory DateFormatter() {
    _instance ??= DateFormatter._internal();
    return _instance!;
  }

  DateFormatter._internal();

  String formatCurrentDateTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = now.toString();
    final String formattedDate = formattedDateTime.substring(0, 10);
    return formattedDate;
  }

  String formatYesterDayDateTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = (now.day - 1).toString();
    final String formattedDate = formattedDateTime.substring(0, 10);
    return formattedDate;
  }
}
