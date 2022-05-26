import 'package:flutter/material.dart';

PreferredSizeWidget getAppBar(BuildContext context, Widget title,
    {Widget? trailing}) {
  return AppBar(
    title: title,
    actions: trailing != null ? [trailing] : null,
  );
}
