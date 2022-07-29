import 'package:flutter/material.dart';
import 'package:wallet_ui/reuseble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      themeMode: ThemeMode.dark,
      // theme: ThemeData.dark(),
      theme: ThemeData(
        useMaterial3: true,
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.dark(),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
          )
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: txt("Ruppes Account",FontWeight.bold,25,Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.drag_indicator_sharp),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              txt("₹25895.58", FontWeight.bold, 70,Colors.white),
              sizebox(8),
              Row(
                children: [
                  txt("Ledger balance: ₹4242.35 0", FontWeight.normal, 18,Colors.white),
                  Icon(Icons.info)
                ],
              ),
              sizebox(6),
              txt("4242598735820", FontWeight.normal, 18,Colors.white),
              sizebox(30),
              Container(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    box(Color(0xffCAFCC4),"Add Cash",size.width/2.4,Colors.black),
                    box(Color(0xff1A1A1A),"Exchange",size.width/2.4,Colors.white),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>sendMony()));
                },
                child: box(Color(0xff443AD8),"Send Money",size.width,Colors.white),
              ),
              sizebox(20),

             txt("Analytics", FontWeight.normal, 20, Colors.white),
              sizebox(20),
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Color(0xff1A1A1A),
               ),
               padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   rdata(Icons.arrow_downward, "Income", "54425757", 15, 20, Colors.grey, Colors.white),
                   rdata(Icons.arrow_upward, "Spending", "54424657", 15, 20, Colors.grey, Colors.white),
                 ],
               ),
             ),
              sizebox(20),
             txt("Today", FontWeight.normal, 20, Colors.white),
              sizebox(20),
              today(),
              sizebox(20),
              today(),

            ],
          ),
        ),
      ),
    );
  }
}

class sendMony extends StatelessWidget {
  const sendMony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: txt("Send Money",FontWeight.bold,25,Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff1A1A1A),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    txt("To:",FontWeight.normal,15,Colors.blue),
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            sizebox(40),
            Padding(padding: EdgeInsets.only(left: 18),
                child: txt("Resent", FontWeight.normal, 20, Colors.white),

            ),
            send(),
            send(),
            send(),
            send(),
            send(),
            send(),
            send(),
            send(),
            send(),
          ],
        ),
      ),
    );
  }
}

