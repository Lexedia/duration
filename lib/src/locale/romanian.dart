import '../../locale.dart';

class RomanianDurationLocale extends DurationLocale {
  const RomanianDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'a';
    } else {
      return 'an${amount > 1 ? 'i' : ''}';
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'l';
    } else {
      return 'lun${amount > 1 ? 'i' : 'ă'}';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'săptămân${amount > 1 ? 'i' : 'ă'}';
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'z';
    } else {
      return 'zi${amount > 1 ? 'le' : ''}';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return 'or${amount > 1 ? 'e' : 'ă'}';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'minut${amount > 1 ? 'e' : ''}';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'secund${amount > 1 ? 'e' : 'ă'}';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisecund${amount > 1 ? 'e' : 'ă'}';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'microsecund${amount > 1 ? 'e' : 'ă'}';
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
