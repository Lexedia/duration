import '../../locale.dart';

class RussianDurationLanguage extends DurationLocale {
  const RussianDurationLanguage();

  String _russianStr(int amount, String first, String second, String third) {
    final int lastDigit = amount % 10;
    if (lastDigit == 0 ||
        (amount >= 11 && amount <= 14) ||
        amount == 111 ||
        amount == 913) {
      return third;
    }
    if (lastDigit == 1) return first;
    if (lastDigit <= 4) return second;
    return third;
  }

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'г';
    } else {
      return _russianStr(amount, 'год', 'года', 'лет');
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мес';
    } else {
      return _russianStr(amount, 'месяц', 'месяца', 'месяцев');
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'нед';
    } else {
      return _russianStr(amount, 'неделя', 'недели', 'недель');
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'д';
    } else {
      return _russianStr(amount, 'день', 'дня', 'дней');
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ч';
    } else {
      return _russianStr(amount, 'час', 'часа', 'часов');
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'м';
    } else {
      return _russianStr(amount, 'минута', 'минуты', 'минут');
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'c';
    } else {
      return _russianStr(amount, 'секунда', 'секунды', 'секунд');
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мс';
    } else {
      return _russianStr(amount, 'миллисекунда', 'миллисекунды', 'миллисекунд');
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мкс';
    } else {
      return _russianStr(amount, 'микросекунда', 'микросекунды', 'микросекунд');
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
