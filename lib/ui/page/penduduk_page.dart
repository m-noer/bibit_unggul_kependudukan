import 'package:flutter/material.dart';
import 'package:kependudukan/theme/palette.dart';

class PendudukPage extends StatelessWidget {
  const PendudukPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Penduduk',
          style: TextStyle(
            color: Palette.primary,
          ),
        ),
      ),
    );
  }
}
