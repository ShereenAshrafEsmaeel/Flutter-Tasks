import 'package:flutter/material.dart';

main()=> runApp( const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),);
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: const Text(""),
    iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white70,
      leadingWidth: 90,
      leading: 
        ElevatedButton.icon(onPressed: (){},
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all( const Color.fromARGB(255, 255, 81, 0)),
          ),
         icon: const Icon(Icons.compare_arrows_outlined,),
          label: const Text("Task")) ,
          actions: [
        IconButton(onPressed: (){},
       icon:  const Icon(Icons.list_rounded
       ,color: Color.fromARGB(255, 0, 0, 0),
       size: 30,
       ))],),
      body:
      Container(
        color: const Color.fromARGB(255, 240, 233, 233),
        padding: const EdgeInsets.all(10),
        child:
       Column(
        children: [
        const SizedBox(height: 20,width: 20,),
        Card (child: Column(children:[
               Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                 children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.alarm)
                  ),
                const Text("meet.Jone",style: TextStyle(fontSize: 20,color: Colors.black))
                ],
        ),
            )] ),
            ),
            Card( child:
            Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row( 
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_today_outlined,color: Colors.red,)
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                  
                      Text("send a email to Mr David",style: TextStyle(fontSize: 20,color: Colors.black)),
                      Text("work")
                  ],
                )],
            ),
             )),
             Card(child:
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.play_arrow,color: Colors.orange,)),
                Column(
                  children: const [
                       Text("buy a ticket",style: TextStyle(fontSize: 20,color: Colors.black)),
                       Text("trip")],
                ),],),
              )),          
            Card(child:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.alarm,color: Colors.grey,)
                  ),
                Column(
                  children : const [
                    Text("Rome",style: TextStyle(fontSize: 20,color: Colors.black)),
                    Text("movies to watch")
                  ],),],
              ),
            )),
            Container(
              alignment: Alignment.bottomRight,
              child: TextButton.icon(
                
            style:    ButtonStyle(backgroundColor:MaterialStateProperty.all(const Color.fromARGB(255, 255, 81, 0))
         ,    shape:MaterialStateProperty .all(const CircleBorder())
             ),
             onPressed: (){},label: const Text(""),      
            icon: const Icon(Icons.add,color: Colors.white,size: 15,),),)
            ],),),
            );

  }
}