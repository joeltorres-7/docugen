import 'package:docugen/views/builder.dart';
import 'package:docugen/views/components/cards/action_card.dart';
import 'package:docugen/views/styles/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Resources.colors.primary,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            child: SizedBox(
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset('assets/resources/logos/logo.svg'),
                  Text(Resources.strings.homeTitle, style: const TextStyle(color: Colors.white),),
                  Container(
                    margin: const EdgeInsets.only(top: 32.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 0.0),
                              child: ActionCard(cardTitle: Resources.strings.leasingContract, cardDescription: Resources.strings.leasingContractDescription, buttonText: Resources.strings.generateNow, onPressed: () => Navigator.of(buildContext).push(_builderRoute())),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 24.0),
                              child: ActionCard(cardTitle: Resources.strings.guardianshipAction, cardDescription: Resources.strings.guardianshipActionDescription, buttonText: Resources.strings.generateNow, onPressed: (){},),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 24.0),
                          child: Text(Resources.strings.demoText, style: Resources.textStyles.paragraph3),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(Resources.strings.copyright, style: Resources.textStyles.paragraph3),
                    ],
                  )
                ],
              )
            ),
          ).animate().fade(delay: 100.ms).fadeIn(),
        ],
      ),
    );
  }
}

Route _builderRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BuilderView(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}