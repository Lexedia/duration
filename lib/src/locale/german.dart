import '../../locale.dart';

class GermanDurationLocale extends DurationLocale {
  const GermanDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'J';
    } else {
      return 'Jahr${amount > 1 ? 'e' : ''}';
    }
  }

  @override
  RegExp get yearPattern => RegExp(r'J(?:ahre?)?');

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'M';
    } else {
      return 'Monat${amount > 1 ? 'e' : ''}';
    }
  }

  @override
  RegExp get monthPattern => RegExp(r'M(?:onate?)?');

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'W';
    } else {
      return 'Woche${amount > 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get weekPattern => RegExp(r'W(?:ochen?)?');

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'T';
    } else {
      return 'Tag${amount > 1 ? 'e' : ''}';
    }
  }

  @override
  RegExp get dayPattern => RegExp(r'T(?:age?)?');

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Std';
    } else {
      return 'Stunde${amount > 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get hourPattern => RegExp(r'Std\.?|S(?:tunden?)?');

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Min';
    } else {
      return 'Minute${amount > 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get minutePattern => RegExp(r'M(?:inuten?)?');

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Sek';
    } else {
      return 'Sekunde${amount > 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get secondPattern => RegExp(r'S(?:ekunden?)?');

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Ms';
    } else {
      return 'Millisekunde${amount > 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get millisecondPattern => RegExp(r'Ms|M(?:illisekunden?)?');

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Us';
    } else {
      return 'Mikrosekunde${amount > 1 ? 'n' : ''}';
    }
  }

  @override
  RegExp get microsecondPattern => RegExp(r'Us|M(?:ikrosekunden?)?');
}
