extension DateHelper on DateTime {
  /// Checks if two dates are the same calendar day
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
