import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class AppParticles {
  const AppParticles._();

  static ui.Image? circle;
  static Map<String, ui.Image> images = {};

  static Future<void> initCreateCircle() async {
    if (circle != null) return;

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    final paint = Paint()..color = Colors.white;

    canvas.drawCircle(const Offset(25, 25), 25, paint);

    final picture = recorder.endRecording();

    circle = await picture.toImage(100, 100);
  }

  static Future<void> initCreateImages(List<ui.Image> sources, String particleImagesId) async {
    if (images[particleImagesId] != null) return;

    const int size = 128;
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);

    for (int i = 0; i < sources.length; i++) {
      final double left = i * size.toDouble();
      canvas.drawImageRect(
        sources[i],
        Rect.fromLTWH(0, 0, sources[i].width.toDouble(), sources[i].height.toDouble()),
        Rect.fromLTWH(left, 0, size.toDouble(), size.toDouble()),
        Paint(),
      );
    }

    final picture = recorder.endRecording();
    images[particleImagesId] = await picture.toImage(sources.length * size, size);
  }
}
