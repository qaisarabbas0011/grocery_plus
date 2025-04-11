import 'package:flutter/material.dart';
import 'package:grocery_plus/widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        title: const Text("Profile Screen"),
        backgroundColor: Colors.green,
      ),
      
      
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "images/photo.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Grocery User",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "groceryuser@gmail.com",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 20,
            ),
            ProfileWidget(
                leadingIcon: Icons.logout, title: "Logout", ontap: () {}), 
            const SizedBox(
              height: 20,
            ),
            ProfileWidget(
                leadingIcon: Icons.settings, title: "Settings", ontap: () {}),
            const SizedBox(
              height: 20,
            ),
            ProfileWidget(
                leadingIcon: Icons.history, title: "Order History", ontap: () {}),
            const SizedBox(
              height: 20,
            ),
            
          ],

        ),
      ),
    );
  }
}