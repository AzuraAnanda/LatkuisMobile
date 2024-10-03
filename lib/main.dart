import 'package:flutter/material.dart';
import 'package:latkuis_124220003/Login_page.dart';

class Vehicle {
  String name;
  String type;
  String description;
  String engine;
  String fuelType;
  String price;
  String imageAsset;
  List<String> imageUrls;

  Vehicle({
    required this.name,
    required this.type,
    required this.description,
    required this.engine,
    required this.fuelType,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
  });
}

// Data dari vehicle.dart
var vehicleList = [
  // Data kendaraan yang sama seperti sebelumnya
];

class MainPage extends StatelessWidget {
  final String username;

  MainPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(219, 6, 31, 142),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selamat Datang $username",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: vehicleList.length,
                itemBuilder: (context, index) {
                  var vehicle = vehicleList[index];
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(vehicle.imageUrls[0],
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover),
                          SizedBox(height: 10),
                          Text(vehicle.name,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(vehicle.type,
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 10),
                          Text(vehicle.description),
                          SizedBox(height: 5),
                          Text("Engine: ${vehicle.engine}"),
                          Text("Fuel Type: ${vehicle.fuelType}"),
                          Text("Price: ${vehicle.price}"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
