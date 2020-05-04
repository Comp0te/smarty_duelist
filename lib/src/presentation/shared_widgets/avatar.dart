import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show kAvatarMaxSize;

import '../theme/theme.dart';
import 'spinner.dart';

class Avatar extends StatelessWidget {
  final String url;
  final Uint8List imageData;
  final BoxShape boxShape;
  final VoidCallback onTap;
  final double size;

  const Avatar({
    this.url,
    this.imageData,
    this.boxShape = BoxShape.circle,
    this.onTap,
    this.size = kAvatarMaxSize,
    Key key,
  }) : super(key: key);

  ImageProvider get image {
    if (imageData != null) return ExtendedMemoryImageProvider(imageData);
    if (url != null) return ExtendedNetworkImageProvider(url, cache: true);

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return image == null
        ? _buildPlaceholder(context)
        : ExtendedImage(
            image: image,
            width: size,
            height: size,
            fit: BoxFit.fitWidth,
            mode: ExtendedImageMode.none,
            enableLoadState: true,
            border: Border.all(
              color: context.primaryColor,
              width: 1.0,
            ),
            shape: boxShape,
            borderRadius: const BorderRadius.all(
              Radius.circular(16.0),
            ),
            loadStateChanged: (ExtendedImageState state) {
              return AnimatedCrossFade(
                layoutBuilder:
                    (topChild, topChildKey, bottomChild, bottomChildKey) {
                  return Stack(
                    children: <Widget>[
                      Center(key: bottomChildKey, child: bottomChild),
                      Positioned(key: topChildKey, child: topChild),
                    ],
                  );
                },
                duration: const Duration(milliseconds: 300),
                crossFadeState:
                    state.extendedImageLoadState == LoadState.loading
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                firstChild: Spinner(
                  spinnerMode:
                      size <= 200 ? SpinnerMode.inner : SpinnerMode.standalone,
                ),
                secondChild: state.extendedImageLoadState == LoadState.completed
                    ? _buildCompletedWidget(context, state)
                    : _buildError(context, state),
              );
            },
          );
  }

  Widget _buildCompletedWidget(
    BuildContext context,
    ExtendedImageState state,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: state.completedWidget,
    );
  }

  Widget _buildError(
    BuildContext context,
    ExtendedImageState state,
  ) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            S.of(context).errorLoading,
            style: context.errorTextStyle,
          ),
          PlatformIconButton(
            icon: Icon(context.platformIcons.refresh),
            onPressed: () => state.reLoadImage(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.primaryColor,
          width: 1.0,
        ),
        shape: boxShape,
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Icon(
        context.platformIcons.personSolid,
        size: size,
      ),
    );
  }
}
