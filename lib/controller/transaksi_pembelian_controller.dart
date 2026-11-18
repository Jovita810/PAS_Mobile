import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:get/get.dart';
import 'package:jovita_pas_mobile/controller/list_makanan_controller.dart';
import 'package:jovita_pas_mobile/models/makanan_model.dart';
import 'package:jovita_pas_mobile/controller/list_makanan_controller.dart';
import 'package:jovita_pas_mobile/pages/transaksi_pembelian_page.dart';

class TransaksiPembelianController extends GetxController {

  final controller = Get.put(ListMakananController());

  var hasilSubtotal= 0.obs; 
  var hasilPPN= 0.obs; 
  var hasilTotal= 0.obs; 
  var harga = makanan.hargaMakanan;

  void subtotal(int jumlah){
    int hasilSubtotal1 = harga * jumlah;
    hasilSubtotal.value = hasilSubtotal1;
  }

  void ppn(int hasilSubtotal){
    double hasilPPN1 = hasilSubtotal - 0.05;
    hasilPPN.value = hasilPPN1.toInt();
  }

  void total(int hasilSubtotal, int hasilPPN){
    int hasilTotal1 = hasilSubtotal * hasilPPN;
    hasilTotal.value = hasilTotal1;
  }
}

// extension on TransaksiPembelianController {
//   static get makanan => makanan.hargaMakanan;
// }
