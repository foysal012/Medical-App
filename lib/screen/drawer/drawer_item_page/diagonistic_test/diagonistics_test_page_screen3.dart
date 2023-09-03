import 'package:doctor_hunt/screen/drawer/drawer_item_page/diagonistic_test/diagonistics_test_page_screen4.dart';
import 'package:flutter/material.dart';

class DiagonisticTestPageScreen3 extends StatefulWidget {
  const DiagonisticTestPageScreen3({Key? key}) : super(key: key);

  @override
  State<DiagonisticTestPageScreen3> createState() => _DiagonisticTestPageScreen3State();
}

class _DiagonisticTestPageScreen3State extends State<DiagonisticTestPageScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
    ),
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Colors.blueAccent.withOpacity(0.4),
    Colors.white.withOpacity(0.3),
    Colors.grey.withOpacity(0.3),
    Colors.greenAccent.withOpacity(0.7)
    ]
    )
    ),
          child: Column(
            children: [

              Row(
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(child: Icon(Icons.arrow_back_ios, color: Colors.black,size: 18,)),
                    ),
                  ),

                  SizedBox(width: 40,),

                  Text("Patient Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 200,
              ),

              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.withOpacity(0.3)
                ),
                child: Icon(Icons.medical_services_outlined, color: Colors.white, size: 80,),
              ),

              SizedBox(
                height: 20,
              ),

              Text("Your cart is empty",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20
                ),
              ),

              SizedBox(
                height: 10,
              ),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiagonisticsTestPageScreen4()));
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text("Add Tests",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),

              Spacer(),

              Container(
                height: 4,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              SizedBox(height: 10,),
            ],
          ),
        )
    );
  }
}
