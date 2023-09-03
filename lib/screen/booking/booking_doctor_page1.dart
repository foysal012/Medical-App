import 'package:doctor_hunt/model/category/dentist_doctor_model_class.dart';
import 'package:doctor_hunt/screen/booking/booking_doctor_page2.dart';
import 'package:doctor_hunt/screen/search_page_screen.dart';
import 'package:flutter/material.dart';

class BookingDoctorPage1 extends StatefulWidget {
   BookingDoctorPage1({Key? key, this.dentistDoctorModelClass}) : super(key: key);

  DentistDoctorModelClass? dentistDoctorModelClass;

  @override
  State<BookingDoctorPage1> createState() => _BookingDoctorPage1State();
}

class _BookingDoctorPage1State extends State<BookingDoctorPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                    ),

                    SizedBox(width: 60,),

                    Text("Doctor Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),


                IconButton(
                    onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SearchPageScreen()));
                    },
                    icon: Icon(Icons.search),),
              ],
            ),

            SizedBox(height: 20,),

            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: NetworkImage("${widget.dentistDoctorModelClass!.imgurl}"), fit: BoxFit.cover),
                        ),
                      ),

                      Column(
                        children: [

                          Row(
                            children: [
                              Text("${widget.dentistDoctorModelClass!.name}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),

                              Icon(widget.dentistDoctorModelClass!.icon == true ? Icons.favorite_outlined : Icons.favorite_outline,
                              color: widget.dentistDoctorModelClass!.icon == true ? Colors.red : Colors.black,
                              )
                            ],
                          ),

                          Text("${widget.dentistDoctorModelClass!.position}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),

                          Row(
                            children: [
                              Text("****",
                              style: TextStyle(
                                color: Colors.orangeAccent,
                              ),
                              ),

                              Text("\$28.00/hr",
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),

                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 10,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BookingDoctorPage2(
                        dentistDoctorModelClass: widget.dentistDoctorModelClass,
                      )));
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text("Book Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("100",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        ),

                        Text("Running",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("500",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        Text("Ongoing",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("700",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        Text("Patient",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text("Services",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text("1.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.green
                ),
                ),

                Text("Patient care should be the number one priority.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black38
                  ),
                ),

              ],
            ),

            SizedBox(height: 5,),

            Container(height: 2,width: double.infinity,
            color: Colors.black12,
            ),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text("2.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.green
                  ),
                ),

                Text("If you run your practice you know how frustrating.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black38
                  ),
                ),

              ],
            ),

            SizedBox(height: 5,),

            Container(height: 2,width: double.infinity,
              color: Colors.black12,
            ),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text("3.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.green
                  ),
                ),

                Text("That's why some of appointment reminder system.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black38
                  ),
                ),

              ],
            ),

            SizedBox(height: 20,),

            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: NetworkImage("https://staticmapmaker.com/img/google-placeholder.png"), fit: BoxFit.cover),
              ),
            )



          ],
        ),
      ),

    );
  }
}
