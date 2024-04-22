import 'package:daily_exercises/constants.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function press;

  const SessionCard({
    super.key,
    required this.sessionNum,
    this.isDone = false,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return LayoutBuilder(builder: (context, Constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: Constraint.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 25,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press as Function()?,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor)),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Session $sessionNum",
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
