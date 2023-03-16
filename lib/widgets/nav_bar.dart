import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/fixtures.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onIconChanged;

  const CustomBottomNavigationBar({
    required this.onIconChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  IconData selectedIcon = Icons.home;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        height: 64,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...bottomIcons.first.map(_bottomIcon),

            //
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: grey,
                    width: 3,
                  ),
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                height: 60,
                width: 60,
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            //
            ...bottomIcons.last.map(_bottomIcon),
          ],
        ),
      ),
    );
  }

  Widget _bottomIcon(IconData icon) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIcon = icon;
          });
          final _ = bottomIcons.fold(0, (prev, List<IconData> element) {
            final outerIndex = bottomIcons.indexOf(element);
            if (element.contains(icon)) {
              final innerIndex = element.indexOf(icon);

              if (outerIndex == 0) return innerIndex;

              return 2 + innerIndex;
            }

            return prev;
          });

          widget.onIconChanged(_);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: icon == selectedIcon ? primaryColor : Colors.grey.shade300,
            ),

            //
            const SizedBox(
              height: 12,
            ),

            //
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                color: selectedIcon == icon ? primaryColor : Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
