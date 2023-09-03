import 'package:doctor_hunt/model/category/dentist_doctor_model_class.dart';
import 'package:doctor_hunt/screen/search_page_screen.dart';
import 'package:flutter/material.dart';

class FavouriteDoctorPageScreen extends StatefulWidget {
   FavouriteDoctorPageScreen({Key? key, this.favouritelist}) : super(key: key);

   //DentistDoctorModelClass? dentistDoctorModelClass;

    List<DentistDoctorModelClass>? favouritelist;
  @override
  State<FavouriteDoctorPageScreen> createState() => _FavouriteDoctorPageScreenState();
}

class _FavouriteDoctorPageScreenState extends State<FavouriteDoctorPageScreen> {

  TextEditingController searchController = TextEditingController();

  //List favlist = SearchPageScreen.favouritelist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding:  const EdgeInsets.only(
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
          height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Center(child: Icon(Icons.arrow_back_ios, color: Colors.black,)),
          ),
        ),

        SizedBox(width: 30,),

        Text("Favourite Doctors",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 25
          ),
        )

        ],
      ),

      SizedBox(height: 15,),

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

      SizedBox(height: 15,),

            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    reverse: false,
                    itemCount: widget.favouritelist!.length,
                    itemBuilder: (context, index){
                    return Container(
                      height: 180,
                      width: 150,
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          // Container(
                          //   child: ,
                          // ),
                          
                          //Text("${favouritelist[index].}")

                          Text("${widget.favouritelist![index].name}"),
                        ],
                      ),
                    );
                    }
                    )
            )


  ]
      ),
    )
    );
  }
}
