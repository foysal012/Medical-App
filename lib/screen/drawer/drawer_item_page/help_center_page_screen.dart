import 'package:flutter/material.dart';

class HelpCenterPageScreen extends StatefulWidget {
  const HelpCenterPageScreen({Key? key}) : super(key: key);

  @override
  State<HelpCenterPageScreen> createState() => _HelpCenterPageScreenState();
}

class _HelpCenterPageScreenState extends State<HelpCenterPageScreen> {

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

                  Text("Help Center",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22
                  ),
                  ),
                ],
              ),

              SizedBox(height: 25,),

              Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("I have na Issue with",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Booking a new Appointment",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Existing Appointment",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Online consultations",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Feedbacks",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Medicine orders",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Diagonistic Tests",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Health plans",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "My account and Practo Drive",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Have a feature in mind",
                icon: Icons.arrow_forward_ios,
              ),

              SizedBox(height: 7,),

              HeplCenterWidget(
                onTap: (){

                },
                title: "Other issues",
                icon: Icons.arrow_forward_ios,
              ),

              Spacer(),

              Container(
                height: 4,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              SizedBox(
                height: 8,
              )

            ],
          ),
        )
    );
  }
}

class HeplCenterWidget extends StatelessWidget {
   HeplCenterWidget({
    super.key, this.title, this.icon, this.onTap,
  });

  String? title;
  IconData? icon;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(

       title: Text("$title",
       style: TextStyle(
         fontSize: 18,
         fontWeight: FontWeight.w400,
         color: Colors.black54,
       ),
       ),

       trailing: Icon(icon, color: Colors.black54,),

      ),
    );
  }
}
