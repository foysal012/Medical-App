import 'package:doctor_hunt/authentication/signin_page_screen.dart';
import 'package:flutter/material.dart';

class FourthIntroduction extends StatefulWidget {
  const FourthIntroduction({Key? key}) : super(key: key);

  @override
  State<FourthIntroduction> createState() => _FourthIntroductionState();
}

class _FourthIntroductionState extends State<FourthIntroduction> {
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
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                //image: DecorationImage(image: AssetImage("images/w10.jpg")),
                image: DecorationImage(image: NetworkImage("https://www.liveabout.com/thmb/-VaSFroYZ6nANNpc-HQvnypdw5U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/portrait-of-doctor-in-hospital-looking-at-camera-733931963-5aa9a9de30371300379c0116.jpg"),fit: BoxFit.cover),
                //color: Colors.yellow
                shape: BoxShape.circle,
              ),

              //child: Image.network("https://www.daily-sun.com/assets/news_images/2022/08/29/DS-18-29-08-2022.jpg"),
            ),

            SizedBox(height: 60,),

            Text("Easy Appointments",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 15,),

            Text("Country to popluar belief, Lorem ipsum is not\nsimply random text. it has roots in a piece of it\nover 2000 years old",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),

            SizedBox(
              height: 50,
            ),

            InkWell(
              onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInPageScreen()));
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInPageScreen()));
              },
              child: Text("Skip",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
