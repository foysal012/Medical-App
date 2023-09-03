import 'package:doctor_hunt/screen/drawer/drawer_item_page/medical%20record/medical_record_page_screen3.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/medical%20record/medical_record_page_screen4.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MedicalReportPageScreen2 extends StatefulWidget {
  const MedicalReportPageScreen2({Key? key}) : super(key: key);

  @override
  State<MedicalReportPageScreen2> createState() => _MedicalReportPageScreen2State();
}

class _MedicalReportPageScreen2State extends State<MedicalReportPageScreen2> {

  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

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

                  Text("Add Records",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),

              Row(
                children: [

                  Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/profile_images/1605607703178403840/hvbe8OEE_400x400.jpg"), fit: BoxFit.cover),
                    ),
                  ),

                  SizedBox(width: 15,),

                  Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      //image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/profile_images/1605607703178403840/hvbe8OEE_400x400.jpg"), fit: BoxFit.cover),
                      color: Colors.green.withOpacity(0.2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.green,),

                        Text("Add more\n  images",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        //Text("images"),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 85,),

              Expanded(
                child: Container(
                  //height: 500,
                  height: double.infinity,
                width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Record for",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      ),

                      SizedBox(height: 10,),

                      TextFormField(
                        controller: nameController,

                        decoration: InputDecoration(
                         border: InputBorder.none,
                         suffixIcon: Icon(Icons.edit, color: Colors.black,),
                          hintText: "Foysal Joarder",
                          hintStyle: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ),

                      SizedBox(height: 8,),

                      Container(
                        height: 2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12
                        ),
                      ),

                      SizedBox(height: 20,),

                      Text("Record created on",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 5,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Column(
                            children: [
                              Icon(Icons.repeat_one_on_rounded, color: Colors.black54,),
                              Text("Report",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800,
                              ),
                              )
                            ],
                          ),

                          Column(
                            children: [
                              Icon(Icons.preview_outlined, color: Colors.green,),
                              Text("Prescription",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          ),

                          Column(
                            children: [
                              Icon(Icons.event_note, color: Colors.black54,),
                              Text("Invoice",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                      SizedBox(height: 8,),

                      Container(
                        height: 2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12
                        ),
                      ),

                      SizedBox(height: 20,),

                      Text("Date",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 10,),

                      TextFormField(
                        controller: dateController,

                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.edit, color: Colors.black,),
                            hintText: "No date Selected yet",
                            hintStyle: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            )
                        ),

                        onTap: () async{
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
                            dateController.text =
                          formattedDate;
                          //set output date to TextField value.
                          });
                          } else {}


                        },
                      ),

                      SizedBox(height: 8,),

                      Container(
                        height: 2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12
                        ),
                      ),

                      SizedBox(height: 30,),

                      InkWell(
                        onTap: (){
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiagonisticsTestPageScreen4()));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully submitted")));
                          showModalBottomSheet(
                            isDismissible: true,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => MedicalRecordPageScreen3()
                          ).then((value) => MedicalRecordPageScreen4());
                        },
                        child: Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text("Upload",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15,),

                      InkWell(
                        onTap: (){
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiagonisticsTestPageScreen4()));
                          //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully submitted")));
                          // showModalBottomSheet(
                          //     isDismissible: true,
                          //     isScrollControlled: true,
                          //     backgroundColor: Colors.transparent,
                          //     context: context,
                          //     builder: (context) => MedicalRecordPageScreen3()
                          // ).then((value) => MedicalRecordPageScreen4());
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MedicalRecordPageScreen4()));
                        },
                        child: Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text("Next",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
