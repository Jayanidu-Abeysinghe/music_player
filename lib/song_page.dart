import 'package:flutter/material.dart';
import 'package:music_player/new_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

 @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [

              const SizedBox(height: 10),


              //back button and menu button 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(child: Icon(Icons.arrow_back)),
                  ),

                  
          
                  Text('P L A Y L I S T',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(child: Icon(Icons.menu)),
                  ),
          
                ],
              
              ),


              
              const SizedBox(height: 30),
            
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/albumcover.jpg'),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Text('Kota The Friend',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                 ),
                               ),

