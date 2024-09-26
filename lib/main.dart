import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ed Carlo Nile Parcellano', 
                style: GoogleFonts.oswald(fontWeight: FontWeight.bold, fontSize: 40),),  
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
          
              Row(
                children: [
                  CircleAvatar(
                      radius: 50,
                      backgroundImage: const AssetImage('assets/profilepic.jpg'),
                      backgroundColor: Colors.black, 
                      foregroundColor: Colors.black.withOpacity(0.5)
                      ),
                  Text(
                    'Ed Carlo Nile Parcellano',  
                    style: GoogleFonts.robotoCondensed(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              const SizedBox(height: 32),

             
              buildInfoSection(Icons.email, 'Email', 'edcarlonile.parcellano@wvsu.edu.ph'),
              buildInfoSection(Icons.phone, 'Phone', '+63 9262913035'),
              buildInfoSection(Icons.location_city, 'Location', 'Guimbal, Iloilo'),
              buildInfoSection(Icons.school, 'University', 'West Visayas State University'),
              buildInfoSection(Icons.book , 'Course', 'Bachelor of Science in Information Technology'),
              buildInfoSection(Icons.cake, 'Birthday', 'November 14,2024'),

              const SizedBox(height: 32),

              Container(
  color: Colors.blue[200],
  padding: const EdgeInsets.all(16.0),
  child: Column(
    children: [
      Text(
        'My Biography',
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
       'I am a 3rd Year college student in West Visayas State University taking Bachelor of Science in Information Technology.' 
       ' Im currently 24 years old, love pets, love playing games, and I have a growing interest in cybersecurity',
        style: GoogleFonts.robotoCondensed(fontSize: 20),
      ),
      const SizedBox(height: 32),
    ],
  ),
),
const SizedBox(height: 32),



              
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoSection(IconData icon, String label, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 28),
          const SizedBox(width: 16),
          Text(
            label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            info,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}