import 'package:doctor_hunt/model/diagonistics_test_model_class.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/diagonistic_test/diagonistics_test_page_screen3.dart';
import 'package:flutter/material.dart';

class DiagonisticsTestPageScreen2 extends StatefulWidget {
   DiagonisticsTestPageScreen2({Key? key}) : super(key: key);

   var listofDiagonisticstest = DiagonisticsTestModelClass.listofDiagonisticsTest;

  @override
  State<DiagonisticsTestPageScreen2> createState() => _DiagonisticsTestPageScreen2State();
}

class _DiagonisticsTestPageScreen2State extends State<DiagonisticsTestPageScreen2> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
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

                  Text("Diagonstics Tests",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Text("Get Full body health checkups\nfrom the comfort of your home",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 22,
              ),
              ),

              SizedBox(height: 5,),

              Text("Upto 45% off + get 10% healthcash back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Icon(Icons.home,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Text("Free home\nSample pickup",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      ),
                      )
                    ],
                  ),


                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                        ),
                        child: Icon(Icons.support_agent,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Text("practo\nasociate labs",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),


                    ],
                  )
                ],
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orangeAccent,
                        ),
                        child: Icon(Icons.event_repeat_outlined,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Text("E-Reports in\n24-72 hours",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),


                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent,
                        ),
                        child: Icon(Icons.change_circle_outlined,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Text("Free follow-up\nwith a doctor",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),


                    ],
                  )
                ],
              ),

              SizedBox(height: 20,),

              Text("Recommend for you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18
              ),
              ),

              SizedBox(height: 5,),

              Expanded(
                  child:ListView.separated(
                    scrollDirection: Axis.vertical,
                      itemBuilder: (context, index){
                      return Container(
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text("${widget.listofDiagonisticstest[index].heading}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            ),

                            SizedBox(height: 5,),

                            Text("${widget.listofDiagonisticstest[index].subheading}",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 18,
                              ),
                            ),

                            SizedBox(height: 15,),

                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                ),
                                color: Colors.white
                              ),
                              child: Center(
                                child: Text("${widget.listofDiagonisticstest[index].patientcount}",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: NetworkImage("${widget.listofDiagonisticstest[index].imgurl}"),fit: BoxFit.cover),
                              //color: Colors.black
                              ),
                            ),

                            SizedBox(height: 20,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("${widget.listofDiagonisticstest[index].price1}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black
                                            ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text("${widget.listofDiagonisticstest[index].price2}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 15,
                                                  color: Colors.black54
                                              ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text("${widget.listofDiagonisticstest[index].price3}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Colors.green
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),

                                    SizedBox(height: 5,),

                                    Text("${widget.listofDiagonisticstest[index].description}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black54
                                      ),
                                    ),

                                  ],
                                ),

                                InkWell(
                                  onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DiagonisticTestPageScreen3()));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    child: Center(
                                      child: Text("Book Now",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                      },
                      separatorBuilder: (_, index){
                      return SizedBox(height: 10,);
                      },
                      itemCount: widget.listofDiagonisticstest.length,
                  )
              ),
            ],
          ),
        )
    );
  }
}
