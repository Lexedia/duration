import '../../locale.dart';

class JapaneseDurationLocale extends DurationLocale {
  const JapaneseDurationLocale();

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
    return '時間';
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return '分';
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return '秒';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return 'ミリ秒';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return 'マイクロ秒';
  }
  
  @override
  // TODO: implement dayPattern
  RegExp get dayPattern => throw UnimplementedError();
  
  @override
  // TODO: implement hourPattern
  RegExp get hourPattern => throw UnimplementedError();
  
  @override
  // TODO: implement microsecondPattern
  RegExp get microsecondPattern => throw UnimplementedError();
  
  @override
  // TODO: implement millisecondPattern
  RegExp get millisecondPattern => throw UnimplementedError();
  
  @override
  // TODO: implement minutePattern
  RegExp get minutePattern => throw UnimplementedError();
  
  @override
  // TODO: implement monthPattern
  RegExp get monthPattern => throw UnimplementedError();
  
  @override
  // TODO: implement secondPattern
  RegExp get secondPattern => throw UnimplementedError();
  
  @override
  // TODO: implement weekPattern
  RegExp get weekPattern => throw UnimplementedError();
  
  @override
  // TODO: implement yearPattern
  RegExp get yearPattern => throw UnimplementedError();
}
