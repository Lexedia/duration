import '../../locale.dart';

class ChineseSimplifiedDurationLocale extends DurationLocale {
  const ChineseSimplifiedDurationLocale();

  @override
  String get defaultSpacer => '';

  @override
  RegExp get yearPattern => RegExp(year(0));

  @override
  String year(int amount, [bool abbreviated = true]) {
    return '年';
  }

  @override
  RegExp get monthPattern => RegExp(month(0));

  @override
  String month(int amount, [bool abbreviated = true]) {
    return '月';
  }

  @override
  RegExp get weekPattern => RegExp(week(0));

  @override
  String week(int amount, [bool abbreviated = true]) {
    return '周';
  }

  @override
  RegExp get dayPattern => RegExp(day(0));

  @override
  String day(int amount, [bool abbreviated = true]) {
    return '日';
  }

  @override
  RegExp get hourPattern => RegExp(hour(0));

  @override
  String hour(int amount, [bool abbreviated = true]) {
    return '小时';
  }

  @override
  RegExp get minutePattern => RegExp(minute(0));

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return '分';
  }

  @override
  RegExp get secondPattern => RegExp(second(0));

  @override
  String second(int amount, [bool abbreviated = true]) {
    return '秒';
  }

  @override
  RegExp get millisecondPattern => RegExp(millisecond(0));

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return '毫秒';
  }

  @override
  RegExp get microsecondPattern => RegExp(microseconds(0));

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return '微秒';
  }
}
