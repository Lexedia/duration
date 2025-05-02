import '../../locale.dart';

class HebrewDurationLocale extends DurationLocale {
  const HebrewDurationLocale();

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'י';
    } else {
      return amount == 1 ? 'יום' : 'ימים';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ש';
    } else {
      return amount == 1 ? 'שעה' : 'שעות';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'µs';
    } else {
      return amount == 1 ? 'מיקרו שניה' : 'מיקרו שניות';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return amount == 1 ? 'מילי שניה' : 'מילי שניות';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'דק.';
    } else {
      return amount == 1 ? 'דקה' : 'דקות';
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ח';
    } else {
      return amount == 1 ? 'חודש' : 'חודשיים';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'שנ.';
    } else {
      return amount == 1 ? 'שניה' : 'שניות';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'שב.';
    } else {
      return amount == 1 ? 'שבוע' : 'שבועות';
    }
  }

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'שנ.';
    } else {
      return amount == 1 ? 'שנה' : 'שנים';
    }
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
