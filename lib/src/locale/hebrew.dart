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
  RegExp get dayPattern => RegExp(r'(י|יום|ימים)');

  @override
  RegExp get hourPattern => RegExp(r'(ש|שעה|שעות)');

  @override
  RegExp get microsecondPattern => RegExp(r'(µs|מיקרו שניה|מיקרו שניות)');

  @override
  RegExp get millisecondPattern => RegExp(r'(ms|מילי שניה|מילי שניות)');

  @override
  RegExp get minutePattern => RegExp(r'(דק\.|דקה|דקות)');

  @override
  RegExp get monthPattern => RegExp(r'(ח|חודש|חודשיים)');

  @override
  RegExp get secondPattern => RegExp(r'(שנ\.|שניה|שניות)');

  @override
  RegExp get weekPattern => RegExp(r'(שב\.|שבוע|שבועות)');

  @override
  RegExp get yearPattern => RegExp(r'(שנ\.|שנה|שנים)');
}
