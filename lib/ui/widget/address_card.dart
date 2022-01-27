import 'package:flutter/material.dart';

import 'package:kependudukan/theme/palette.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    Key? key,
    required this.alamat,
  }) : super(key: key);

  final String alamat;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.primary[500],
      padding: const EdgeInsets.all(20),
      child: Text(
        alamat,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Palette.onPrimary,
            ),
      ),
    );
  }
}
