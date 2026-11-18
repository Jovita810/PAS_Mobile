import 'package:get/get.dart';
import 'package:jovita_pas_mobile/pages/transaksi_pembelian_page.dart';
import 'package:jovita_pas_mobile/pages/list_makanan_page.dart';
import 'package:jovita_pas_mobile/pages/main_menu_page.dart';
import 'package:jovita_pas_mobile/pages/login_page.dart';

class Routes {
  static const String list_makanan = "/list_makanan";
  static const String transaksi_pembelian = "/transaksi_pembelian";
  static const String main_menu = "/main_menu";
  static const String login = "/login";

  static final myPages = [
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: transaksi_pembelian, page: () => TransaksiPembelianPage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
    GetPage(name: login, page: () => LoginPage()),
  ];
}