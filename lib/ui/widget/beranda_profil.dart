import 'package:flutter/material.dart';
import 'package:kependudukan/ui/widget/address_card.dart';
import 'package:kependudukan/ui/widget/profile_card.dart';

class BerandaProfil extends StatelessWidget {
  const BerandaProfil({
    Key? key,
    this.onTapSetting,
    required this.nama,
    required this.jabatan,
    required this.alamat,
  }) : super(key: key);

  final Function()? onTapSetting;
  final String nama;
  final String jabatan;
  final String alamat;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProfileCard(
          onTapSetting: onTapSetting,
          nama: nama,
          jabatan: jabatan,
        ),
        AddressCard(
          alamat: alamat,
        ),
      ],
    );
  }
}
