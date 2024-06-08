import 'package:easypaisa_fake_ss/recepitfile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   final TextEditingController c1=TextEditingController();

   final TextEditingController c2=TextEditingController();

   final TextEditingController c3=TextEditingController();
   int x=0;

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
     home: Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text("Easy_Paisa Fake SS",style:TextStyle(color:Colors.blue,fontSize: 30)),
          const SizedBox(
            height: 60,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: TextFormField(
            controller: c1,
              decoration: InputDecoration(
                  hintText: "Enter Name of Receiver",
                  hoverColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid
                      ))),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: TextFormField(
              controller: c2,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Enter Phoneno",
                  hoverColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid
                      ))),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: TextFormField(

              controller: c3,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Enter Amount",
                  hoverColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid
                      ))),),
          ),
          const SizedBox(
            height: 30,
          ),
          Builder(
            builder: (context) {
              return FloatingActionButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>recepitfile(name: c1.text, phoneno: c2.text, amount: c3.text)));
              },
                backgroundColor: Colors.blue,
                child: const Text("Next"),

              );
            }
          ),

        ],
      ),
      ),

    );
  }
}


