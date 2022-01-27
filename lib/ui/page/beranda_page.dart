import 'package:flutter/material.dart';

import 'package:kependudukan/ui/widget/beranda_profil.dart';
import 'package:kependudukan/ui/widget/menu.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            BerandaProfil(
              onTapSetting: () {},
              nama: 'Muhammad Noer',
              jabatan: 'Ketua RW',
              alamat:
                  'Jl. Madubronto RW 05, Kel. Patangpuluhan, Kec. Wirobrajan, Kota Yogyakarta - DI Yogyakarta',
            ),
            const Menu(),
          ],
        ),
      ),
    );
  }
}
