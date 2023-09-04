import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DiagonisticsTestPageScreen4 extends StatefulWidget {
  const DiagonisticsTestPageScreen4({Key? key}) : super(key: key);

  @override
  State<DiagonisticsTestPageScreen4> createState() => _DiagonisticsTestPageScreen4State();
}

class _DiagonisticsTestPageScreen4State extends State<DiagonisticsTestPageScreen4> {

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String? _groupValue;

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
              height: 20,
            ),

            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text("Setup 1/4 ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),

                  SizedBox(width: 20,),

                  Stack(
                    children: [
                      Container(
                        height: 3,
                      width: 200,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      Positioned(
                          left: 0,
                          child: Container(
                            height: 3,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              height: 500,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Patients Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 5,),

                  TextFormField(
                    controller: nameController,

                    decoration: InputDecoration(
                      hintText: "Foysal Joarder",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.grey,
                        ),
                      )
                    ),
                  ),

                  SizedBox(height: 10,),

                  Text("Age",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 5,),

                  TextFormField(
                    controller: ageController,

                    decoration: InputDecoration(
                        hintText: "29-11-2000",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                          ),
                        ),
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
                          ageController.text =
                              formattedDate;
                          //set output date to TextField value.
                        });
                      } else {}
                    },
                  ),

                  SizedBox(height: 10,),

                  Text("Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 5,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Row(
                        children: [
                          Radio(

                              value: "Male",
                              groupValue: _groupValue,
                              onChanged: (val1){
                                setState(() {
                                  _groupValue = val1;
                                });
                              }
                          ),
                          Text("Male"),
                        ],
                      ),

                      Row(
                        children: [
                          Radio(
                              value: "Female",
                              groupValue: _groupValue,
                              onChanged: (val2){
                                setState(() {
                                  _groupValue = val2;
                                });
                              }
                          ),
                          Text("Female"),
                        ],
                      ),

                      Row(
                        children: [
                          Radio(
                              value: "Others",
                              groupValue: _groupValue,
                              onChanged: (val3){
                                setState(() {
                                  _groupValue = val3;
                                });
                              }
                          ),
                          Text("Others"),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 10,),

                  Text("Mobile Number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 5,),

                  TextFormField(
                    controller: phoneController,

                    decoration: InputDecoration(
                        hintText: "+8801756324890",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                          ),
                        )
                    ),
                  ),

                  SizedBox(height: 10,),

                  Text("Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 5,),

                  TextFormField(
                    controller: emailController,

                    decoration: InputDecoration(
                        hintText: "itsmefoysal007@gmail.com",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                          ),
                        )
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 20,),

            InkWell(
              onTap: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiagonisticsTestPageScreen4()));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully submitted")));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("Confirm",
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
        )
    );
  }
}
