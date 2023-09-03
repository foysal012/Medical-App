import 'package:flutter/material.dart';

class PopluarDoctorModelClass{

  String? imgurl;
  String? name;
  String? position;
  String? rating;

  PopluarDoctorModelClass({this.imgurl, this.name, this.position, this.rating});

  static final listofPopularDoctor = [

    PopluarDoctorModelClass(
      imgurl: "https://hamshospital.com/wp-content/themes/hams_thm/inc/timthumb.php?src=https://hamshospital.com/wp-content/uploads/2023/06/Dr-Amit-Shrestha.png&w=500&h=500",
      name: "Dr. Fillerup Grab",
      position: "Medicine Specialist",
      rating: "✴✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip",
      name: "Dr. Blessing",
      position: "Dental Specialist",
      rating: "✴✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://www.felixhospital.com/sites/default/files/2022-11/dr-dk-gupta.jpg",
      name: "Dr. shruti Kedia",
      position: "Dentist",
      rating: "✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://bswh-p-001-delivery.sitecorecontenthub.cloud/api/public/content/6ddd84df68cb4fd7bd86a719cdf8c8ab?v=a682b4c0",
      name: "Dr. Pediatrician",
      position: "Specialist Cardiologist",
      rating: "✴✴✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://www.doctorcare.ca/wp-content/uploads/2021/05/header-homepage-cropped.png",
      name: "Dr. Mistry Brick",
      position: "Specialist Dentist",
      rating: "✴✴✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://specialisthospital.in/wp-content/uploads/2023/05/NewDoctorsWebsite-Anitha.jpg",
      name: "Dr. Ether Wall",
      position: "Specialist Cancer",
      rating: "✴✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://www.yourfreecareertest.com/wp-content/uploads/2018/01/how_to_become_a_doctor.jpg",
      name: "Dr. Johan smith",
      position: "Specialist cardiologist",
      rating: "✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://health.gov/sites/default/files/styles/600_wide/public/2022-06/cadqt.jpg?itok=zn27s5mX",
      name: "Dr. Truluck Nik",
      position: "Medicine Specialist",
      rating: "✴✴✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=2000",
      name: "Dr. Tranquilli",
      position: "Patheology Specialist",
      rating: "✴✴✴✴",
    ),
    PopluarDoctorModelClass(
      imgurl: "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
      name: "Dr. Christenfeld N",
      position: "Specalist Cancer",
      rating: "✴✴✴✴✴",
    ),

  ];
}