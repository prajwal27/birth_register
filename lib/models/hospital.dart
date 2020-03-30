import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hospital {
  String hospitalName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Hospital(
      {this.hospitalName,
        this.address,
        this.description,
        this.thumbNail,
        this.locationCoords});
}

final List<Hospital> hospitals = [
  Hospital(
      hospitalName: 'Kenyatta Hospital',
      address: 'Hospital Rd, Nairobi, Kenya',
      description: 'Hospital 1',
      locationCoords: LatLng(1.3012, 36.8116),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOfv3DSTkjsgvwCsUe_flDr4DBXneEVR1hWQCvR=w90-h90-n-k-no'
  ),
  Hospital(
      hospitalName: 'M.P Shah Hospital',
      address: 'Shivaji Road, Nairobi, Kenya',
      description: 'Hospital 2',
      locationCoords: LatLng(1.2632, 36.8119),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOfv3DSTkjsgvwCsUe_flDr4DBXneEVR1hWQCvR=w90-h90-n-k-no'
  ),
  Hospital(
      hospitalName: 'The Karen Hospital',
      address: 'Karen Rd, Road, Kenya',
      description: 'Hospital 3',
      locationCoords: LatLng(1.3170, 36.7038),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipPGoxAP7eK6C44vSIx4SdhXdp78qiZz2qKp8-o1=w90-h90-n-k-no'
  )
];