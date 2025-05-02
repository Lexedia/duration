library duration.locale;

import '../../hourglass.dart';

import 'english.dart';
import 'french.dart';
import 'greek.dart';
import 'hebrew.dart';
import 'polish.dart';
import 'portuguese_br.dart';
import 'russian.dart';
import 'spanish.dart';
import 'swedish.dart';
import 'norwegian.dart';
import 'turkish.dart';
import 'italian.dart';
import 'german.dart';
import 'dutch.dart';
import 'chinese_hans.dart';
import 'chinese_hant.dart';
import 'thai.dart';
import 'romanian.dart';
import 'arabic.dart';
import 'korean.dart';
import 'indonesian.dart';
import 'czech.dart';
import 'finnish.dart';
import 'japanese.dart';
import 'ukrainian.dart';
import 'vietnamese.dart';

/// Interface to print time units for different locale
abstract class DurationLocale {
  const DurationLocale();

  /// A pattern to match years for this locale.
  RegExp get yearPattern;

  /// A pattern to match months for this locale.
  RegExp get monthPattern;

  /// A pattern to match weeks for this locale.
  RegExp get weekPattern;

  /// A pattern to match days for this locale.
  RegExp get dayPattern;

  /// A pattern to match hours for this locale.
  RegExp get hourPattern;

  /// A pattern to match minutes for this locale.
  RegExp get minutePattern;

  /// A pattern to match seconds for this locale.
  RegExp get secondPattern;

  /// A pattern to match milliseconds for this locale.
  RegExp get millisecondPattern;

  /// A pattern to match microseconds for this locale.
  RegExp get microsecondPattern;

  String get defaultSpacer => ' ';

  /// Print [amount] years for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String year(int amount, [bool abbreviated = true]);

  /// Print [amount] month for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String month(int amount, [bool abbreviated = true]);

  /// Print [amount] week for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String week(int amount, [bool abbreviated = true]);

  /// Print [amount] day for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String day(int amount, [bool abbreviated = true]);

  /// Print [amount] hour for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String hour(int amount, [bool abbreviated = true]);

  /// Print [amount] minute for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String minute(int amount, [bool abbreviated = true]);

  /// Print [amount] second for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String second(int amount, [bool abbreviated = true]);

  /// Print [amount] millisecond for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String millisecond(int amount, [bool abbreviated = true]);

  /// Print [amount] microseconds for the corresponding locale. The unit is
  /// abbreviated if [abbreviated] is set to true.
  String microseconds(int amount, [bool abbreviated = true]);

  String inUnit(DurationTersity unit, int amount, [bool abbreviated = true]) {
    switch (unit) {
      case DurationTersity.week:
        return week(amount, abbreviated);
      case DurationTersity.day:
        return day(amount, abbreviated);
      case DurationTersity.hour:
        return hour(amount, abbreviated);
      case DurationTersity.minute:
        return minute(amount, abbreviated);
      case DurationTersity.second:
        return second(amount, abbreviated);
      case DurationTersity.millisecond:
        return millisecond(amount, abbreviated);
      case DurationTersity.microsecond:
        return microseconds(amount, abbreviated);
    }
  }

  static DurationLocale? fromLanguageCode(String languageCode) {
    return _locales[languageCode];
  }
}

/// [DurationLocale] for English language
const EnglishDurationLocale englishLocale = EnglishDurationLocale();

/// [DurationLocale] for French language
const FrenchDurationLocale frenchLocale = FrenchDurationLocale();

/// [DurationLocale] for Greek language
const GreekDurationLocale greekLocale = GreekDurationLocale();

/// [DurationLocale] for Hebrew language
const HebrewDurationLocale hebrewLocale = HebrewDurationLocale();

/// [DurationLocale] for Polish language
const PolishDurationLocale polishLocale = PolishDurationLocale();

/// [DurationLocale] for Portuguese language
const PortugueseBRDurationLanguage portugueseBrLocale =
    PortugueseBRDurationLanguage();

/// [DurationLocale] for Russian language
const RussianDurationLanguage russianLocale = RussianDurationLanguage();

/// [DurationLocale] for Spanish language
const SpanishDurationLanguage spanishLocale = SpanishDurationLanguage();

/// [DurationLocale] for Swedish language
const SwedishDurationLanguage swedishLocale = SwedishDurationLanguage();

/// [DurationLocale] for Norwegian language
const NorwegianDurationLanguage norwegianLocale = NorwegianDurationLanguage();

/// [DurationLocale] for Turkish language
const TurkishDurationLocale turkishLocale = TurkishDurationLocale();

/// [DurationLocale] for Italian language
const ItalianDurationLocale italianLocale = ItalianDurationLocale();

/// [DurationLocale] for German language
const GermanDurationLocale germanLocale = GermanDurationLocale();

/// [DurationLocale] for Dutch language
const DutchDurationLocale dutchLocale = DutchDurationLocale();

/// [DurationLocale] for Chinese (Simplified) language
const ChineseSimplifiedDurationLocale chineseSimplifiedDurationLocale =
    ChineseSimplifiedDurationLocale();

ChineseSimplifiedDurationLocale get chineseDurationLocale =>
    chineseSimplifiedDurationLocale;

/// [DurationLocale] for Chinese (Traditional) language
const ChineseTraditionalDurationLocale chineseTraditionalLocale =
    ChineseTraditionalDurationLocale();

/// [DurationLocale] for Thai language
const ThaiDurationLocale thaiLocale = ThaiDurationLocale();

/// [DurationLocale] for Indonesian language
const IndonesianDurationLocale indonesianLocale = IndonesianDurationLocale();

/// [DurationLocale] for Korean language
const KoreanDurationLocale koreanLocale = KoreanDurationLocale();

/// [DurationLocale] for Romanian language
const RomanianDurationLocale romanianLocale = RomanianDurationLocale();

/// [DurationLocale] for Arabic language
const ArabicDurationLocale arabicLocale = ArabicDurationLocale();

/// [DurationLocale] for Czech language
const CzechDurationLocale czechLocale = CzechDurationLocale();

/// [DurationLocale] for Finnish language
const FinnishDurationLocale finnishLocale = FinnishDurationLocale();

/// [DurationLocale] for Japanese language
const JapaneseDurationLocale japaneseLocale = JapaneseDurationLocale();

///[DurationLocale] for Ukrainian language
const UkrainianDurationLocale ukrainianLocale = UkrainianDurationLocale();

///[DurationLocale] for Vietnamese language
const VietnameseDurationLocale vietnameseLocale = VietnameseDurationLocale();

const _locales = <String, DurationLocale>{
  'el': greekLocale,
  'en': englishLocale,
  'fr': frenchLocale,
  'he': hebrewLocale,
  'pl': polishLocale,
  'pt': portugueseBrLocale,
  'ru': russianLocale,
  'es': spanishLocale,
  'sv': swedishLocale,
  'nb': norwegianLocale,
  'tr': turkishLocale,
  'it': italianLocale,
  'de': germanLocale,
  'nl': dutchLocale,
  'zh': chineseSimplifiedDurationLocale,
  'zh_Hant': chineseTraditionalLocale,
  'th': thaiLocale,
  'id': indonesianLocale,
  'ko': koreanLocale,
  'ro': romanianLocale,
  'ar': arabicLocale,
  'cs': czechLocale,
  'fi': finnishLocale,
  'ja': japaneseLocale,
  'uk': ukrainianLocale,
  'vi': vietnameseLocale,
};
