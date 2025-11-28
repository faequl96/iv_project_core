class SpaceSize {
  const SpaceSize._();

  /// value = 2.consist
  static late double x8s;

  /// value = 3.consist
  static late double x7s;

  /// value = 4.consist
  static late double x6s;

  /// value = 5.consist
  static late double x5s;

  /// value = 6.consist
  static late double x4s;

  /// value = 7.consist
  static late double x3s;

  /// value = 8.consist
  static late double x2s;

  /// value = 10.consist
  static late double xs;

  /// value = 12.consist
  static late double sm;

  /// value = 14.consist
  static late double md;

  /// value = 16.consist
  static late double lg;

  /// value = 18.consist
  static late double xl;

  /// value = 20.consist
  static late double x2l;

  /// value = 24.consist
  static late double x3l;

  /// value = 28.consist
  static late double x4l;

  /// value = 32.consist
  static late double x5l;

  /// value = 36.consist
  static late double x6l;

  /// value = 40.consist
  static late double x7l;

  /// value = 44.consist
  static late double x8l;

  /// value = 48.consist
  static late double x9l;

  /// value = 52.consist
  static late double x10l;

  /// value = 56.consist
  static late double x11l;

  /// value = 64.consist
  static late double x12l;

  /// value = 72.consist
  static late double x13l;

  /// value = 80.consist
  static late double x14l;

  /// value = 88.consist
  static late double x15l;

  /// value = 96.consist
  static late double x16l;

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

    x8s = 2 * factor;
    x7s = 3 * factor;
    x6s = 4 * factor;
    x5s = 5 * factor;
    x4s = 6 * factor;
    x3s = 7 * factor;
    x2s = 8 * factor;
    xs = 10 * factor;
    sm = 12 * factor;
    md = 14 * factor;
    lg = 16 * factor;
    xl = 18 * factor;
    x2l = 20 * factor;
    x3l = 24 * factor;
    x4l = 28 * factor;
    x5l = 32 * factor;
    x6l = 36 * factor;
    x7l = 40 * factor;
    x8l = 44 * factor;
    x9l = 48 * factor;
    x10l = 52 * factor;
    x11l = 56 * factor;
    x12l = 64 * factor;
    x13l = 72 * factor;
    x14l = 80 * factor;
    x15l = 88 * factor;
    x16l = 96 * factor;
  }
}
