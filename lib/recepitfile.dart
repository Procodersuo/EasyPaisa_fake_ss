import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class recepitfile extends StatelessWidget {
  final String name,phoneno,amount;
  const recepitfile({Key? key, required this.name, required this.phoneno, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
Container(
  height: 170,
    width: 170,
    child: Lottie.asset('animations/done.json')),
          const Center(child: Text("Rs.",style: TextStyle(color: Colors.black,fontSize: 20),)),
          Center(
            child:RichText(text: TextSpan(
              text: amount,
              style: const TextStyle(color: Colors.black,fontSize: 30),
              children: const [
                TextSpan(
                  text: ".00",
                  style: TextStyle(color: Colors.black,fontSize: 20)
                )
              ]
            )
            )
          ),
          const Text("Sucessfully sent to",style: TextStyle(color: Colors.black,fontSize: 20),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image:  const DecorationImage(image: AssetImage('images/logo.png')),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                  width: 2
                )
              ),),),
          Center(child: Text(name,style: const TextStyle(fontSize: 18,color: Colors.black),)),
           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/logo.png')),
                      shape: BoxShape.circle,

                  ),),
                const SizedBox(
                  width: 4,
                ),
                const Center(child: Text("EasyPaisa",style: TextStyle(color: Colors.black,fontSize: 15),)),
              ],
                       ),
           ),

          Center(child: Text(phoneno,style:const  TextStyle(color: Colors.black,fontSize: 15),)),
          const Expanded(child: Image(image: AssetImage('images/sample.jpg'),))
        ],
      ),
    );
  }
}
