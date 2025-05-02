import '../../locale.dart';

class DutchDurationLocale extends DurationLocale {
  const DutchDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'j';
    } else {
      return amount == 1 ? 'jaar' : 'jaren';
    }
  }

  @override
  RegExp get yearPattern => RegExp(r'j(?:aar|aren)');

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'maand${amount != 1 ? 'en' : ''}';
    }
  }

  @override
  RegExp get monthPattern => RegExp(r'm(?:aand(?:en)?)?');

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'w';
    } else {
      return amount == 1 ? 'week' : 'weken';
    }
  }

  @override
  RegExp get weekPattern => RegExp(r'w(?:eek|eken)?');

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return 'dag${amount != 1 ? 'en' : ''}';
    }
  }

  @override
  RegExp get dayPattern => RegExp(r'd(?:ag(?:en)?)?');

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'u';
    } else {
      return amount == 1 ? 'uur' : 'uren';
    }
  }

  @override
  RegExp get hourPattern => RegExp(r'u(?:u?r(?:en)?)?');

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'min';
    } else {
      return amount == 1 ? 'minuut' : 'minuten';
    }
  }

  @override
  RegExp get minutePattern => RegExp(r'min(?:uu?t(?:en)?)?');

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'seconde${amount != 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get secondPattern => RegExp(r's(?:seconden?)?');

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'milliseconde${amount != 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get millisecondPattern => RegExp(r'ms|milliseconden?');

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'microseconde${amount != 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get microsecondPattern => RegExp(r'us|microseconden?');
}
