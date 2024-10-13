import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:s2s_radionica/custom_widgets/custom_card.dart';
import 'package:s2s_radionica/utils/global_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> destinations = [
    {
      'title': 'Belgrade',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',	
    },
    {
      'title': 'Novi Sad',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Niš',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Tara',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Smederevo',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Vranje',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Zlatibor',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Novi Pazar',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Krusevac',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: Column(
            children: [
              AutoSizeText(
                'Explore the world',
                minFontSize: 10,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: GlobalColors.black,
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  final destination = destinations[index];
                  return CustomCard(title: destination['title'], imageUrl: destination['image_url']);
                },

              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}