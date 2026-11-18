import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jovita_pas_mobile/controller/list_makanan_controller.dart';
import 'package:jovita_pas_mobile/controller/team_controller.dart';
import 'package:jovita_pas_mobile/menu/menu_drawer.dart';

class HomePage extends StatelessWidget {
  //final controller = Get.put(ListMakananController());
  final controller = Get.put(TeamController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: 180,
        child: Obx(
            () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.listTeam.length,
            itemBuilder: (context, index){
              final team = controller.listTeam[index];
                return SizedBox( 
                  width: 140,
                  child: Card( 
                    child: Padding( 
                      padding: EdgeInsets.all(8),
                      child: Column( 
                        children: [
                          Image.network( 
                            team.strBadge,
                            height: 100,
                            width: 120,
                            //fit: BoxFit.cover,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 8), 
                          Text(
                            team.strTeam,
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            team.strStadium,
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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