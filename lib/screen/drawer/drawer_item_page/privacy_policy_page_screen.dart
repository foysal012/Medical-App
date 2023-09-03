import 'package:flutter/material.dart';

class PrivacyPolicyPageScreen extends StatefulWidget {
  const PrivacyPolicyPageScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyPageScreen> createState() => _PrivacyPolicyPageScreenState();
}

class _PrivacyPolicyPageScreenState extends State<PrivacyPolicyPageScreen> {
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

                  Text("Privacy policy",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22
                    ),
                  ),
                ],
              ),

              SizedBox(height: 17,),

              Text("Doctor Hunt Apps Privacy Policy",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                    fontSize: 18
                ),
              ),

              SizedBox(height: 17,),

              Text("Video provides a powerful way to help you prove\n your point. When you click Online Video,you can\n paste in the embed code for\nthe video you want to add. You can\n also type a keyword to search online for the video that best fits your document. To\nmake your document look professionally produced,\nWord provides header, footer, cover page, and text\nbox designs that complement each other. For example, you can add a matching cover page, header, and sidebar. Click Insert and then choose the elements you want from the different galleries.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                    fontSize: 14
                ),
              ),

              SizedBox(height: 17,),

              Text("🟢 The standered chunk of lorem ipsum used\nsince 1500s is reproduced below for those\ninterested",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                    fontSize: 16
                ),
              ),

              SizedBox(height: 17,),

              Text("🟢 Sections 1.10.32 and 1.10.33 from de\nFinibus Bonorum at Maiorium. The point of using.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                    fontSize: 16
                ),
              ),

              SizedBox(height: 17,),

              Text("🟢 Lorem lpsum is that it has a moreit is a long\nestablished fact that reader will distructrd.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                    fontSize: 16
                ),
              ),

              SizedBox(height: 20,),

              Text("🟢 The point of using Lorem Ipsum is that it\nhas a moreit is a long established fact that\n reader will distructrd.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                    fontSize: 16
                ),
              ),

              SizedBox(height: 20,),

              Text("Video provides a powerful way to help you prove\n your point. When you click Online Video,you can\n paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                    fontSize: 14
                ),
              ),
            ],
          ),
        ),
    );
  }
}
