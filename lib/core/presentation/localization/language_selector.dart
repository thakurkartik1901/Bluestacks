import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/language_notifier.dart';
import '../../shared/providers.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(languageNotifierProvider);
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.language,
            color: Colors.grey[800],
            size: 20,
          ),
          const SizedBox(width: 3),
          DropdownButton<String>(
            isDense: true,
            items: languageOptions
                .map((data) => DropdownMenuItem<String>(
                      value: data.key,
                      child: Text(
                        data.value!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: Colors.grey[800],
                            ),
                      ),
                    ))
                .toList(),
            value: state.currentLanguage,
            onChanged: (value) {
              context
                  .read(languageNotifierProvider.notifier)
                  .updateLanguage(value!);
            },
          ),
        ],
      );
    });
  }
}
