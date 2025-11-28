class ShapeSize {
  const ShapeSize._();

  /// value = 2.consist
  static late double x12s;

  /// value = 3.consist
  static late double x11s;

  /// value = 4.consist
  static late double x10s;

  /// value = 5.consist
  static late double x9s;

  /// value = 6.consist
  static late double x8s;

  /// value = 7.consist
  static late double x7s;

  /// value = 8.consist
  static late double x6s;

  /// value = 10.consist
  static late double x5s;

  /// value = 12.consist
  static late double x4s;

  /// value = 14.consist
  static late double x3s;

  /// value = 16.consist
  static late double x2s;

  /// value = 18.consist
  static late double xs;

  /// value = 20.consist
  static late double sm;

  /// value = 24.consist
  static late double md;

  /// value = 28.consist
  static late double lg;

  /// value = 32.consist
  static late double xl;

  /// value = 36.consist
  static late double x2l;

  /// value = 40.consist
  static late double x3l;

  /// value = 44.consist
  static late double x4l;

  /// value = 48.consist
  static late double x5l;

  /// value = 52.consist
  static late double x6l;

  /// value = 56.consist
  static late double x7l;

  /// value = 64.consist
  static late double x8l;

  /// value = 72.consist
  static late double x9l;

  /// value = 80.consist
  static late double x10l;

  /// value = 88.consist
  static late double x11l;

  /// value = 96.consist
  static late double x12l;

  /// value = 112.consist
  static late double x13l;

  /// value = 128.consist
  static late double x14l;

  /// value = 144.consist
  static late double x15l;

  /// value = 160.consist
  static late double x16l;

  /// value = 176.consist
  static late double x17l;

  /// value = 192.consist
  static late double x18l;

  /// value = 224.consist
  static late double x19l;

  /// value = 256.consist
  static late double x20l;

  /// value = 288.consist
  static late double x21l;

  /// value = 320.consist
  static late double x22l;

  /// value = 384.consist
  static late double x23l;

  /// value = 448.consist
  static late double x24l;

  /// value = 512.consist
  static late double x25l;

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

    x12s = 2 * factor;
    x11s = 3 * factor;
    x10s = 4 * factor;
    x9s = 5 * factor;
    x8s = 6 * factor;
    x7s = 7 * factor;
    x6s = 8 * factor;
    x5s = 10 * factor;
    x4s = 12 * factor;
    x3s = 14 * factor;
    x2s = 16 * factor;
    xs = 18 * factor;
    sm = 20 * factor;
    md = 24 * factor;
    lg = 28 * factor;
    xl = 32 * factor;
    x2l = 36 * factor;
    x3l = 40 * factor;
    x4l = 44 * factor;
    x5l = 48 * factor;
    x6l = 52 * factor;
    x7l = 56 * factor;
    x8l = 64 * factor;
    x9l = 72 * factor;
    x10l = 80 * factor;
    x11l = 88 * factor;
    x12l = 96 * factor;
    x13l = 112 * factor;
    x14l = 128 * factor;
    x15l = 144 * factor;
    x16l = 160 * factor;
    x17l = 176 * factor;
    x18l = 192 * factor;
    x19l = 224 * factor;
    x20l = 256 * factor;
    x21l = 288 * factor;
    x22l = 320 * factor;
    x23l = 384 * factor;
    x24l = 448 * factor;
    x25l = 512 * factor;
  }
}
