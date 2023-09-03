import 'package:flutter/material.dart';

class SettingsPageScreen extends StatefulWidget {
  const SettingsPageScreen({Key? key}) : super(key: key);

  @override
  State<SettingsPageScreen> createState() => _SettingsPageScreenState();
}

class _SettingsPageScreenState extends State<SettingsPageScreen> {

  bool value1 = true;
  bool value2 = true;
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
            crossAxisAlignment: CrossAxisAlignment.start,
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

                  Text("Settings",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Text("Account settings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontSize: 18
              ),
              ),
              
              SizedBox(height: 20,),

              SettingsItem(
                onTap: (){

                },
                clr: Colors.red,
                icon: Icons.lock,
                title: "Change Password",
              ),

              SizedBox(height: 20,),

              SettingsItem(
                onTap: (){

                },
                clr: Colors.green,
                icon: Icons.notification_add,
                title: "Notifications",
              ),

              SizedBox(height: 20,),

              SettingsItem(
                onTap: (){

                },
                clr: Colors.lightBlue,
                icon: Icons.pie_chart,
                title: "Statistics",
              ),

              SizedBox(height: 20,),

              SettingsItem(
                onTap: (){

                },
                clr: Colors.orangeAccent,
                icon: Icons.person_add_alt_outlined,
                title: "About us",
              ),

              SizedBox(height: 20,),

              Text("More options",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 18
                ),
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Text messages",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),

                  Switch(
                      value: value1,
                      onChanged: (val){
                        setState(() {
                          value1 = val;
                        });
                      }
                  )
                ],
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Phone calls",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),

                  Switch(
                      value: value2,
                      onChanged: (val){
                        setState(() {
                          value2 = val;
                        });
                      }
                  )
                ],
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Languages",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),

                  Row(
                    children: [
                    Text("English",
                    style: TextStyle(
                      color: Colors.black38
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.black38,)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Currency",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),

                  Row(
                    children: [
                      Text("\$-USD",
                        style: TextStyle(
                            color: Colors.black38
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.black38,)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Linked accounts",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),

                  Row(
                    children: [
                      Text("Facebook, Google",
                        style: TextStyle(
                            color: Colors.black38
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.black38,)
                    ],
                  ),
                ],
              ),
              
              
            ],
          ),
        ),
    );
  }
}

class SettingsItem extends StatelessWidget {
   SettingsItem({
    super.key, this.onTap, this.clr, this.icon, this.title,
  });

  dynamic? onTap;
  Color? clr;
  IconData? icon;
  String? title;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,

      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: clr,
        ),
        child: Icon(icon, color: Colors.white,),
      ),

      title: Text("$title",
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black38,
        fontSize: 16,
      ),
      ),

      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black38,),
    );
  }
}
