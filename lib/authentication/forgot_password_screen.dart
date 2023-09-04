import 'package:doctor_hunt/screen/home_page_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController emailController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
        height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 5,
            width: 50,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),

            ),
          ),

          SizedBox(height: 20,),

          Text("Forgot password",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 15,),

          Text("Enter your email for the verification process,\nwe will send a link in your email.",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
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

          InkWell(
            onTap: (){
              //Navigator.of(context).pop();
              setState(() {
                isLoading = true;
              });

              _auth.sendPasswordResetEmail(
                  email: emailController.text.toString()
              ).then((value) {
                setState(() {
                  isLoading = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("rest password link sent successfully...")));
              }).onError((error, stackTrace) {
                setState(() {
                  isLoading = false;
                });
                toastMessage(error.toString());
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
                child: Text("Reset password",
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
        ],
      ),
    );
  }
}
