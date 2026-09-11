enum TypographyType {
  largeTitleBold,

  title1Bold,

  title2Regular,
  title2Medium,
  title2Semibold,
  title2Bold,

  headlineRegular,
  headlineMedium,

  textRegular,
  textMedium,
  textSemibold,

  subheadRegular,
  subheadMedium,
  subheadSemibold,

  caption1Regular,
  caption1Medium,
  caption1Semibold,

  caption2Medium,
  caption2Semibold,

  caption3Semibold,
}

class TypographyViewModel {
  final String text;
  final TypographyType type;

  const TypographyViewModel({
    required this.text,
    required this.type,
  });
}