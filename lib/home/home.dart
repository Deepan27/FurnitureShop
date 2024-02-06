import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/general/drawer/home_drawer.dart';
import 'package:furniture_shop/home/model/furniture.dart';
import 'package:furniture_shop/home/product_widget.dart';
import 'package:provider/provider.dart';

import '../auth_service.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  void logout(AuthService authService) {
    try {
      authService.signOut();
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () => logout(authService),
            icon: Icon(Icons.logout),
          )
        ],
      ),
      drawer: HomeDrawer(),
      body: StreamBuilder<QuerySnapshot>(
        stream: authService.getAllSingleChairData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final querySnapshot = snapshot.data!;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: querySnapshot.docs.length,
                  itemBuilder: (context, index) {
                    final productData = querySnapshot.docs[index];
                    final furniture = Furniture.fromMap(
                        productData.data() as Map<String, dynamic>);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProductWidget(furniture: furniture),
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
