import 'package:doctor_hunt/screen/booking/booking_doctor_page2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookingDoctorPage3 extends StatefulWidget {
  const BookingDoctorPage3({Key? key}) : super(key: key);

  @override
  State<BookingDoctorPage3> createState() => _BookingDoctorPage3State();
}

class _BookingDoctorPage3State extends State<BookingDoctorPage3> {



  TextEditingController dateInput = TextEditingController();

  var sselected = 0 ;
  var tselected = 0 ;

   List<String> scheduleList = ["10:00", "12:00", "02:00", "04:00", "06:00",];

   List<String> timeList = ["40", "35", "30", "25", "10",];

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
                  padding: EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.width / 3,
                  child: Center(
                      child: TextField(
                        controller: dateInput,
                        //editing controller of this TextField
                        decoration: InputDecoration(
                            icon: Icon(Icons.calendar_today), //icon of text field
                            labelText: "Enter Date" //label text of field
                        ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate;
                              //set output date to TextField value.
                            });
                          } else {}
                        },
                      ))),

              SizedBox(
                height: 200,
              ),

              //Spacer(),

              Expanded(
                  child: Container(
                    height: 700,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Available Time",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        ),

                        //SizedBox(height: 10,),

                        Expanded(
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index){
                                return InkWell(
                                  onTap: (){
                                    setState(() {
                                      sselected = index;
                                    });
                                  },
                                  child: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: sselected == index ? Colors.green : Colors.green.withOpacity(0.1),
                                          ),

                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("${scheduleList[index]}",
                                              style: TextStyle(
                                                color: sselected == index ? Colors.white : Colors.green,
                                              ),
                                              ),

                                              Text("PM",
                                                style: TextStyle(
                                                    color: sselected == index ? Colors.white : Colors.green,
                                                ),
                                              )
                                            ],
                                          ),

                                  ),
                                );

                              },

                              separatorBuilder: (_, index){
                                return SizedBox(width: 10,);
                              },

                              itemCount: scheduleList.length
                          ),
                        ),

                        SizedBox(height: 10,),

                        Text("Remind Me Before",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10,),

                        Expanded(
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index){
                                return InkWell(
                                  onTap: (){
                                    setState(() {
                                      tselected = index;
                                    });
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: tselected == index ? Colors.green : Colors.green.withOpacity(0.1),
                                    ),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("${timeList[index]}",
                                          style: TextStyle(
                                              color: tselected == index ? Colors.white : Colors.green,
                                          ),
                                        ),

                                        Text("Minit",
                                          style: TextStyle(
                                              color: tselected == index ? Colors.white : Colors.green,
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                );

                              },

                              separatorBuilder: (_, index){
                                return SizedBox(width: 10,);
                              },

                              itemCount: timeList.length
                          ),
                        ),

                        SizedBox(height: 10,),

                        InkWell(
                          onTap: (){
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                content: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                      Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green.withOpacity(0.1),
                                        ),
                                        child: Center(
                                          child: Text("👍",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 30,
                                          ),
                                          ),
                                        )
                                      ),

                                      SizedBox(height: 5,),

                                      Text("Thank You",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      ),

                                      SizedBox(height: 2,),

                                      Text("Your Appointment Successful",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black38,
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      Text("Your booked an appoinment with Dr.\nPediatrician Purpieson on ${dateInput.text},\nat 02:00 PM",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black26,
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      InkWell(
                                        onTap: (){
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Center(
                                            child: Text("Done",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 3,),

                                      InkWell(
                                        onTap: (){
                                          Navigator.of(context).pop();
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookingDoctorPage2() ));
                                        },
                                        child: Text("Edit your appointment",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              );
                            });
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text("Confirm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
              ),


            ],
          ),
        ),
    );
  }
}
