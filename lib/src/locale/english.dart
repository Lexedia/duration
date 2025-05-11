import '../../locale.dart';

class EnglishDurationLocale extends DurationLocale {
  const EnglishDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'y';
    } else {
      return 'year${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get yearPattern => RegExp(r'y(?:ears?)?');

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mon';
    } else {
      return 'month${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get monthPattern => RegExp(r'M|mon(?:ths?)?');

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'w';
    } else {
      return 'week${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get weekPattern => RegExp(r'w(?:eeks?)?');

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return 'day${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get dayPattern => RegExp(r'd(?:ays?)?');

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return 'hour${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get hourPattern => RegExp(r'h(?:ours?)?');

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'min';
    } else {
      return 'minute${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get minutePattern => RegExp(r'm(?:in(?:utes?)?)?');

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'second${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get secondPattern => RegExp(r's(?:econds?)?');

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisecond${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get millisecondPattern => RegExp(r'ms|millisecond?');

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'microsecond${amount.abs() != 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get microsecondPattern => RegExp(r'us|microseconds?');
}
