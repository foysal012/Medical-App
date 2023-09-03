import 'package:flutter/material.dart';

class HeartDoctorModelClass{

  String? name;
  String? imgurl;
  String? position;
  String? experience;
  String? performence;
  String? patientnumber;
  String? isavailable;
  bool? icon;

  HeartDoctorModelClass(
      {this.name,
        this.imgurl,
        this.position,
        this.experience,
        this.performence,
        this.patientnumber,
        this.isavailable,
        this.icon});

  static final dentistDoctorList = [

    HeartDoctorModelClass(
        name: "Dr. Prapty",
        position: "Hear specialist",
        imgurl: "https://www.ozstudies.com/creative/blog-images/how-to-become-a-doctor/how-to-become-doctor-in-australia-ozstudies.jpg",
        experience: "3 Years experience",
        icon: true,
        performence: "70%",
        patientnumber: "59 Patient Stories",
        isavailable: "10:00 AM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Sanjida",
        position: "Heart disease",
        imgurl: "https://images.theconversation.com/files/304961/original/file-20191203-67002-1fcpnfd.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
        experience: "2 Years experience",
        icon: false,
        performence: "59%",
        patientnumber: "47 Patient Stories",
        isavailable: "2:00 PM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Santona Khatun",
        position: "Heart disease",
        imgurl: "https://www.nme.com/wp-content/uploads/2023/04/doctor-cha-netflix-kdrama.jpg",
        experience: "1 Years experience",
        icon: true,
        performence: "71%",
        patientnumber: "29 Patient Stories",
        isavailable: "03:00 PM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Bappy",
        position: "Heart Specialist",
        imgurl: "https://cdn3.poz.com/24954_Doctor-Patient-iStock-92723315-XLARGE.jpg_67e4ea75-849c-419d-b32b-8970f8ae05a7_x2.jpeg",
        experience: "5 Years experience",
        icon: true,
        performence: "90%",
        patientnumber: "58 Patient Stories",
        isavailable: "10:00 AM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Ferose",
        position: "Heart serjon",
        imgurl: "https://ic.c4assets.com/brands/the-good-doctor/b24d15b7-bba0-4939-bf45-e893dd5d46fa.jpg?interpolation=progressive-bicubic&output-format=jpeg&output-quality=90{&resize}",
        experience: "7 Years experience",
        icon: true,
        performence: "81%",
        patientnumber: "80 Patient Stories",
        isavailable: "10:00 AM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Saidur",
        position: "Heart specialist",
        imgurl: "https://content.jdmagicbox.com/comp/siliguri/dc/9999px353.x353.090620091230.q1l8dc/catalogue/dr-aniruddha-ghosh-siliguri-siliguri-general-physician-doctors-rtj1ugr5cd.jpg",
        experience: "4 Years experience",
        icon: true,
        performence: "76%",
        patientnumber: "47 Patient Stories",
        isavailable: "12:00 PM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Towfiq",
        position: "Heart specialist",
        imgurl: "https://www.portea.com/static/86d34fbc8306b7f62dae2b08aa754e4f/1abfa/banner-img-doctor.jpg",
        experience: "3 Years experience",
        icon: false,
        performence: "72%",
        patientnumber: "40 Patient Stories",
        isavailable: "10:00 AM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. shopon",
        position: "Heart specialist",
        imgurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI44O1hBE43qGEVX8qXSfevn_iI0w64QjfaysV_CO5-_9RD1oaUdy34Q2PFoY7ffrON48&usqp=CAU",
        experience: "8 Years experience",
        icon: false,
        performence: "92%",
        patientnumber: "107 Patient Stories",
        isavailable: "12:00 PM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Shimul chandra",
        position: "Tooths Dentist",
        imgurl: "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
        experience: "10 Years experience",
        icon: false,
        performence: "98%",
        patientnumber: "142 Patient Stories",
        isavailable: "10:00 AM tomorrow"
    ),
    HeartDoctorModelClass(
        name: "Dr. Ujjol Kumar Roy",
        position: "Tooths Dentist",
        imgurl: "https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg?w=2000",
        experience: "9 Years experience",
        icon: true,
        performence: "90%",
        patientnumber: "133 Patient Stories",
        isavailable: "10:00 AM tomorrow"
    ),

  ];
}