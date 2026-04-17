import 'dart:async';

import 'package:flutter/material.dart';

class SetFoto extends StatelessWidget {
  final String url;
  final double height; // 👈 你输入“长度（高度）”

  const SetFoto({
    super.key,
    required this.url,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FutureBuilder<ImageInfo>(
          future: _getImageInfo(url),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            final image = snapshot.data!;
            final ratio = image.image.width / image.image.height;

            return Container(
              height: height,
              width: height * ratio, 
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Future<ImageInfo> _getImageInfo(String url) async {
    final image = NetworkImage(url);
    final completer = Completer<ImageInfo>();

    image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener((info, _) {
        completer.complete(info);
      }),
    );

    return completer.future;
  }
}