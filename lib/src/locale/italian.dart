import '../../locale.dart';

class ItalianDurationLocale extends DurationLocale {
  const ItalianDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'a';
    } else {
      return 'ann${(amount == 0 || amount > 1) ? 'i' : 'o'}';
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'mes${(amount == 0 || amount > 1) ? 'i' : 'e'}';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'set';
    } else {
      return 'settiman${(amount == 0 || amount > 1) ? 'e' : 'a'}';
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'g';
    } else {
      return 'giorn${(amount == 0 || amount > 1) ? 'i' : 'o'}';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return 'or${(amount == 0 || amount > 1) ? 'e' : 'a'}';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'minut${(amount == 0 || amount > 1) ? 'i' : 'o'}';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'second${(amount == 0 || amount > 1) ? 'i' : 'o'}';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisecond${(amount == 0 || amount > 1) ? 'i' : 'o'}';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μs';
    } else {
      return 'microsecond${(amount == 0 || amount > 1) ? 'i' : 'o'}';
    }
  }

  @override
  RegExp get dayPattern => RegExp(r'g(?:iorn(?:i|o))?');

  @override
  RegExp get hourPattern => RegExp(r'h(?:or(?:e|a))?');

  @override
  RegExp get microsecondPattern => RegExp(r'μs|microsecond(?:i|o)');

  @override
  RegExp get millisecondPattern => RegExp(r'ms|millisecond(?:i|o)');

  @override
  RegExp get minutePattern => RegExp(r'm(?:inut(?:i|o))?');

  @override
  RegExp get monthPattern => RegExp(r'm(?:es(?:i|e))?');

  @override
  RegExp get secondPattern => RegExp(r's(?:econd(?:i|o))?');

  @override
  RegExp get weekPattern => RegExp(r'set(?:timan(?:e|a))?');

  @override
  RegExp get yearPattern => RegExp(r'a(?:nn(?:i|o))?');
}
