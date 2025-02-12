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


                               const SizedBox(height: 6,
                               ),


                               const Text(
                                'Birdie',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  ),
                                 ),
                              ],
                            ),
                        
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                              ),



                        
                        
                          ],
                        ),
                      )
                  ],
                ),
              ),


              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [

                Text('0.00'),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text('4.22'),
              ],
            ),


            const SizedBox(height: 30),

            //linear bar

            NewBox(
              child: LinearProgressIndicator(
                minHeight: 10,
                value: 0.40,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.transparent,
              ),
            ),


             const SizedBox(height: 30),



            //previous song, pause play, skip next song 

            SizedBox(
              height: 60,
              child: Row(
                children: const [
                  Expanded(
                    child: NewBox(
                      child: Icon(
                        Icons.skip_previous,
                        size: 32,
                        )),
                  ),
              
              
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: NewBox(
                        child: Icon(
                          Icons.play_arrow,
                          size: 32,
                          )),
                    ),
                  ),


                  Expanded(
                    child: NewBox(
                      child: Icon(
                        Icons.skip_next,
                        size: 32,
                        )),
                  ),
              
               ],
              ),
            )


            ],
          ),
        ),
      ),



    );
  }
}