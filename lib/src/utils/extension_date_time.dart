extension DateTimeExt on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return day == now.day && month == now.month && year == now.year;
  }

  bool isYesterday() {
    final now = DateTime.now();
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    return day == yesterday.day &&
        month == yesterday.month &&
        year == yesterday.year;
  }

  // yyyy-mm-dd
  String get stringFormat => toIso8601String().substring(0, 10);
}
