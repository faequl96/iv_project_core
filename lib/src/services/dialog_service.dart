import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iv_project_core/iv_project_core.dart';
import 'package:quick_dev_sdk/quick_dev_sdk.dart';

class DialogService {
  DialogService._();

  static Future<T> showSuccess<T>(Widget content) async {
    final completer = Completer<T>();

    ShowModal.bottomSheet<T>(
      GlobalContextService.value,
      dismissible: false,
      enableDrag: false,
      header: BottomSheetHeader(
        action: HeaderAction(actionIcon: Icons.close, onTap: () => NavigationService.pop()),
      ),
      decoration: BottomSheetDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      wallpapers: ShowModal.builtInWallpapers(),
      contentBuilder: (_) => content,
    ).then((value) {
      completer.complete(value);
    });

    return await completer.future;
  }

  static Future<T> showError<T>(Widget content) async {
    final completer = Completer<T>();

    ShowModal.bottomSheet<T>(
      GlobalContextService.value,
      dismissible: false,
      enableDrag: false,
      header: BottomSheetHeader(
        action: HeaderAction(actionIcon: Icons.close, onTap: () => NavigationService.pop()),
      ),
      decoration: BottomSheetDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      wallpapers: ShowModal.builtInWallpapers(isError: true),
      contentBuilder: (_) => content,
    ).then((value) {
      completer.complete(value);
    });

    return await completer.future;
  }

  static void showGeneralResponseStateSuccess(String message) {
    showSuccess(
      GeneralResponseStateDialogContent.success(
        verticalAxisContents: [
          Text(message, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Countdown(durationInSeconds: 5, message: AppLocalization.translate('transaction.autoCloseIn')),
        ],
      ),
    );
  }

  static void showGeneralResponseStateError(String message) {
    showError(
      GeneralResponseStateDialogContent.error(
        verticalAxisContents: [
          Text(message, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Countdown(durationInSeconds: 5, message: AppLocalization.translate('transaction.autoCloseIn')),
        ],
      ),
    );
  }

  static void showGeneralValidateStateError(String message) {
    showError(
      GeneralResponseStateDialogContent.error(
        iconColor: Colors.orange,
        verticalAxisContents: [
          Text(message, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Countdown(durationInSeconds: 3, message: AppLocalization.translate('transaction.autoCloseIn')),
        ],
      ),
    );
  }

  static Future<bool?> showDeleteConfirmation(String itemName) async {
    final completer = Completer<bool?>();

    ShowModal.bottomSheet<bool?>(
      GlobalContextService.value,
      decoration: BottomSheetDecoration(
        color: ColorConverter.lighten(AppColor.primaryColor, 94),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      header: const BottomSheetHeader(useHandleBar: true),
      contentBuilder: (_) => GeneralConfirmationDialogContent.delete(
        message: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: AppLocalization.translate('ivCoreDialog.deleteConfirmation')),
              const TextSpan(text: ' '),
              TextSpan(
                text: itemName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
    ).then((value) {
      completer.complete(value);
    });

    return await completer.future;
  }
}
