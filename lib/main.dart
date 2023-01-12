import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   TextEditingController hcntr=TextEditingController();
   TextEditingController wcntr=TextEditingController();
   double result=0;
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(title: Text("BMI Calculator"),
         ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
             padding:  EdgeInsets.all(8.0),
             child: TextField(
               controller: hcntr,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: 'Height',
                 fillColor: Colors.pinkAccent,
                 filled: true,
               ),
             ),
           ),
            Padding(
             padding: EdgeInsets.all(8.0),
             child: TextField(
               controller: wcntr,
               decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: 'Weight',
                   fillColor: Colors.pinkAccent,
                 filled: true,
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(
                 style: ElevatedButton.styleFrom(primary: Colors.yellow),
                 onPressed: (){
                   Calculatebmi();
                 },
                 child: Text('Calculate')),

           ),
           Text('${result.toStringAsFixed(2)}',
             style: TextStyle(
               color: Colors.black,
               fontSize: 30,
               fontWeight: FontWeight.bold
             ),

           )
         ],
       ),
       ),
     );
   }

   void Calculatebmi(){

     double height=double.parse(hcntr.text)/100;
     double weight=double.parse(wcntr.text);
     double  hsqre=height*height;
     double _result=weight/hsqre;
     result=_result;

   setState(() {
     
   });
 }
 }

