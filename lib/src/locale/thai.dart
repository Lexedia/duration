import '../../locale.dart';

class ThaiDurationLocale extends DurationLocale {
  const ThaiDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    return 'ปี';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    return 'เดือน';
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    return 'สัปดาห์';
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    return 'วัน';
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ชม.';
    } else {
      return 'ชั่วโมง';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'น.';
    } else {
      return 'นาที';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return 'วินาที';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return 'มิลลิวินาที';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return 'ไมโครวินาที';
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
