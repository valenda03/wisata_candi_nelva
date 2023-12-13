import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import '../models/candi.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO : 1. Buat appBar dengan judul wisata candi
      appBar: AppBar(title: Text('Wisata Candi'),),
      // TODO : 2. Body dengan gridview.builder
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          padding: EdgeInsets.all(8.0),
          itemCount: candiList.length,
          // TODO : 3. Buat Itemcard sebagai return dari gridview.builder
          itemBuilder: (context, index){
            Candi candi = candiList[index];
            return ItemCard(candi: candi);
          }),

    );
  }
}
