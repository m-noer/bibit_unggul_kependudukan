import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:kependudukan/theme/palette.dart';
import 'package:kependudukan/ui/widget/menu_card.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Menu Utama',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: 14),
          MenuCard(
            onTap: () {},
            iconData: FluentIcons.briefcase_medical_24_filled,
            iconColor: Palette.kesehatanColor,
            label: 'Kesehatan',
          ),
          MenuCard(
            onTap: () {},
            iconData: FluentIcons.accessibility_24_filled,
            iconColor: Palette.kesejahteraanColor,
            label: 'Kesejahteraan',
          ),
        ],
      ),
    );
  }
}
