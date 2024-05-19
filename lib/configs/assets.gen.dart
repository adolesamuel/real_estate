/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $FontsGen {
  const $FontsGen();

  $FontsEuclidGen get euclid => const $FontsEuclidGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/house-0.jpg
  AssetGenImage get house0 => const AssetGenImage('assets/images/house-0.jpg');

  /// File path: assets/images/house-1.jpg
  AssetGenImage get house1 => const AssetGenImage('assets/images/house-1.jpg');

  /// File path: assets/images/house-2.jpg
  AssetGenImage get house2 => const AssetGenImage('assets/images/house-2.jpg');

  /// File path: assets/images/house-3.jpg
  AssetGenImage get house3 => const AssetGenImage('assets/images/house-3.jpg');

  /// File path: assets/images/house-4.jpg
  AssetGenImage get house4 => const AssetGenImage('assets/images/house-4.jpg');

  /// File path: assets/images/house-5.jpg
  AssetGenImage get house5 => const AssetGenImage('assets/images/house-5.jpg');

  /// File path: assets/images/house-6.jpg
  AssetGenImage get house6 => const AssetGenImage('assets/images/house-6.jpg');

  /// File path: assets/images/house-7.jpg
  AssetGenImage get house7 => const AssetGenImage('assets/images/house-7.jpg');

  /// File path: assets/images/house-8.jpg
  AssetGenImage get house8 => const AssetGenImage('assets/images/house-8.jpg');

  /// File path: assets/images/profile-image.png
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profile-image.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        house0,
        house1,
        house2,
        house3,
        house4,
        house5,
        house6,
        house7,
        house8,
        profileImage
      ];
}

class $FontsEuclidGen {
  const $FontsEuclidGen();

  /// File path: fonts/euclid/Euclid-Circular-A-Bold-Italic.ttf
  String get euclidCircularABoldItalic =>
      'fonts/euclid/Euclid-Circular-A-Bold-Italic.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-Bold.ttf
  String get euclidCircularABold => 'fonts/euclid/Euclid-Circular-A-Bold.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-Italic.ttf
  String get euclidCircularAItalic =>
      'fonts/euclid/Euclid-Circular-A-Italic.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-Light-Italic.ttf
  String get euclidCircularALightItalic =>
      'fonts/euclid/Euclid-Circular-A-Light-Italic.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-Light.ttf
  String get euclidCircularALight => 'fonts/euclid/Euclid-Circular-A-Light.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-Medium-Italic.ttf
  String get euclidCircularAMediumItalic =>
      'fonts/euclid/Euclid-Circular-A-Medium-Italic.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-Medium.ttf
  String get euclidCircularAMedium =>
      'fonts/euclid/Euclid-Circular-A-Medium.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-Regular.ttf
  String get euclidCircularARegular =>
      'fonts/euclid/Euclid-Circular-A-Regular.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-SemiBold-Italic.ttf
  String get euclidCircularASemiBoldItalic =>
      'fonts/euclid/Euclid-Circular-A-SemiBold-Italic.ttf';

  /// File path: fonts/euclid/Euclid-Circular-A-SemiBold.ttf
  String get euclidCircularASemiBold =>
      'fonts/euclid/Euclid-Circular-A-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [
        euclidCircularABoldItalic,
        euclidCircularABold,
        euclidCircularAItalic,
        euclidCircularALightItalic,
        euclidCircularALight,
        euclidCircularAMediumItalic,
        euclidCircularAMedium,
        euclidCircularARegular,
        euclidCircularASemiBoldItalic,
        euclidCircularASemiBold
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $FontsGen fonts = $FontsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
