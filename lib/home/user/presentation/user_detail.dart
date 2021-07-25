import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/presentation/localization/language_selector.dart';
import '../../../core/presentation/localization/localizations.dart';
import '../../core/presentation/loading_widget.dart';
import '../shared/providers.dart';
import 'gradient_container.dart';

const NetworkImage avatarImg = NetworkImage(
    'https://images.mubicdn.net/images/cast_member/2552/cache-207-1524922850/image-w856.jpg');

class UserDetail extends StatefulWidget {
  const UserDetail({Key? key}) : super(key: key);

  @override
  _UserDetailState createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read(userNotifierProvider.notifier).fetchUser());
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizations;
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(userNotifierProvider);
      return state.isLoading
          ? const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: LoadingWidget(),
            )
          : Column(
              children: [
                const SizedBox(height: 25),
                Row(
                  children: [
                    const ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        child: Image(
                          image: avatarImg,
                          fit: BoxFit.cover,
                          width: 70,
                          height: 70,
                        )),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  state.user.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.grey[800],
                                      ),
                                ),
                              ),
                              const LanguageSelector(),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 20, left: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(18))),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  state.user.rating,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.blueAccent,
                                      ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  labels.tournament.rating,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 11,
                                        color: Colors.grey,
                                      ),
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    GradientContainer(
                      title: state.user.played,
                      description: labels.tournament.tournaments,
                      subDescription: labels.tournament.played,
                      colors: const [Colors.deepOrange, Colors.orange],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          bottomLeft: Radius.circular(18)),
                    ),
                    const SizedBox(width: 1),
                    GradientContainer(
                      title: state.user.won,
                      description: labels.tournament.tournaments,
                      subDescription: labels.tournament.won,
                      colors: const [Colors.deepPurple, Colors.purple],
                      borderRadius: const BorderRadius.all(Radius.circular(0)),
                    ),
                    const SizedBox(width: 1),
                    GradientContainer(
                      title: '${state.user.percentage}%',
                      description: labels.tournament.winning,
                      subDescription: labels.tournament.percentage,
                      colors: const [Colors.redAccent, Colors.deepOrange],
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(18),
                          bottomRight: Radius.circular(18)),
                    ),
                  ],
                )
              ],
            );
    });
  }
}
