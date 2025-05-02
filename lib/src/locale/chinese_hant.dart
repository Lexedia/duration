import '../../locale.dart';

class ChineseTraditionalDurationLocale extends DurationLocale {
  const ChineseTraditionalDurationLocale();

  @override
  RegExp get yearPattern => RegExp(r'年');
  
  @override
  RegExp get monthPattern => RegExp(r'月');
  
  @override
  RegExp get weekPattern => RegExp(r'週');
  
  @override
  RegExp get dayPattern => RegExp(r'日');
  
  @override
  RegExp get hourPattern => RegExp(r'小時');
  
  @override
  RegExp get minutePattern => RegExp(r'分鐘');
  
  @override
  RegExp get secondPattern => RegExp(r'秒');
  
  @override
  RegExp get millisecondPattern => RegExp(r'毫秒');
  
  @override
  RegExp get microsecondPattern => RegExp(r'微秒');

  @override
  String get defaultSpacer => '';

  @override
  String year(int amount, [bool abbreviated = true]) {
    return '年';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    return '月';
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    return '週';
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    return '日';
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    return '小時';
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return '分鐘';
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return '秒';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return '毫秒';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return '微秒';
  }
}
