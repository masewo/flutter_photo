import 'package:flutter/material.dart';
import 'package:photo/photo.dart';
import 'package:photo/src/entity/options.dart';
import 'package:photo/src/provider/asset_provider.dart';
import 'package:photo/src/provider/i18n_provider.dart';

class PhotoPickerProvider extends InheritedWidget {
  final Options options;
  final I18nProvider provider;
  final AssetProvider assetProvider;
  final GalleryListProvider galleryListProvider;

  PhotoPickerProvider({
    @required this.options,
    @required this.provider,
    @required this.assetProvider,
    @required this.galleryListProvider,
    @required Widget child,
    Key key,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static PhotoPickerProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(PhotoPickerProvider);

  static AssetProvider assetProviderOf(BuildContext context) =>
      of(context).assetProvider;
}
