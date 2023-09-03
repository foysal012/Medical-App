import 'package:doctor_hunt/model/booking_doctor2_model_class.dart';
import 'package:doctor_hunt/model/category/dentist_doctor_model_class.dart';
import 'package:doctor_hunt/screen/booking/booking_doctor_page3.dart';
import 'package:flutter/material.dart';

class BookingDoctorPage2 extends StatefulWidget {
   BookingDoctorPage2({Key? key, this.dentistDoctorModelClass}) : super(key: key);

  DentistDoctorModelClass? dentistDoctorModelClass;


  @override
  State<BookingDoctorPage2> createState() => _BookingDoctorPage2State();
}

class _BookingDoctorPage2State extends State<BookingDoctorPage2> {

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  var listofBookingDoctor = BookingDoctor2ModelClass.listofBookingDoctor;

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

                  Text("Appointment",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Container(
                height: 150,
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
                  ],
                ),
              ),

              SizedBox(height: 20,),
              
              Text("Appointment for",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),

              SizedBox(height: 5,),

              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,

                decoration: InputDecoration(
                  hintText: "Patient Name",
                  labelText: "Patient Name",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3
                      )
                  ),

                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,

                decoration: InputDecoration(
                  hintText: "Contact Number",
                  labelText: "Contact Number",

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3
                      )
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3
                      )
                  ),

                ),
              ),

              SizedBox(height: 20,),

              Text("Who is this patient?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),

              SizedBox(height: 10,),

              Container(
                height: 150,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green.withOpacity(0.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: Colors.green,),
                          Text("Add",
                          style: TextStyle(
                            color: Colors.green
                          ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),

                    Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            reverse: false,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index){
                              return Column(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 100,
                                    margin: EdgeInsets.only(
                                      right: 10
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                     image: DecorationImage(image: NetworkImage("${listofBookingDoctor[index].imgurl}"),fit: BoxFit.cover)
                                    ),
                                  ),
                                  Text("${listofBookingDoctor[index].Patientname}",
                                  style: TextStyle(
                                    color: Colors.black38
                                  ),
                                  )
                                ],
                              );
                            }
                            ),
                    ),


                  ],
                ),
              ),

              SizedBox(height: 20,),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BookingDoctorPage3()));

                },
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text("Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
              )

            ],
          ),
        )
    );
  }
}
