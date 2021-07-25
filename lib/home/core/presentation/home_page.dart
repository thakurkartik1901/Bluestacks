import 'package:flutter/material.dart';

import '../../tournament/presentation/tournamnet_page.dart';
import '../../user/presentation/user_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.grey[800],
                    size: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Flyingwolf',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                    ),
                  ),
                ],
              ),
              const UserDetail(),
              const Expanded(child: TournamentPage())
            ],
          ),
        ),
      ),
    );
  }
}
