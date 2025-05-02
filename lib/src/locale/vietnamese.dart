import '../../locale.dart';

class VietnameseDurationLocale extends DurationLocale {
  const VietnameseDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    return 'năm';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    return 'tháng';
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    return 'tuần';
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    return 'ngày';
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    return 'giờ';
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return 'phút';
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return 'giây';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return 'mili giây';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return 'micro giây';
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
