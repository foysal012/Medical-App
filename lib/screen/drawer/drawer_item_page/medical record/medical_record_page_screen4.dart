import 'package:flutter/material.dart';

class MedicalRecordPageScreen4 extends StatefulWidget {
  const MedicalRecordPageScreen4({Key? key}) : super(key: key);

  @override
  State<MedicalRecordPageScreen4> createState() => _MedicalRecordPageScreen4State();
}

class _MedicalRecordPageScreen4State extends State<MedicalRecordPageScreen4> {
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
          child:Column(
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

                  Text("All Records",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30,),

              Stack(
                children: [
                  Container(
                    height: 110,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [

                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("27\nFEB",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 3,),

                            Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("New",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 10,),

                        Column(
                          children: [

                            Text("Records added by you",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18
                            ),
                            ),

                            SizedBox(height: 3,),

                            Text("Record for Foysal Joarder",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green,
                                  fontSize: 16
                              ),
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            Text("1 Prescription",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 16
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: 1,
                      right: 1,
                      child: Icon(Icons.more_vert, color: Colors.black,),)
                ],
              ),

              SizedBox(height: 20,),

              Stack(
                children: [
                  Container(
                    height: 110,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [

                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("28\nFEB",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 3,),

                            Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("New",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 10,),

                        Column(
                          children: [

                            Text("Records added by you",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18
                              ),
                            ),

                            SizedBox(height: 3,),

                            Text("Record for Foysal Joarder",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green,
                                  fontSize: 16
                              ),
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            Text("1 Prescription",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 16
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: 1,
                    right: 1,
                    child: Icon(Icons.more_vert, color: Colors.black,),)
                ],
              ),

              SizedBox(height: 20,),

              Stack(
                children: [
                  Container(
                    height: 110,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [

                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("1\nMAR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 3,),

                            Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("New",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 10,),

                        Column(
                          children: [

                            Text("Records added by you",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18
                              ),
                            ),

                            SizedBox(height: 3,),

                            Text("Record for Foysal Joarder",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green,
                                  fontSize: 16
                              ),
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            Text("1 Prescription",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 16
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: 1,
                    right: 1,
                    child: Icon(Icons.more_vert, color: Colors.black,),)
                ],
              )
            ],
          ),
        )
    );
  }
}
