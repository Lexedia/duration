import '../../locale.dart';

const _daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

bool _isLeapYear(int year) =>
    year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);

int _daysInMonthF(int year, int month) {
  var days = _daysInMonth[month];
  if (month == 2 && _isLeapYear(year)) days++;
  return days;
}

int _calculateDaysFromYearsAndMonths(int years, int months) {
  int totalDays = 0;
  int currentYear = 0;
  for (int i = 0; i < years; i++) {
    totalDays += _isLeapYear(currentYear) ? 366 : 365;
    currentYear++;
  }

  for (int i = 0; i < months; i++) {
    totalDays += _daysInMonthF(currentYear, (i % 12) + 1);
    if (i % 12 == 11) currentYear++;
  }

  return totalDays;
}

/// Parses duration string formatted by [prettyDuration] into [Duration] (in abbreviated mode).
/// [separator] defines the string that splits duration components in the string.
/// 
/// In case the units are duplicated, the last one is kept as a reference. The other ones are discarded.
/// So `1d 6d 7h` will result in `Duration(days: 6, hours: 7)`
///
/// Example:
/// ```dart
/// parseDuration('2w 5d 23h 59m 59s 999ms 999us', separator: ' '); // == Duration(days: 19, hours: 23, minutes: 59, seconds: 59, milliseconds: 999, microseconds: 999);
/// 
/// // You can also use full names if necessary.
/// parseDuration('2 weeks, 13 hours, 1 minute', separator: ', ');
/// ```
Duration parseDuration(
  String input, {
  String separator = ',',
  DurationLocale language = const EnglishDurationLocale(),
}) {
  bool isNegative = false;
  if (input.startsWith('-')) {
    isNegative = true;
    input = input.substring(1);
  } else if (input.startsWith('+')) {
    input = input.substring(1);
  }

  final parts = input.split(separator).map((t) => t.trim()).toList();

  int? years;
  int? months;
  int? weeks;
  int? days;
  int? hours;
  int? minutes;
  int? seconds;
  int? milliseconds;
  int? microseconds;

  final strings = [
    language.yearPattern,
    language.monthPattern,
    language.weekPattern,
    language.dayPattern,
    language.hourPattern,
    language.minutePattern,
    language.secondPattern,
    language.millisecondPattern,
    language.microsecondPattern
  ].map((e) => '(${e.pattern})').join('|');

  final regexp = RegExp('^(\\d+)\\s*(?:$strings)\$');

  for (String part in parts) {
    final match = regexp.matchAsPrefix(part);
    if (match == null) throw FormatException('Invalid duration format');

    int value = int.parse(match.group(1)!);

    (switch (match.groupCount) {
      >= 2 when match.group(2) != null => years = value,
      >= 3 when match.group(3) != null => months = value,
      >= 4 when match.group(4) != null => weeks = value,
      >= 5 when match.group(5) != null => days = value,
      >= 6 when match.group(6) != null => hours = value,
      >= 7 when match.group(7) != null => minutes = value,
      >= 8 when match.group(8) != null => seconds = value,
      >= 9 when match.group(9) != null => milliseconds = value,
      >= 10 when match.group(10) != null => microseconds = value,
      _ => throw FormatException('Invalid duration format'),
    });
  }

  int totalDays = 0;

  if (years != null || months != null) {
    totalDays += _calculateDaysFromYearsAndMonths(years ?? 0, months ?? 0);
  }

  totalDays += (days ?? 0) + (weeks ?? 0) * 7;

  var ret = Duration(
    days: totalDays,
    hours: hours ?? 0,
    minutes: minutes ?? 0,
    seconds: seconds ?? 0,
    milliseconds: milliseconds ?? 0,
    microseconds: microseconds ?? 0,
  );
  return isNegative ? -ret : ret;
}

/// Parses duration string formatted by Duration.toString() to [Duration].
/// The string should be of form hours:minutes:seconds.microseconds
///
/// Example:
///     parseTime('245:09:08.007006');
Duration parseTime(String input) {
  bool isNegative = false;
  if (input.startsWith('-')) {
    isNegative = true;
    input = input.substring(1);
  } else if (input.startsWith('+')) {
    input = input.substring(1);
  }

  final parts = input.split(':');

  if (parts.length != 3) throw FormatException('Invalid time format');

  int days;
  int hours;
  int minutes;
  int seconds;
  int milliseconds;
  int microseconds;

  {
    final p = parts[2].split('.');

    if (p.length != 2) throw FormatException('Invalid time format');

    // If fractional seconds is passed, but less than 6 digits
    // Pad out to the right so we can calculate the ms/us correctly
    final p2 = int.parse(p[1].padRight(6, '0'));
    microseconds = p2 % 1000;
    milliseconds = p2 ~/ 1000;

    seconds = int.parse(p[0]);
  }

  minutes = int.parse(parts[1]);

  {
    int p = int.parse(parts[0]);
    hours = p % 24;
    days = p ~/ 24;
  }

  // TODO verify that there are no negative parts

  var ret = Duration(
    days: days,
    hours: hours,
    minutes: minutes,
    seconds: seconds,
    milliseconds: milliseconds,
    microseconds: microseconds,
  );

  return isNegative ? -ret : ret;
}

Duration? tryParseDuration(String input) {
  try {
    return parseDuration(input);
  } catch (_) {
    return null;
  }
}

Duration? tryParseTime(String input) {
  try {
    return parseTime(input);
  } catch (_) {
    return null;
  }
}

Duration? tryParseDurationAny(String input) {
  try {
    return parseDuration(input);
  } catch (_) {
    try {
      return parseTime(input);
    } catch (e) {
      return null;
    }
  }
}
