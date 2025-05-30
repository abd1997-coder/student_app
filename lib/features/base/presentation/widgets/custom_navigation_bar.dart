import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

/// A Widget that displays a Bottom Navigation Bar with smooth animation.
/// It is a wrapper around [BottomNavigationBar]
/// [CustomTabBar] is a widget that displays a horizontal row of tabs, one tab at a time.
/// The tabs are individually titled and, when tapped, switch to that tab.
class CustomTabBar extends StatelessWidget {
  CustomTabBar({
    super.key,
    this.selectedIndex = 0,
    this.height = 72,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.animationDuration = const Duration(milliseconds: 170),
    this.animationCurve = Curves.linear,
    this.shadows = const <BoxShadow>[
      BoxShadow(color: Colors.black12, blurRadius: 3),
    ],
    required this.items,
    required this.onItemSelected,
  }) {
    assert(height >= 55 && height <= 100);
    assert(items.length >= 2 && items.length <= 5);
    assert(iconSize >= 15 && iconSize <= 50);
  }

  final Curve animationCurve;
  final Duration animationDuration;
  final Color? backgroundColor;
  final double height;
  final double iconSize;
  final List<CustomTabBarItem> items;
  final ValueChanged<int> onItemSelected;
  final int selectedIndex;
  final List<BoxShadow> shadows;
  final bool showElevation;

  @override
  Widget build(BuildContext context) {
    final Color? bg =
        (backgroundColor == null)
            ? Theme.of(context).bottomAppBarTheme.color ?? Colors.white
            : backgroundColor;

    return Container(
      decoration: BoxDecoration(
        color: bg,
        boxShadow: showElevation ? shadows : <BoxShadow>[],
        borderRadius: const BorderRadiusDirectional.only(
          topEnd: Radius.circular(12),
          topStart: Radius.circular(12),
        ),
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: height,
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                items.map((CustomTabBarItem item) {
                  int index = items.indexOf(item);
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => onItemSelected(index),
                      child: _CustomTabBarItem(
                        key: ValueKey<String>('customTabBarItem-$index'),
                        item: item,
                        tabBarHeight: height,
                        iconSize: iconSize,
                        isSelected: index == selectedIndex,
                        backgroundColor: bg!,
                        animationDuration: animationDuration,
                        animationCurve: animationCurve,
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}

/// A single tab in the [CustomTabBar]. A tab has a title and an icon. The title is displayed when the item is not selected. The icon is displayed when the item is selected. Tabs are always used in conjunction with a [CustomTabBar].
class CustomTabBarItem {
  CustomTabBarItem({
    required this.activeWidget,
    required this.inactiveWidget,
    required this.title,
  });

  /// Global key for the widget that represents this item.
  Widget activeWidget;
  Widget inactiveWidget;
  final String title;
}

class _CustomTabBarItem extends StatelessWidget {
  const _CustomTabBarItem({
    super.key, // Add this line for the key parameter
    required this.item,
    required this.isSelected,
    required this.tabBarHeight,
    required this.backgroundColor,
    required this.animationDuration,
    required this.animationCurve,
    required this.iconSize,
  }); // Pass the key to the superclass

  final Curve animationCurve;
  final Duration animationDuration;
  final Color backgroundColor;
  final double iconSize;
  final bool isSelected;
  final CustomTabBarItem item;
  final double tabBarHeight;

  @override
  Widget build(BuildContext context) {
    /// The icon is displayed when the item is not selected.
    /// The title is displayed when the item is selected.
    /// The icon and title are animated together.
    /// The icon and title are animated in opposite directions.
    return Column(
      spacing: 5,
      children: <Widget>[
        isSelected ? item.activeWidget : item.inactiveWidget,
        Text(
          item.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.labelLarge?.copyWith(
            color:
                isSelected
                    ? context.colorScheme.primary
                    : context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
