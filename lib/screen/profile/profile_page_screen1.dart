import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfilePageScreen1 extends StatefulWidget {
  const ProfilePageScreen1({Key? key}) : super(key: key);

  @override
  State<ProfilePageScreen1> createState() => _ProfilePageScreen1State();
}

class _ProfilePageScreen1State extends State<ProfilePageScreen1> {

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController locationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: double.infinity,
        width: double.infinity,
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
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  color: Colors.green,
                ),

                child: Column(
                  children: [

                    Row(
                      children: [

                        InkWell(
                          onTap:(){
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Center(child: Icon(Icons.arrow_back_ios, color: Colors.black,)),
                          ),
                        ),

                        SizedBox(width: 80,),

                        Text("Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),

                      ],
                    ),

                    SizedBox(height: 30,),

                    Text("Set up your profile",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white70,
                    ),
                    ),

                    SizedBox(height: 5,),

                    Text("Update your profile to connect your doctor with\nbetter impression",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white54,
                      ),
                    ),

                    Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //color: Colors.grey,
                            image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/profile_images/1605607703178403840/hvbe8OEE_400x400.jpg")),
                          ),
                        ),

                        Positioned(
                            right: 0,
                            bottom: 5,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black45,
                              ),
                              child: Icon(Icons.camera_alt, color: Colors.white,size: 16,),
                            ))
                      ],
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),

              Text("Personal information",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                controller: nameController,

                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  labelText: "Name",
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),

                  hintText: "Foysal Joarder",

                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                controller: phoneController,

                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  labelText: "Contact Number",
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),

                  hintText: "+8801746456789",

                  suffixIcon: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.edit, color: Colors.black,)
                  ),

                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                controller: dateController,

                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  labelText: "Date of birth",
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),

                  hintText: "DD MM YYYY",

                  suffixIcon: IconButton(
                      onPressed: () async{
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
                          DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          setState(() {
                            dateController.text =
                                formattedDate;
                            //set output date to TextField value.
                          });
                        } else {}
                      },
                      icon: Icon(Icons.edit, color: Colors.black,)
                  ),

                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                controller: locationController,

                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  labelText: "Location",
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),

                  hintText: "Add Details",

                ),
              ),

              SizedBox(height: 50,),

              InkWell(
                onTap: (){
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Saved your data successfully")));
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text("Continue",
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
