import 'package:doctor_hunt/authentication/signin_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/diagonistic_test/diagonistic_test_page_screen2.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/help_center_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/medical%20record/medical_record_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/medicine%20order/medicine_order_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/my_doctor_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/payment/payment_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/privacy_policy_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/settings_page_screen.dart';
import 'package:doctor_hunt/screen/home_page_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  FirebaseAuth _auth = FirebaseAuth.instance;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        padding: EdgeInsets.all(14),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only( topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
            color: Color(0xff6c7b9d)
          //   image: DecorationImage(
          //     //image: NetworkImage("https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),fit: BoxFit.cover,),
          // ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1605607703178403840/hvbe8OEE_400x400.jpg"),
                          ),

                          SizedBox(width: 20,),

                          Column(
                            children: [

                              Text("Foysal Joarder",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),

                              SizedBox(height: 5,),

                              Text("+8801746416207",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Icon(Icons.close,color: Colors.white,),
                        ),
                      )
                    ],
                  )
                )
            ),

            //SizedBox(height: 10,),

            Expanded(
                flex: 8,
                child: Container(
                  child: Column(
                    children: [

                      DrawerItem(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyDoctorPageScreen()));
                        },
                        icon1: Icons.person,
                        title: "My Doctors",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      SizedBox(height: 5,),

                      DrawerItem(
                        onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MedicalRecordPageScreen()));
                        },
                        icon1: Icons.repeat_on_rounded,
                        title: "Medical Records",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      SizedBox(height: 5,),

                      DrawerItem(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PaymentPageScreen()));
                        },
                        icon1: Icons.payment,
                        title: "Payments",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      SizedBox(height: 5,),

                      DrawerItem(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MedicineOrderPageScreen()));
                        },
                        icon1: Icons.medical_services_rounded,
                        title: "Medical Orders",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      SizedBox(height: 5,),

                      DrawerItem(
                        onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiagonisticsTestPageScreen2()));
                        },
                        icon1: Icons.calendar_month,
                        title: "Test Bookings",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      SizedBox(height: 5,),

                      DrawerItem(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicyPageScreen()));
                        },
                        icon1: Icons.privacy_tip_sharp,
                        title: "Privacy & Policy",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      SizedBox(height: 5,),

                      DrawerItem(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HelpCenterPageScreen()));
                        },
                        icon1: Icons.help,
                        title: "Help Center",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      SizedBox(height: 5,),

                      DrawerItem(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsPageScreen()));
                        },
                        icon1: Icons.settings,
                        title: "Settings",
                        icon2: Icons.arrow_forward_ios,
                      ),

                      //SizedBox(height: 10,),

                      DrawerItem(
                        onTap: (){

                          setState(() {
                            isLoading = true;
                          });

                          _auth.signOut().then((value){
                            setState(() {
                              isLoading = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sucessfully Logout")));
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInPageScreen()));
                          }).onError((error, stackTrace){
                            setState(() {
                              isLoading = false;
                            });
                            toastMessage(error.toString());
                          });

                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsPageScreen()));
                        },
                        icon1: Icons.logout,
                        title: "Logout",
                        icon2: Icons.arrow_forward_ios,
                      ),


                    ],
                  ),
                )






            ),

          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
   DrawerItem({
    super.key, this.onTap, this.icon1, this.title, this.icon2,
  });

  String? title;
  IconData? icon1;
  IconData? icon2;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(

        onTap: onTap,

        leading:Icon(icon1, color: Colors.white,),

        title: Text("$title",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),

        trailing: Icon(icon2, color: Colors.white,),

      ),

    );
  }
}
