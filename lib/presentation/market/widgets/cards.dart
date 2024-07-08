import 'package:flutter/material.dart';
import 'package:star_gate/varibles.dart' as global;
import '../../../varibles.dart';
import '../../theme/app_theme.dart';

class Cards extends StatefulWidget  {
  final String category;
  Cards({super.key, required this.category,});

  @override
  State<Cards> createState() => _CardsState();
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cards && other.category == category;
  }

  @override
  int get hashCode => category.hashCode;
}

class _CardsState extends State<Cards>{
  @override
  // TODO: implement props
  List<Object?> get props => [widget.category];

  @override
  Widget build(BuildContext context) {
      bool isSelected = selectedWidget == widget.category;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (selectedWidget != widget.category) {
              selectedWidget = widget.category;
            } else {
              selectedWidget = null;
            }
          });
        },
        style: ButtonStyle(
          backgroundColor: isSelected? MaterialStateProperty.all<Color>(primaryColor):MaterialStateProperty.all<Color>(buttonSecondaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Text(
              widget.category,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected?Colors.white:Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w800
              )),
        ),
      ),
    );
  }



}




