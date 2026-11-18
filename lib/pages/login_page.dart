   import 'package:flutter/material.dart';
   import 'package:flutter_svg/flutter_svg.dart';
   import 'package:get/get.dart';
   import '../components/custom_textfield.dart';
   import '../components/custom_button.dart';
   import 'package:jovita_pas_mobile/controller/login_controller.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 16),
            
              Text(
                "Sign in",
                style: TextStyle(fontSize: 33,
                fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              CustomTextfield(
                txtController: controller.txtUsername,
                myHint: "Masukkan username",
              ),
              
              SizedBox(height: 19),

              CustomTextfield(
                txtController: controller.txtPassword,
                myHint: "Masukkan password",
              ),

              SizedBox(height: 12),
              
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Obx(
                      () => controller.isLoading.value ? Center(child: CircularProgressIndicator(),) : CustomButton(
                      myButtonText: "Login",
                      onTap: () {
                        controller.login();
                      },
                      ),
                    ),
                    
                      ],
                    ),
                ),
          ],
        ),
      ),
      ),
    );
  }
}