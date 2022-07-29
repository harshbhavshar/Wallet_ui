import 'package:flutter/material.dart';

txt(String data, FontWeight fwidth, double fsize,Color color) {
  return Text(
    data,
    style: TextStyle(
      color: color,
      fontWeight: fwidth,
      fontSize: fsize,
    ),
  );
}
box(Color color,String data,double cwidth,Color colors){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        width: cwidth,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Center(
          child: txt(data, FontWeight.normal, 25,colors),
        )
    ),
  );
}
cdata(String data, String data1, double fsize, double fsize1, Color color, Color color1){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      txt(data, FontWeight.bold, fsize, color),
      txt(data1, FontWeight.bold, fsize1, color1),
    ],
  );
}
rdata(IconData icon,String data, String data1, double fsize, double fsize1, Color color, Color color1 ){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CircleAvatar(
          radius: 25,
          child: Icon(icon,size: 20,),
        ),
      ),
      cdata(data,data1,fsize,fsize1,color,color1)
    ],
  );
}
sizebox(double sheight){
  return SizedBox(
    height: sheight,
  );
}
today(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xff1A1A1A),
    ),
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        rdata(Icons.arrow_downward, "Dummy data", "Exchange", 19, 15, Colors.white, Colors.grey),
        cdata("-9823.98", "54426574657", 15, 15, Colors.white, Colors.red),
      ],
    ),
  );
}
send(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 9),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff1A1A1A),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          rdata(Icons.person, "Johan tichkule", "Individual", 19, 15, Colors.white, Colors.grey),
          cdata("INR", "UPI,Bank,Paytm", 15, 15, Colors.white, Colors.red),
        ],
      ),
    ),
  );
}