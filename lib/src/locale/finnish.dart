import '../../locale.dart';

class FinnishDurationLocale extends DurationLocale {
  const FinnishDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'v';
    } else {
      return 'vuosi${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get yearPattern => RegExp(r'v(?:uosia?)?');

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'kk';
    } else {
      return 'kuukausi${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get monthPattern => RegExp(r'kk(?:uukausia?)?');

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'vko';
    } else {
      return 'viikko${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get weekPattern => RegExp(r'vko(?:viikkoa?)?');

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'pvä';
    } else {
      return 'päivä${amount.abs() != 1 ? 'ä' : ''}';
    }
  }

  @override
  RegExp get dayPattern => RegExp(r'pvä(?:päivää?)?');

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 't';
    } else {
      return 'tunti${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get hourPattern => RegExp(r't(?:untia?)?');

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'min';
    } else {
      return 'minuutti${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get minutePattern => RegExp(r'min(?:uutti?)?');

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'sekunti${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get secondPattern => RegExp(r's(?:ekuntia?)?');

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisekunti${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get millisecondPattern => RegExp(r'ms|millisekuntia?');

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'mikrosekunti${amount.abs() != 1 ? 'a' : ''}';
    }
  }

  @override
  RegExp get microsecondPattern => RegExp(r'us|mikrosekuntia?');
}
