import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../bloc/authentication_bloc.dart';
import '../../data/models/specialties_model.dart';
import 'package:collection/collection.dart';

class SpecialtyListWidget extends StatelessWidget {
  const SpecialtyListWidget({super.key, required this.onTap});
  final void Function(String id) onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        spacing: 18,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'الدخول كـ',
            style: context.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (BuildContext context, AuthenticationState state) {
              return state.maybeWhen(
                specialtiesSucceed:
                    (List<SpecialtyResult> specialties) => Wrap(
                      spacing: 24,
                      runSpacing: 24,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children:
                          specialties.mapIndexed((
                            int index,
                            SpecialtyResult specialty,
                          ) {
                            return GestureDetector(
                              onTap: () {
                                onTap.call(specialty.id);
                              },
                              child: Container(
                                width: 160,
                                height: 190,

                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                  gradient:
                                      index.isEven
                                          ? const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Color.fromRGBO(99, 186, 253, 1),
                                              Color.fromRGBO(0, 124, 220, 1),
                                            ],
                                          )
                                          : const LinearGradient(
                                            colors: <Color>[
                                              Color.fromRGBO(149, 111, 215, 1),
                                              Color.fromRGBO(182, 142, 232, 1),
                                            ],
                                          ),
                                ),
                                padding: const EdgeInsets.all(17),
                                child: Column(
                                  spacing: 12,
                                  children: <Widget>[
                                    NetworkImageWidget(
                                      url: specialty.image ?? "",
                                      height: 75,
                                      width: 75,
                                      fit: BoxFit.fill,
                                    ),
                                    Text(
                                      specialty.name ?? " ",
                                      textAlign: TextAlign.center,
                                      style: context.bodyLarge?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: context.colorScheme.surface,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                    ),
                loadingSpecialties:
                    () => const Center(child: CircularProgressIndicator()),
                specialtiesFailed:
                    (GeneralException? generalException) => GlobalErrorWidget(
                      generalException: generalException,
                      onPressed: () {
                        context.read<AuthenticationBloc>().add(
                          const AuthenticationEvent.specialties(),
                        );
                      },
                    ),
                orElse: () => const SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }
}
