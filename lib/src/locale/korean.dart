import '../../locale.dart';

class KoreanDurationLocale extends DurationLocale {
  const KoreanDurationLocale();

  @override
  String get defaultSpacer => '';

  @override
  String year(int amount, [bool abbreviated = true]) {
    return '년';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    return '월';
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    return '주';
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    return '일';
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    return '시간';
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return '분';
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return '초';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return '밀리초';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return '마이크로초';
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
