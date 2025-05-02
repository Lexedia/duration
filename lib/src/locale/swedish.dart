import '../../locale.dart';

class SwedishDurationLanguage extends DurationLocale {
  const SwedishDurationLanguage();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'y';
    } else {
      return 'år';
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mon';
    } else {
      return 'månad${amount > 1 ? 'er' : ''}';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'w';
    } else {
      return 'veck${amount > 1 ? 'or' : 'a'}';
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return 'dag${amount > 1 ? 'ar' : ''}';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return 'timm${amount > 1 ? 'ar' : 'e'}';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'minut${amount > 1 ? 'er' : ''}';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'sekund${amount > 1 ? 'er' : ''}';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisekund${amount > 1 ? 'er' : ''}';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'mikrosekund${amount > 1 ? 'er' : ''}';
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
