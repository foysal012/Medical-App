import 'package:doctor_hunt/authentication/forgot_password_screen.dart';
import 'package:doctor_hunt/authentication/signup_page_screen.dart';
import 'package:doctor_hunt/bottom_navigationbar/bottom_navigationbar_screen.dart';
import 'package:doctor_hunt/screen/home_page_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPageScreen extends StatefulWidget {
  const SignInPageScreen({Key? key}) : super(key: key);

  @override
  State<SignInPageScreen> createState() => _SignInPageScreenState();
}

class _SignInPageScreenState extends State<SignInPageScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  FirebaseAuth _auth = FirebaseAuth.instance;

  bool isObsecure = true;

   forgotPassword(){
     return showModalBottomSheet(
         isDismissible: true,
         isScrollControlled: true,
         backgroundColor: Colors.transparent,
         context: context,
         builder: (context) => ForgotPassword()
     );
  }

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 80,),

            Text("Welcome back",
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

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image(image: NetworkImage("https://e7.pngegg.com/pngimages/760/624/png-clipart-google-logo-google-search-advertising-google-company-text-thumbnail.png")),
                      Text("Google"),
                    ],
                  ),
                ),

                Container(
                  height: 60,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image(image: NetworkImage("https://img.freepik.com/premium-vector/social-media-icon-illustration-facebook-facebook-icon-vector-illustration_561158-2134.jpg?w=2000")),
                      Text("Facebook"),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),

            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              cursorWidth: 5,
              cursorHeight: 5,
              cursorColor: Colors.pink,
              cursorRadius: Radius.circular(20),

              decoration: InputDecoration(
                hintText: "itsmefoysal1@gmail.com",
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {

                    });
                  },
                  icon: Icon(Icons.turn_slight_right_outlined,
                  color: emailController.text.endsWith("@gmail.com") ? Colors.black : Colors.grey,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 3,
                  )
                ),

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    )
                ),

              ),
            ),

            SizedBox(height: 10,),

            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.emailAddress,
              cursorWidth: 5,
              cursorHeight: 5,
              cursorColor: Colors.pink,
              cursorRadius: Radius.circular(20),
              obscureText: isObsecure,
              obscuringCharacter: ".",

              decoration: InputDecoration(

                hintText: ".............",
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: Icon( isObsecure == true ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    )
                ),

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    )
                ),

              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BottomNavigationBarScreen()));

                setState(() {
                  isLoading = true;
                });
                _auth.signInWithEmailAndPassword(
                    email: emailController.text.toString(),
                    password: passwordController.text.toString(),
                ).then((value) {
                  setState(() {
                    isLoading = false;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully Login")));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BottomNavigationBarScreen()));
                }).onError((error, stackTrace) {
                  setState(() {
                    isLoading = false;
                  });
                  toastMessage("$error");
                });
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),

                ),
                child: isLoading == true ? CircularProgressIndicator() :
                Center(
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){
                forgotPassword();
              },
              child: Text("Forgot password",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),


            SizedBox(height: 30,),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPageScreen()));
              },
              child: Text("Don't have an account?Join us",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
