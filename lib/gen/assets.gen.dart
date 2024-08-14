/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/active_shoe.svg
  String get activeShoe => 'assets/icons/active_shoe.svg';

  /// File path: assets/icons/inactive_shoe.svg
  String get inactiveShoe => 'assets/icons/inactive_shoe.svg';

  /// List of all assets
  List<String> get values => [activeShoe, inactiveShoe];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/alloma.png
  AssetGenImage get alloma => const AssetGenImage('assets/images/alloma.png');

  /// File path: assets/images/bilimdon.png
  AssetGenImage get bilimdon =>
      const AssetGenImage('assets/images/bilimdon.png');

  /// File path: assets/images/donishmand.png
  AssetGenImage get donishmand =>
      const AssetGenImage('assets/images/donishmand.png');

  /// File path: assets/images/guru.png
  AssetGenImage get guru => const AssetGenImage('assets/images/guru.png');

  /// File path: assets/images/izlanuvchi.png
  AssetGenImage get izlanuvchi =>
      const AssetGenImage('assets/images/izlanuvchi.png');

  /// File path: assets/images/mutaffakkir.png
  AssetGenImage get mutaffakkir =>
      const AssetGenImage('assets/images/mutaffakkir.png');

  /// File path: assets/images/olim.png
  AssetGenImage get olim => const AssetGenImage('assets/images/olim.png');

  /// File path: assets/images/qahramon.png
  AssetGenImage get qahramon =>
      const AssetGenImage('assets/images/qahramon.png');

  /// File path: assets/images/samarador.png
  AssetGenImage get samarador =>
      const AssetGenImage('assets/images/samarador.png');

  /// File path: assets/images/talaba.png
  AssetGenImage get talaba => const AssetGenImage('assets/images/talaba.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        alloma,
        bilimdon,
        donishmand,
        guru,
        izlanuvchi,
        mutaffakkir,
        olim,
        qahramon,
        samarador,
        talaba
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
