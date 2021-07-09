class Doctor {
  String id;
  String name;
  String speciality;
  String address;
  double rating;
  String shortDescription;
  String urlPhoto;
  String locationphoto;

  Doctor(this.id, this.name, this.speciality, this.rating, this.address,
      this.shortDescription, this.urlPhoto,this.locationphoto);
}
List<Doctor> doctors = [
  Doctor('1', 'Ashraf Ghandor ', 'Oncology Doctor', 4.0, 'Smouha',
      'Not over there or paradise, fear the result.', 'assets/images/doctor4.jpg','assets/images/loc1.png'),
  Doctor('2', 'Mohamed Ali', 'Pediatrics Doctor', 3.0, 'Sidi Gabr',
      'Not over there or paradise, fear the result.', 'assets/images/doctor1.jpg','assets/images/loc2.jpg'),
  Doctor('3', 'Fatma Mohamed', 'Hematology Doctor', 5.0, 'Janaklis',
      'Not over there or paradise, fear the result.', 'assets/images/doctor3.jpg','assets/images/loc3.png'),
  Doctor('4', 'Zeinab Ibrahim', '(ENT) doctor', 5.0, 'Sporting',
      'Not over there or paradise, fear the result.', 'assets/images/doctor8.jpg','assets/images/loc4.png'),
  Doctor('5', 'Hassan Ali ', 'Dentistry', 5.0, 'shatby',
      'Not over there or paradise, fear the result.', 'assets/images/doctor2.jpg','assets/images/loc5.png'),
  Doctor('6', 'Mohamed Osman', 'eyes speciality Doctor', 3.0, 'miami',
      'Not over there or paradise, fear the result.', 'assets/images/doctor6.jpg','assets/images/loc6.png'),
  Doctor('7', 'Aya Ibrahim', 'Dermatology Doctor', 4.0, 'sidibishr',
      'Not over there or paradise, fear the result.', 'assets/images/doctor7.jpg','assets/images/loc7.png'),
  Doctor('8', 'Farouk Ali', 'nephrology Doctor', 3.0, 'maamora',
      'Not over there or paradise, fear the result.', 'assets/images/doctor5.jpg','assets/images/loc8.png')
];
