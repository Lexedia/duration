import '../../locale.dart';

class ArabicDurationLocale extends DurationLocale {
  const ArabicDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ع';
    } else {
      if (amount == 1) {
        return 'عام';
      } else if (amount == 2) {
        return 'عامين';
      } else if (amount > 2 && amount < 11) {
        return 'أعوام';
      } else if (amount > 10) {
        return 'عام';
      }
      return 'أعوام';
    }
  }

  @override
  RegExp get yearPattern => RegExp(r'ع|عام|عامين|أعوام');

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ش';
    } else {
      if (amount == 1) {
        return 'شهر';
      } else if (amount == 2) {
        return 'شهرين';
      } else if (amount > 2 && amount < 11) {
        return 'أشهر';
      } else if (amount > 10) {
        return 'شهر';
      }
      return 'شهور';
    }
  }

  @override
  RegExp get monthPattern => RegExp(r'ش|شهر|شهرين|أشهر|شهور');

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'أ';
    } else {
      if (amount == 1) {
        return 'أسبوع';
      } else if (amount == 2) {
        return 'اسبوعين';
      } else if (amount > 2 && amount < 11) {
        return 'اسابيع';
      } else if (amount > 10) {
        return 'أسبوع';
      }
      return 'اسابيع';
    }
  }

  @override
  RegExp get weekPattern => RegExp(r'أ|أسبوع|اسبوعين|اسابيع');

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ي';
    } else {
      if (amount == 1) {
        return 'يوم';
      } else if (amount == 2) {
        return 'يومين';
      } else if (amount > 2 && amount < 11) {
        return 'ايام';
      } else if (amount > 10) {
        return 'يوم';
      }
      return 'ايام';
    }
  }

  @override
  RegExp get dayPattern => RegExp(r'ي|يوم|يومين|ايام');

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'س';
    } else {
      if (amount == 1) {
        return 'ساعة';
      } else if (amount == 2) {
        return 'ساعتين';
      } else if (amount > 2 && amount < 11) {
        return 'ساعات';
      } else if (amount > 10) {
        return 'ساعة';
      }
      return 'ساعات';
    }
  }

  @override
  RegExp get hourPattern => RegExp(r'س|ساعة|ساعتين|ساعات');

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'د';
    } else {
      if (amount == 1) {
        return 'دقيقة';
      } else if (amount == 2) {
        return 'دقيقتين';
      } else if (amount > 2 && amount < 11) {
        return 'دقائق';
      } else if (amount > 10) {
        return 'دقيقة';
      }
      return 'دقائق';
    }
  }

  @override
  RegExp get minutePattern => RegExp(r'د|دقيقة|دقيقتين|دقائق');

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ث';
    } else {
      if (amount == 1) {
        return 'ثانية';
      } else if (amount == 2) {
        return 'ثانيتين';
      } else if (amount > 2 && amount < 11) {
        return 'ثوان';
      } else if (amount > 10) {
        return 'ثانية';
      }
      return 'ثواني';
    }
  }

  @override
  RegExp get secondPattern => RegExp(r'ث|ثانية|ثانيتين|ثواني');

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'م ث';
    } else {
      if (amount == 1) {
        return 'ملّي ثانية';
      } else if (amount == 2) {
        return 'ملّي ثانيتين';
      } else if (amount > 2 && amount < 11) {
        return 'ملّي ثواني';
      } else if (amount > 10) {
        return 'ملّي ثانية';
      }
      return 'ملّي ثواني';
    }
  }

  @override
  RegExp get millisecondPattern =>
      RegExp(r'م ث|ملّي ثانية|ملّي ثانيتين|ملّي ثواني');

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ميكرو ث';
    } else {
      if (amount == 1) {
        return 'ميكرو ثانية';
      } else if (amount == 2) {
        return 'ميكرو ثانيتيتن';
      } else if (amount > 2 && amount < 11) {
        return 'ميكرو ثواني';
      } else if (amount > 10) {
        return 'ميكرو ثواني';
      }
      return 'ميكرو ثواني';
    }
  }

  @override
  RegExp get microsecondPattern =>
      RegExp(r'ميكرو ث|ميكرو ثانية|ميكرو ثانيتيتن|ميكرو ثواني');
}
