import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quest_arcade_app/router/router.dart';
import 'package:quest_arcade_app/theme/colors.dart';
import 'package:quest_arcade_app/widgets/coins/bloc/coins_bloc.dart';

@RoutePage()
class FindNumbersWinScreen extends StatefulWidget {
  final int coins;
  const FindNumbersWinScreen({super.key, required this.coins});

  @override
  State<FindNumbersWinScreen> createState() => _FindNumbersWinScreenState();
}

class _FindNumbersWinScreenState extends State<FindNumbersWinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/elements/game-bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/elements/win.png'),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.white15,
                        border: Border.all(color: AppColors.blueBorder, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'You won ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${widget.coins}',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: AppColors.orange,
                          ),
                        ),
                        Text(
                          ' coins!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<CoinsBloc>()
                          .add(AddCoinsEvent(coins: widget.coins));
                      context.router.push(HomeRoute());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      decoration: BoxDecoration(
                          gradient: AppColors.blueGradient,
                          border:
                          Border.all(color: AppColors.blueBorder, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Text(
                        'OK',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
