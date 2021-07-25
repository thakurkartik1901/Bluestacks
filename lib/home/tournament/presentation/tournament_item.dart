import 'package:flutter/material.dart';

import '../domain/tournament.dart';

class TournamentItem extends StatelessWidget {
  final Tournament tournament;
  const TournamentItem(this.tournament, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
        top: 5,
        right: 5,
        left: 5,
      ),
      shadowColor: Colors.white,
      elevation: 4,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          height: 150.0,
          width: double.infinity,
          child: Stack(
            children: [
              Image(
                image: NetworkImage(tournament.coverUrl),
                fit: BoxFit.cover,
                height: 150.0,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      tournament.name,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.grey[800],
                          ),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      tournament.gameName,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                            color: Colors.grey[800],
                          ),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
