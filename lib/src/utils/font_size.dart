class FontSize {
  const FontSize._();

  /// value = 8.consist
  static late double x5s;

  /// value = 9.consist
  static late double x4s;

  /// value = 10.consist
  static late double x3s;

  /// value = 11.consist
  static late double x2s;

  /// value = 12.consist
  static late double xs;

  /// value = 13.consist
  static late double sm;

  /// value = 14.consist
  static late double md;

  /// value = 15.consist
  static late double lg;

  /// value = 16.consist
  static late double xl;

  /// value = 18.consist
  static late double x2l;

  /// value = 20.consist
  static late double x3l;

  /// value = 22.consist
  static late double x4l;

  /// value = 24.consist
  static late double x5l;

  /// value = 26.consist
  static late double x6l;

  /// value = 28.consist
  static late double x7l;

  /// value = 30.consist
  static late double x8l;

  /// value = 32.consist
  static late double x9l;

  /// value = 36.consist
  static late double x10l;

  /// value = 40.consist
  static late double x11l;

  /// value = 44.consist
  static late double x12l;

  /// value = 48.consist
  static late double x13l;

  /// value = 56.consist
  static late double x14l;

  /// value = 64.consist
  static late double x15l;

  static void set(double width) {
    final factor = width <= 392
        ? (width / 375).toDouble()
        : (width > 392 && width <= 480)
        ? (width / 412).toDouble()
        : (width > 440 && width <= 640)
        ? (width / 540).toDouble()
        : (width > 640 && width <= 768)
        ? (width / 690).toDouble()
        : (width > 768 && width <= 1024)
        ? (width / 860).toDouble()
        : (width > 1024 && width <= 1280)
        ? (width / 1120).toDouble()
        : (width > 1280 && width <= 1536)
        ? (width / 1400).toDouble()
        : (width / 1640).toDouble();

    x5s = 8 * factor;
    x4s = 9 * factor;
    x3s = 10 * factor;
    x2s = 11 * factor;
    xs = 12 * factor;
    sm = 13 * factor;
    md = 14 * factor;
    lg = 15 * factor;
    xl = 16 * factor;
    x2l = 18 * factor;
    x3l = 20 * factor;
    x4l = 22 * factor;
    x5l = 24 * factor;
    x6l = 26 * factor;
    x7l = 28 * factor;
    x8l = 30 * factor;
    x9l = 32 * factor;
    x10l = 36 * factor;
    x11l = 40 * factor;
    x12l = 44 * factor;
    x13l = 48 * factor;
    x14l = 56 * factor;
    x15l = 64 * factor;
  }
}
