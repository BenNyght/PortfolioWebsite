// lib/utils/image_popup_util.dart

import 'package:flutter/material.dart';

/// Shows a full-screen, pinch-to-zoom image popup with a close button.
///
/// Usage:
/// ```dart
/// await showImagePopup(
///   context: context,
///   assetPath: AppAssets.myImage,
/// );
/// ```
Future<void> showImagePopup({
  required BuildContext context,
  required String assetPath,
}) {
  return showDialog<void>(
    context: context,
    barrierColor: Colors.black87,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(16),
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            // Allows pinch-zoom and pan on the image.
            InteractiveViewer(
              panEnabled: true,
              minScale: 0.5,
              maxScale: 3.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Close button in the top-right corner.
            IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
