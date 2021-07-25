import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/presentation/localization/localizations.dart';
import '../../core/presentation/loading_widget.dart';
import '../domain/tournament.dart';
import '../shared/providers.dart';
import 'tournament_item.dart';

class TournamentPage extends StatefulWidget {
  const TournamentPage({Key? key}) : super(key: key);

  @override
  _TournamentPageState createState() => _TournamentPageState();
}

class _TournamentPageState extends State<TournamentPage> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();

    Future.microtask(() =>
        context.read(tournamentNotifierProvider.notifier).fetchTournaments());
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizations;
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(tournamentNotifierProvider);
      final List<Tournament> tournaments = state.tournaments;
      return tournaments.isNotEmpty
          ? ListView.builder(
              itemCount: tournaments.length,
              controller: _scrollController,
              itemBuilder: (contex, index) {
                return Column(
                  children: [
                    if (index == 0) ...[
                      const SizedBox(height: 20),
                      _buildHeading(labels),
                      const SizedBox(height: 15),
                    ],
                    TournamentItem(tournaments[index]),
                    if (index == tournaments.length - 1 && state.isLoading) ...[
                      const SizedBox(height: 2),
                      const LoadingWidget(),
                      const SizedBox(height: 2),
                    ]
                  ],
                );
              },
            )
          : const LoadingWidget();
    });
  }

  Widget _buildHeading(AppLocalizationsData labels) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        labels.tournament.recomended,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.grey[800],
            ),
      ),
    );
  }

  Future<void> _scrollListener() async {
    if (_scrollController!.position.extentAfter <= 0) {
      await context
          .read(tournamentNotifierProvider.notifier)
          .fetchTournaments();
    }
  }
}
