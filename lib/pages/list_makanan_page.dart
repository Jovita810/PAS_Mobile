import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jovita_pas_mobile/controller/list_makanan_controller.dart';
import 'package:jovita_pas_mobile/pages/transaksi_pembelian_page.dart';
import 'package:jovita_pas_mobile/routes.dart';

class ListMakananPage extends StatelessWidget {
  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index){
            final makanan = controller.listMakanan[index];
            return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
              child:  Card(
                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.transaksi_pembelian,
                      arguments: makanan,
                    );
                  },
                  child: ListTile(
                    title: Text(
                      makanan.namaMakanan,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(makanan.hargaMakanan),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            );
        },
        ),
      ),
    ),
    );
  }
}