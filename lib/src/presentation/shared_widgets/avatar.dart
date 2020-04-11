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
  final BoxShape boxShape;
  final VoidCallback onTap;
  final double size;

  const Avatar({
    this.url,
    this.boxShape = BoxShape.circle,
    this.onTap,
    this.size = kAvatarMaxSize,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: url == null
          ? _buildPlaceholder(context)
          : ExtendedImage.network(
              url,
              width: size,
              height: size,
              fit: BoxFit.fitWidth,
              mode: ExtendedImageMode.none,
              enableLoadState: true,
              cache: true,
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
                  duration: const Duration(milliseconds: 300),
                  crossFadeState:
                      state.extendedImageLoadState == LoadState.loading
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                  firstChild: const Spinner(),
                  secondChild:
                      state.extendedImageLoadState == LoadState.completed
                          ? state.completedWidget
                          : _buildError(context, state),
                );
              },
            ),
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
