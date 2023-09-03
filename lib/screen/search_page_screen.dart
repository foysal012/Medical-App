import 'package:doctor_hunt/model/category/dentist_doctor_model_class.dart';
import 'package:doctor_hunt/screen/booking/booking_doctor_page1.dart';
import 'package:doctor_hunt/screen/favourite_doctor_page_screen.dart';
import 'package:flutter/material.dart';

class SearchPageScreen extends StatefulWidget {
  const SearchPageScreen({Key? key}) : super(key: key);

  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> {
  TextEditingController searchController = TextEditingController();

  //var listofDentistDoctor = DentistDoctorModelClass.dentistDoctorList;

  bool isvalue = true;

  List<DentistDoctorModelClass> favouritelist = [];

  //static List favouritelist = [];

  //List favouritelist = FavouriteClass().

  List<DentistDoctorModelClass> listofDentistDoctor = [
    DentistDoctorModelClass(
        name: "Dr. Faria Nova",
        position: "Tooths Dentist",
        imgurl:
            "https://www.ozstudies.com/creative/blog-images/how-to-become-a-doctor/how-to-become-doctor-in-australia-ozstudies.jpg",
        experience: "7 Years experience",
        icon: true,
        performence: "87%",
        patientnumber: "69 Patient Stories",
        isavailable: "10:00 AM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Lima Maisham",
        position: "Tooths Dentist",
        imgurl:
            "https://images.theconversation.com/files/304961/original/file-20191203-67002-1fcpnfd.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
        experience: "2 Years experience",
        icon: false,
        performence: "59%",
        patientnumber: "52 Patient Stories",
        isavailable: "2:00 PM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Mahmuda Sumi",
        position: "Tooths Dentist",
        imgurl:
            "https://www.nme.com/wp-content/uploads/2023/04/doctor-cha-netflix-kdrama.jpg",
        experience: "1 Years experience",
        icon: true,
        performence: "71%",
        patientnumber: "29 Patient Stories",
        isavailable: "03:00 PM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Osman Goni",
        position: "Tooths Dentist",
        imgurl:
            "https://cdn3.poz.com/24954_Doctor-Patient-iStock-92723315-XLARGE.jpg_67e4ea75-849c-419d-b32b-8970f8ae05a7_x2.jpeg",
        experience: "5 Years experience",
        icon: true,
        performence: "90%",
        patientnumber: "58 Patient Stories",
        isavailable: "10:00 AM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Fahim",
        position: "Tooths Dentist",
        imgurl:
            "https://ic.c4assets.com/brands/the-good-doctor/b24d15b7-bba0-4939-bf45-e893dd5d46fa.jpg?interpolation=progressive-bicubic&output-format=jpeg&output-quality=90{&resize}",
        experience: "7 Years experience",
        icon: true,
        performence: "81%",
        patientnumber: "80 Patient Stories",
        isavailable: "10:00 AM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Tohidul",
        position: "Tooths Dentist",
        imgurl:
            "https://content.jdmagicbox.com/comp/siliguri/dc/9999px353.x353.090620091230.q1l8dc/catalogue/dr-aniruddha-ghosh-siliguri-siliguri-general-physician-doctors-rtj1ugr5cd.jpg",
        experience: "4 Years experience",
        icon: true,
        performence: "76%",
        patientnumber: "47 Patient Stories",
        isavailable: "12:00 PM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Towfiq",
        position: "Tooths Dentist",
        imgurl:
            "https://www.portea.com/static/86d34fbc8306b7f62dae2b08aa754e4f/1abfa/banner-img-doctor.jpg",
        experience: "3 Years experience",
        icon: false,
        performence: "72%",
        patientnumber: "40 Patient Stories",
        isavailable: "10:00 AM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Shopon",
        position: "Tooths Dentist",
        imgurl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI44O1hBE43qGEVX8qXSfevn_iI0w64QjfaysV_CO5-_9RD1oaUdy34Q2PFoY7ffrON48&usqp=CAU",
        experience: "8 Years experience",
        icon: false,
        performence: "92%",
        patientnumber: "107 Patient Stories",
        isavailable: "12:00 PM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Shimul chandra",
        position: "Tooths Dentist",
        imgurl:
            "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
        experience: "10 Years experience",
        icon: false,
        performence: "98%",
        patientnumber: "142 Patient Stories",
        isavailable: "10:00 AM tomorrow"),
    DentistDoctorModelClass(
        name: "Dr. Ujjol Kumar Roy",
        position: "Tooths Dentist",
        imgurl:
            "https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg?w=2000",
        experience: "9 Years experience",
        icon: true,
        performence: "90%",
        patientnumber: "133 Patient Stories",
        isavailable: "10:00 AM tomorrow"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body:
      Container(
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
            ])),
        child: Column(
          children: [

            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Find Doctors",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 25),
                ),
               IconButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FavouriteDoctorPageScreen(
                    //   //dentistDoctorModelClass: ,
                    // )));

                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Favourite Doctor"),
                            content: Container(
                              height: 300,
                              width: double.infinity,
                              child: Expanded(
                                child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    Container(
                                      height: 100,
                                      child: Text(
                                          "list of ${favouritelist.toString()}"),
                                    );
                                  },
                                  separatorBuilder: (_, index) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemCount: favouritelist.length,
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  icon: Icon(Icons.favorite_outlined),
                )
              ],
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              height: 60,
              width: double.infinity,
              // margin: EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.cancel_outlined),
                  hintText: "Dentist",
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FavouriteDoctorPageScreen(
                    favouritelist: favouritelist,
                  )));
                },
                icon: Icon(Icons.add)),

            // SizedBox(
            //   height: 5,
            // ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    itemCount: listofDentistDoctor.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 180,
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "${listofDentistDoctor[index].imgurl}",
                                  height: 120,
                                  width: 100,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${listofDentistDoctor[index].name}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          onTap: () {

                                            // var val =
                                            //     listofDentistDoctor[index].icon;
                                            // setState(() {
                                            //   //isvalue = !isvalue;
                                            //   if (val == isvalue) {
                                            //     listofDentistDoctor[index]
                                            //         .icon = false;
                                            //   } else {
                                            //     listofDentistDoctor[index]
                                            //         .icon = true;
                                            //     if (listofDentistDoctor[index]
                                            //         .icon = true) {
                                            //       //favouritelist.add(listofDentistDoctor[index]);
                                            //       favouritelist.add(
                                            //           listofDentistDoctor[
                                            //               index]);
                                            //       print(
                                            //           favouritelist.toString());
                                            //     } else if (listofDentistDoctor[
                                            //             index]
                                            //         .icon = false) {
                                            //       favouritelist.remove(
                                            //           listofDentistDoctor[
                                            //               index]);
                                            //       setState(() {});
                                            //       print(
                                            //           favouritelist.toString());
                                            //     }
                                            //   }
                                            // });

                                            print("Clicked by me");
                                            setState(() {

                                              var val =
                                                  listofDentistDoctor[index].icon;
                                              setState(() {
                                                //isvalue = !isvalue;
                                                if (val == isvalue) {
                                                  // listofDentistDoctor[index]
                                                  //     .icon = false;
                                                  final fav = DentistDoctorModelClass(
                                                    name: listofDentistDoctor[index].name,
                                                    //experience: listofDentistDoctor[index].experience,
                                                  );
                                                  // favouritelist.add(fav);
                                                  favouritelist.add(
                                                      fav
                                                  );
                                                } else{
                                                  favouritelist.remove(
                                                      DentistDoctorModelClass(
                                                        name: listofDentistDoctor[index].name,
                                                      ));
                                                  print(
                                                      favouritelist.toString());
                                                }
                                                // else {
                                                //   listofDentistDoctor[index]
                                                //       .icon = true;
                                                //   if (listofDentistDoctor[index]
                                                //       .icon = true) {
                                                //     //favouritelist.add(listofDentistDoctor[index]);
                                                //
                                                //
                                                //   }
                                                // }
                                              });

                                              // final fav = DentistDoctorModelClass(
                                              //   name: listofDentistDoctor[index].name,
                                              //   experience: listofDentistDoctor[index].experience,
                                              // );
                                              // favouritelist.add(fav);
                                            });

                                          },
                                          child: Icon(
                                            // listofDentistDoctor[index].icon ==
                                            //         true
                                            //     ? Icons.favorite_outlined
                                            //     : Icons.favorite_outline,
                                            // color: listofDentistDoctor[index]
                                            //             .icon ==
                                            //         true
                                            //     ? Colors.red
                                            //     : Colors.black,


                                            Icons.star
                                          ),

                                          // child: Icon(isvalue == true ? Icons.favorite_outlined : Icons.favorite_outline,
                                          //   color: isvalue == true ? Colors.red : Colors.black,),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "${listofDentistDoctor[index].position}",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "${listofDentistDoctor[index].experience}",
                                      // style: TextStyle(
                                      //     color: Colors.green,
                                      //     fontWeight: FontWeight.w600,
                                      //     fontSize: 14
                                      // ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "🌏",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              "${listofDentistDoctor[index].performence}",
                                              // style: TextStyle(
                                              //     color: Colors.green,
                                              //     fontWeight: FontWeight.w600,
                                              //     fontSize: 14
                                              // ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "🌏",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              "${listofDentistDoctor[index].patientnumber}",
                                              // style: TextStyle(
                                              //     color: Colors.green,
                                              //     fontWeight: FontWeight.w600,
                                              //     fontSize: 14
                                              // ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Next Available",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "${listofDentistDoctor[index].isavailable}",
                                      // style: TextStyle(
                                      //   color: Colors.green,
                                      //   fontWeight: FontWeight.w900,
                                      // ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BookingDoctorPage1(
                                                  dentistDoctorModelClass:
                                                      listofDentistDoctor[
                                                          index],
                                                )));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.green,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
            )
          ],
        ),
      ),
    );
  }
}
//List favouritelist = [];
