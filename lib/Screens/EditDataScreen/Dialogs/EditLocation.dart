import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:lets/Helper/Helper.dart';

class EditLocation extends StatefulWidget {
  @override
  _EditLocationState createState() => _EditLocationState();
}

class _EditLocationState extends State<EditLocation> {
  Position? position;
  List<Placemark>? addresses;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        children: [
          ElevatedButton.icon(
            onPressed: () async {
              position = await Geolocator.getCurrentPosition(
                  desiredAccuracy: LocationAccuracy.high);

              addresses = await placemarkFromCoordinates(
                  position!.latitude, position!.longitude);
              setState(() {});
            },
            icon: Icon(Icons.location_on),
            label: Text(
              'Get My Location ...',
              maxLines: null,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                primary: Helper.MainTheme),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Helper.MainTheme,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  (addresses != null)
                      ? "${addresses!.first.country},${addresses!.first.locality}"
                      : "",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
