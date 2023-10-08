import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModernArtUI extends StatefulWidget {
  const ModernArtUI({Key? key}) : super(key: key);

  @override
  State<ModernArtUI> createState() => _ModernArtUIState();
}

class _ModernArtUIState extends State<ModernArtUI> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: width / 2,
                    height: height / 2.5,
                    color: Color.fromRGBO(15+_value, 75+_value, 171+_value, 1),
                  ),
                  Container(
                    width: width / 2,
                    height: height / 2.5,
                    color: Color.fromRGBO(201+_value, 18+_value, 91+_value, 1),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: width / 2,
                    height: height * (2 / 7.5),
                    color: Color.fromRGBO(195+_value, 222+_value, 18+_value, 1),
                  ),
                  Container(
                    width: width / 2,
                    height: height * (2 / 7.5),
                    color: Color.fromRGBO(12+_value, 173+_value, 130+_value, 1),
                  ),
                  Container(
                    width: width / 2,
                    height: height * (2 / 7.5),
                    color: Color.fromRGBO(195+_value, 17+_value, 212+_value, 1),
                  ),
                ],
              )
            ],
          ),
          Slider(
            value: _value.toDouble(),
            min: 1,
            max: 100,
            divisions: 100,
            onChanged: (double value) {
              setState(() {
                _value = value.round();
              });
            },
          ),
        ],
      ),
    );
  }
}
