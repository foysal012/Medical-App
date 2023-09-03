
import 'package:doctor_hunt/model/feature_doctor_model_class.dart';
import 'package:doctor_hunt/model/live_doctor_model_class.dart';
import 'package:doctor_hunt/model/popluar_doctor_model_class.dart';
import 'package:doctor_hunt/screen/category%20doctor/dental_division_doctor.dart';
import 'package:doctor_hunt/screen/category%20doctor/eye_division_doctor.dart';
import 'package:doctor_hunt/screen/category%20doctor/heart_division_doctor.dart';
import 'package:doctor_hunt/screen/category%20doctor/woman_division_doctor.dart';
import 'package:doctor_hunt/screen/drawer/drawer_page_screen.dart';
import 'package:doctor_hunt/screen/live%20doctor/live_doctor_details_screen.dart';
import 'package:doctor_hunt/screen/profile/profile_page_screen1.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  
  TextEditingController searchController = TextEditingController();
  
  var listofLiveDoctor = LiveDoctorModelClass.liveDoctorList;

  var listofPopluarDoctor = PopluarDoctorModelClass.listofPopularDoctor;

  var listofFeatureDoctor = FeatureDoctorModelClass.listofFeatureDoctor;

  GlobalKey<ScaffoldState> scafoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scafoldKey,
      drawer: MyDrawer(),

      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      // ),

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
              height: 160,
              child: Stack(
                  children:[
                    Container(
                      height: 140,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 40,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        color: Colors.green,

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          IconButton(
                              onPressed: (){
                            scafoldKey.currentState!.openDrawer();
                          },
                              icon: Icon(Icons.menu, color: Colors.white,)
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hi Handwerkeri",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white70,
                                ),
                              ),
                              Text("Find your Doctor",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePageScreen1()));
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/profile_images/1605607703178403840/hvbe8OEE_400x400.jpg")),
                                //image: DecorationImage(image: AssetImage("images/w10.jpg"),fit: BoxFit.cover)
                              ),
                              //child: Image.asset("images/w10.jpg", fit: BoxFit.cover,),
                            ),
                          ),

                        ],
                      ),
                    ),

                    Positioned(
                        bottom: -0.5,
                        left: 2,
                        right: 2,
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: searchController,

                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Icon(Icons.cancel_outlined),
                                hintText: "Search......",
                                border: InputBorder.none,
                            ),
                          ),
                        )
                    )
                  ]

              ),
            ),

            SizedBox(height: 10,),

            Container(
              height: 120,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Live Doctors",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  ),

                  SizedBox(height: 8,),

                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      reverse: false,
                      itemCount: listofLiveDoctor.length,
                      itemBuilder: (context, index){
                        var data1 = listofLiveDoctor[index];
                        return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LiveDoctorDetailsScreen(
                              liveDoctorModelClass: data1,
                            )));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 90,
                                width: 140,
                                padding: EdgeInsets.only(
                                  right: 20,
                                ),
                                child: Image.network("${listofLiveDoctor[index].imgurl}", height: 100,width: 150,fit: BoxFit.cover,),
                              ),
                              Positioned(
                                  left: 5,
                                  right: 5,
                                  bottom: 25,
                                  top: 5,
                                  child: Icon(listofLiveDoctor[index].iconurl as IconData?, size: 16, color: Colors.black,)
                              ),

                              Positioned(

                                  right: 30,
                                  top: 2,
                                  child: Text("${listofLiveDoctor[index].live}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.red,
                                    fontSize: 12
                                  ),
                                  )
                              )
                            ],
                          ),
                        );
                      },
                    )
                  )
                ],
              ),
            ),

            SizedBox(height: 10,),

            Container(
              height: 90,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DentalDivisionDoctor()));
                    },
                    child: Container(
                      height: 90,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network("https://static.vecteezy.com/system/resources/previews/014/455/867/original/illustration-of-clean-teeth-icon-on-transparent-background-free-png.png"),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HeartDivisionDoctor()));
                    },
                    child: Container(
                      height: 90,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network("https://static.vecteezy.com/system/resources/previews/023/337/900/non_2x/ai-generative-jewerly-in-shape-of-anatomical-model-of-human-heart-made-from-gold-free-png.png"),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EyeDivisionDoctor()));
                    },
                    child: Container(
                      height: 90,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network("https://static.vecteezy.com/system/resources/previews/010/150/710/non_2x/eye-icon-sign-symbol-design-free-png.png"),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WomanDivisionDoctor()));
                    },
                    child: Container(
                      height: 90,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network("https://static.vecteezy.com/system/resources/previews/011/787/577/non_2x/beautiful-woman-smile-and-dancing-in-chrismas-party-birthday-time-and-celebration-of-new-year-eve-and-decoration-with-colorful-ballons-and-on-red-background-free-png.png"),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popluar Doctor",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("See all >"),
              ],
            ),

            SizedBox(height: 5,),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  reverse: false,
                  itemCount: listofPopluarDoctor.length,
                  itemBuilder: (context, index){
                  return Column(
                    children: [
                      Container(
                        height: 80,
                        width: 160,
                        // margin: EdgeInsets.only(
                        //   //left: 5,
                        //   right: 5
                        // ),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("${listofPopluarDoctor[index].imgurl}"), fit: BoxFit.cover),
                        ),
                      ),

                      Text("${listofPopluarDoctor[index].name}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black
                      ),
                      ),

                      Text("${listofPopluarDoctor[index].position}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black54,
                        ),
                      ),

                      Text("${listofPopluarDoctor[index].rating}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  );
                  }
              ),
            ),

            SizedBox(height: 6,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Feature Doctor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("See all >"),
              ],
            ),

            SizedBox(height: 5,),

            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  reverse: false,
                  itemCount: listofPopluarDoctor.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Container(
                          height: 128,
                          width: 110,
                          margin: EdgeInsets.only(
                            //left: 5,
                            right: 8
                          ),
                          padding: EdgeInsets.only(
                            left: 2,
                            right: 2,
                            //top: 2,
                            //bottom: 2
                          ),
                          decoration: BoxDecoration(
                            //image: DecorationImage(image: NetworkImage("${listofPopluarDoctor[index].imgurl}"), fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(listofFeatureDoctor[index].isfavourite),

                                  Row(
                                    children: [
                                      Text("${listofFeatureDoctor[index].rating}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orangeAccent,
                                      ),
                                      ),

                                      SizedBox(width: 3,),

                                      Text("${listofFeatureDoctor[index].ratingNo}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),

                              //SizedBox(height: 2,),

                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: NetworkImage("${listofFeatureDoctor[index].imgurl}"), fit: BoxFit.cover)
                                ),
                              ),

                              //SizedBox(height: 2,),

                              Text("${listofFeatureDoctor[index].name}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.black
                                ),
                              ),

                              //SizedBox(height: 2,),

                              Text("${listofFeatureDoctor[index].position}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8,
                                  color: Colors.black54,
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    );
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
