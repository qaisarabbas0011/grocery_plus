import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/constants/colors.dart';
import 'package:grocery_plus/screens/login_screen.dart';
import 'package:grocery_plus/widgets/custom_text_field.dart';
import 'package:grocery_plus/widgets/primary_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/splash_image.png",
                  height: 120,
                  width: 240,
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Create Your Account",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: "Username",
                  prefixIcon: Icon(
                    Icons.person,
                    color: AppColors.primaryColor,
                  ),
                  controller: nameController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hintText: "Email",
                  prefixIcon: Icon(
                    Icons.email,
                    color: AppColors.primaryColor,
                  ),
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hintText: "Phone Number",
                  prefixIcon: Icon(
                    Icons.phone,
                    color: AppColors.primaryColor,
                  ),
                  controller: phoneController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: AppColors.primaryColor,
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                  controller: passwordController,
                ),
                const SizedBox(height: 50),
                PrimaryButton(
                  title: "Sign Up",
                  icon: Icons.create,
                  ontap: () {},
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.fontGrayColor,
                      ),
                    ),
                    const SizedBox(width: 6),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (c) => LoginScreen()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
