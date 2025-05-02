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
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μην';
    } else {
      return 'μήν${amount.abs() != 1 ? 'ες' : 'ας'}';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ε';
    } else {
      return 'εβδομάδ${amount.abs() != 1 ? 'ες' : 'α'}';
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μ';
    } else {
      return 'μέρ${amount.abs() != 1 ? 'ες' : 'α'}';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ω';
    } else {
      return 'ώρ${amount.abs() != 1 ? 'ες' : 'α'}';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'λεπ';
    } else {
      return 'λεπτ${amount.abs() != 1 ? 'ά' : 'ό'}';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'δ';
    } else {
      return 'δευτερόλεπτ${amount.abs() != 1 ? 'α' : 'ο'}';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'χ';
    } else {
      return 'χιλιοστ${amount.abs() != 1 ? 'ά' : 'ό'}';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μ';
    } else {
      return 'μικροδευτερόλεπτ${amount.abs() != 1 ? 'α' : 'ο'}';
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
