import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:jovita_pas_mobile/components/custom_button.dart';
import 'package:jovita_pas_mobile/components/custom_textfield.dart';
import 'package:jovita_pas_mobile/models/makanan_model.dart';
import 'package:jovita_pas_mobile/controller/transaksi_pembelian_controller.dart';

class TransaksiPembelianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextEditingController jumlahMakanan = TextEditingController();

    final makanan = Get.arguments as MakananModel;
    final controller = Get.put(TransaksiPembelianController());
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaksi Pembelian Makanan"),
      ),
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
          children: [

            Text(
              makanan.namaMakanan,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            Image.network(
              makanan.gambarMakanan,
              width: 300,
              height: 200,
            ),

            Text(makanan.deskripsiMakanan),

            SizedBox(height: 10),
            Obx(
              () => Text(
                controller.hasilSubtotal.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),

            
            SizedBox(height: 10),
            Obx(
              () => Text(
                controller.hasilPPN.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),

            SizedBox(height: 10),
            Obx(
              () => Text(
                controller.hasilTotal.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 10),

           CustomTextfield(txtController: jumlahMakanan, myHint: "Input jumlah makanan"),

              // Text(
              //   //makanan.namaMakanan,
              //   "Subtotal: " + subtotal
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //   ),
              // );

              // Text(
              //   //makanan.namaMakanan,
              //   "PPN: " + ppn
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //   ),
              // );

              // Text(
              //   //makanan.namaMakanan,
              //   "Total bayar: " + total
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //   ),
              // );

              Text(
                "Subtotal",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "PPN",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Total bayar",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

            CustomButton(
              myButtonText: "Bayar",
              onTap: () {
                // final jumlah = controller.jumlah.text;
                // final subtotal = makanan.hargaMakanan*jumlah;
                // final ppn = subtotal*0.05;
                // final total = subtotal+ppn;

                // int jumlah = controller.jumlah.text;
                // String subtotal = makanan.hargaMakanan*jumlah;
                // String ppn = subtotal*0.05f;
                // String total = subtotal+ppn;

                //const
                
                //makanan.hargaMakanan,
              },
            ),
        ],
      )
    ),
    ),
    );
  }
}