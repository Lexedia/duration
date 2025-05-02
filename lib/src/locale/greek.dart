import '../../locale.dart';

class GreekDurationLocale extends DurationLocale {
  const GreekDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'χ';
    } else {
      return 'χρόν${amount.abs() != 1 ? 'ια' : 'ος'}';
    }
  }

  @override
  RegExp get yearPattern => RegExp(r'χρόν?ια?|χρόν?ος');

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μην';
    } else {
      return 'μήν${amount.abs() != 1 ? 'ες' : 'ας'}';
    }
  }

  @override
  RegExp get monthPattern => RegExp(r'μήν?ες?|μήν?ας');

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ε';
    } else {
      return 'εβδομάδ${amount.abs() != 1 ? 'ες' : 'α'}';
    }
  }

  @override
  RegExp get weekPattern => RegExp(r'ε(?:βδομάδ(?:ες|a))?');

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μ';
    } else {
      return 'μέρ${amount.abs() != 1 ? 'ες' : 'α'}';
    }
  }

  // maybe use `η` (`U+03B7`) to match abbr days..
  @override
  RegExp get dayPattern => RegExp(r'μέρ(?:ες|α)');

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ω';
    } else {
      return 'ώρ${amount.abs() != 1 ? 'ες' : 'α'}';
    }
  }

  @override
  RegExp get hourPattern => RegExp(r'ω|ώρ(?:ες|α)');

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'λεπ';
    } else {
      return 'λεπτ${amount.abs() != 1 ? 'ά' : 'ό'}';
    }
  }

  @override
  RegExp get minutePattern => RegExp(r'λεπ(?:τ(?:ά|ό))?');

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'δ';
    } else {
      return 'δευτερόλεπτ${amount.abs() != 1 ? 'α' : 'ο'}';
    }
  }

  @override
  RegExp get secondPattern => RegExp(r'δ(?:ευτερόλεπτ(?:α|o))?');

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'χ';
    } else {
      return 'χιλιοστ${amount.abs() != 1 ? 'ά' : 'ό'}';
    }
  }

  @override
  RegExp get millisecondPattern => RegExp(r'χ(?:ιλιοστ(?:ά|ó))?');

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μ';
    } else {
      return 'μικροδευτερόλεπτ${amount.abs() != 1 ? 'α' : 'ο'}';
    }
  }

  @override
  RegExp get microsecondPattern => RegExp(r'μ(?:ικροδευτερόλεπτ(?:α|o))?');
}
