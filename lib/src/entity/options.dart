import 'package:flutter/material.dart';
import 'package:photo/src/delegate/badge_delegate.dart';
import 'package:photo/src/delegate/checkbox_builder_delegate.dart';
import 'package:photo/src/delegate/loading_delegate.dart';
import 'package:photo/src/delegate/sort_delegate.dart';
import 'package:photo_manager/photo_manager.dart';

class Options {
  final int rowCount;

  final int minSelected;

  final int maxSelected;

  final double padding;

  final double itemRadio;

  final Color themeColor;

  final Color dividerColor;

  final Color textColor;

  final Color disableColor;

  final int thumbSize;

  final SortDelegate sortDelegate;

  final CheckBoxBuilderDelegate checkBoxBuilderDelegate;

  final LoadingDelegate loadingDelegate;

  final BadgeDelegate badgeDelegate;

  final PickType pickType;

  final bool showAppBar;

  final bool showBottomBar;

  final EdgeInsets gridViewPadding;

  final Function(AssetEntity) onItemSelected;

  const Options({
    this.rowCount,
    this.minSelected,
    this.maxSelected,
    this.padding,
    this.itemRadio,
    this.themeColor,
    this.dividerColor,
    this.textColor,
    this.disableColor,
    this.thumbSize,
    this.sortDelegate,
    this.checkBoxBuilderDelegate,
    this.loadingDelegate,
    this.badgeDelegate,
    this.pickType,
    this.showAppBar,
    this.showBottomBar,
    this.gridViewPadding,
    this.onItemSelected
  });
}

enum PickType {
  all,
  onlyImage,
  onlyVideo,
}
