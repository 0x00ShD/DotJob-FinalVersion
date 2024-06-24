import 'package:flutter/material.dart';

class AdaptiveLayoutCompany extends StatelessWidget {
  const AdaptiveLayoutCompany(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1200) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
