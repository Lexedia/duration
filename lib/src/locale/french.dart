import '../../locale.dart';

class FrenchDurationLocale extends DurationLocale {
  const FrenchDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'an${amount > 1 ? 's' : ''}';
    } else {
      return 'année${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get yearPattern => RegExp(r'an(?:née)?s?');

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mo';
    } else {
      return 'mois';
    }
  }

  @override
  RegExp get monthPattern => RegExp(r'mo(?:is)?');

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'sem';
    } else {
      return 'semaine${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get weekPattern => RegExp(r'sem(?:aines?)?');

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'j';
    } else {
      return 'jour${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get dayPattern => RegExp(r'j(?:ours?)?');

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return 'heure${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get hourPattern => RegExp(r'h(?:eures)?');

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'min';
    } else {
      return 'minute${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get minutePattern => RegExp(r'min(?:utes?)?');

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'seconde${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get secondPattern => RegExp(r's(?:econdes?)?');

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'milliseconde${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get millisecondPattern => RegExp(r'ms|millisecondes?');

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'microseconde${amount > 1 ? 's' : ''}';
    }
  }

  @override
  RegExp get microsecondPattern => RegExp(r'us|microsecondes?');
}
