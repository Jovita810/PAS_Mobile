import 'package:get/state_manager.dart';
import 'package:jovita_pas_mobile/models/makanan_model.dart';

class ListMakananController extends GetxController{
  RxList<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Nasi Goreng Spesial", hargaMakanan: "25.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EoVEfuiC0popmi5kR5T9Daci2eHROQcRvFjdUMkl-eHRnB7y0Nf9U8Q&s=10", deskripsiMakanan: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk. Gambar: Gunakan aset lokal atau URL gambar makanan yang valid."),
    MakananModel(namaMakanan: "Ayam Bakar Madu", hargaMakanan: "30.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaPYdEBGVdR3oHeWkdPmIyaounfmS5-3B2APIoDAtBmlQ9cr2ea8uNAW0&s=10", deskripsiMakanan: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan. Gambar: Gunakan aset lokal atau URL gambar makanan yang valid."),
    MakananModel(namaMakanan: "Sate Ayam Madura", hargaMakanan: "28.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScwJMJwwqE5o7EIJopR8Pch2KNRHL27cDtQH7M0RN8OziHiltVbjDk5bU&s=10", deskripsiMakanan: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental. Gambar: Gunakan aset lokal atau URL gambar makanan yang valid."),
    MakananModel(namaMakanan: "Mie Ayam Bakso", hargaMakanan: "20.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10", deskripsiMakanan: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi. Gambar: Gunakan aset lokal atau URL gambar makanan yang valid."),
    MakananModel(namaMakanan: "Es Teh Manis Jumbo", hargaMakanan: "8.000", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO3oZkUo_AGoR8h-tU3TNpqAL_HD_Gr0302ocAybFcPA&s=10", deskripsiMakanan: "Minuman teh melati segar dengan gula asli dan es batu kristal. Gambar: Gunakan aset lokal atau URL gambar makanan yang valid."),
  ].obs;
}