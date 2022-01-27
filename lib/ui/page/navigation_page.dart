import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:kependudukan/ui/page/beranda_page.dart';
import 'package:kependudukan/ui/page/penduduk_page.dart';
import 'package:kependudukan/ui/page/profil_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  // Buat variable _seletectedIndex dengan tipe integer dengan value 0

  int _selectedIndex = 0;

  // Buat list widget _pages untuk halam beranda, penduduk, dan profil

  static const List<Widget> _pages = <Widget>[
    BerandaPage(),
    PendudukPage(),
    ProfilPage(),
  ];

  // Buat fungsi untuk merubah nilai _selectedIndex dengan nilai index yang
  // sesuai dengan bottom navigation yang diklik

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_20_regular),
            activeIcon: Icon(FluentIcons.home_20_filled),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.list_20_regular),
            activeIcon: Icon(FluentIcons.list_20_filled),
            label: 'Penduduk',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.data_usage_20_regular),
            activeIcon: Icon(FluentIcons.data_usage_20_filled),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        
      ),
    );
  }
}
