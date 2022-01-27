import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'package:kependudukan/theme/palette.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.nama,
    required this.jabatan,
    this.onTapSetting,
  }) : super(key: key);

  final String nama;
  final String jabatan;
  final Function()? onTapSetting;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.primary,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Palette.primary[50],
            radius: 24,
            child: Text(
              nama[0],
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Palette.primary),
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  nama,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Palette.onPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  jabatan,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Palette.onPrimary,
                        fontWeight: FontWeight.w400,
                      ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: onTapSetting,
            icon: const Icon(
              FluentIcons.settings_20_filled,
            ),
            color: Palette.onPrimary,
          )
        ],
      ),
    );
  }
}
