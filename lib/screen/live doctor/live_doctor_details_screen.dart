import 'package:doctor_hunt/model/live_doctor_comment_model_class.dart';
import 'package:doctor_hunt/model/live_doctor_model_class.dart';
import 'package:flutter/material.dart';

class LiveDoctorDetailsScreen extends StatefulWidget {
   LiveDoctorDetailsScreen({Key? key, this.liveDoctorModelClass}) : super(key: key);

   LiveDoctorModelClass ? liveDoctorModelClass;

  @override
  State<LiveDoctorDetailsScreen> createState() => _LiveDoctorDetailsScreenState();
}

class _LiveDoctorDetailsScreenState extends State<LiveDoctorDetailsScreen> {

  TextEditingController commentController = TextEditingController();

  var commentlist = LiveDoctorCommentModelClass.commentListofLiveDoctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("${widget.liveDoctorModelClass!.imgurl}"),fit: BoxFit.cover,opacity: 0.1),
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 30,
            bottom: 10,
          ),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Icon(Icons.arrow_back_ios, color: Colors.black,size: 22,)),
                      ),
                    ),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/profile_images/1605607703178403840/hvbe8OEE_400x400.jpg"))
                    ),
                  )
                ],
              ),

              Spacer(),

              SizedBox(height: 10,),

              ListView.builder(
                  shrinkWrap: true,
                  reverse: false,
                  itemCount: commentlist.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage("${commentlist[index].cimgurl}"))
                        ),
                      ),

                      title: Text("${commentlist[index].cname}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: Text("${commentlist[index].ccomment}"),
                    );
                  }),

              SizedBox(height: 10,),

              Container(
                height: 60,
                width: double.infinity,
                padding: EdgeInsets.only(
                  right: 10,
                  left: 3,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: commentController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    
                    prefixIcon: Container(
                      height: 30,
                      width: 30,
                      margin: EdgeInsets.only(
                        top: 6,
                          left: 3,
                        right: 3,
                        bottom: 3,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Icon(Icons.message, color: Colors.white,size: 22,),
                    ),
                    hintText: "Add a Comment...",
                    suffixIcon: Icon(Icons.person, color: Colors.grey,size: 20,)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
