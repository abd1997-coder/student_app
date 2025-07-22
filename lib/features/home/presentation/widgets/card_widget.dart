import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/profile/bloc/profile_bloc.dart';
import 'package:student_app/features/profile/data/model/profile_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Palette.primary.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        image: DecorationImage(
          image: AssetsManager.images.backgroundCard.provider(),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        bloc: getIt<ProfileBloc>()..add(const ProfileEvent.getProfile()),
        listener: (BuildContext context, ProfileState state) {
          state.maybeWhen(
            orElse: () {},
            getProfileSuccess: (ProfileResults? profileResults) {
              PrefData.setUserBalance(
                "${profileResults?.results.student?.balance ?? 0}",
              );
            },
          );
        },
        builder: (BuildContext context, ProfileState state) {
          return state.maybeWhen(
            orElse: () {
              return const SizedBox(child: Text("Error"));
            },
            getProfileLoading: () {
              return const DashboardShimmer();
            },
            getProfileSuccess: (ProfileResults? profileResults) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Image(
                            image: AssetsManager.images.logo.provider(),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'مرحباً بك ${profileResults?.results.fullName} في نجاحي شكراً لك لعودتك',
                                  style: MobileTextThemes().largeLabel.copyWith(
                                    color: Palette.white,
                                  ),
                                ),

                                Text(
                                  "تطبيق نجاحي طريقك نحو النجاح",
                                  style: MobileTextThemes().largeLabel.copyWith(
                                    color: Palette.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                child: Image(
                                  image:
                                      AssetsManager.images.walletIcon
                                          .provider(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'رصيدك هو :',
                                    style: MobileTextThemes().largeLabel
                                        .copyWith(
                                          color: Palette.white,
                                          fontSize: 18,
                                        ),
                                  ),
                                  Text(
                                    (() {
                                      final balance =
                                          profileResults
                                              ?.results
                                              .student
                                              ?.balance;
                                      if (balance == null) return '0 نقطة';
                                      final balanceStr = balance.toString();
                                      if (balanceStr.contains('.')) {
                                        final parts = balanceStr.split('.');
                                        final before = parts[0];
                                        final after = parts[1]
                                            .padRight(2, '0')
                                            .substring(0, 2);
                                        return '$before.$after نقطة';
                                      } else {
                                        return '$balanceStr نقطة';
                                      }
                                    })(),
                                    style: MobileTextThemes().largeLabel
                                        .copyWith(
                                          fontSize: 18,
                                          color: Palette.stongPrimary,
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.router.push(NotificationsRoute());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(left: 32),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'حلمك يبدأ بنجاحي',
                      style: MobileTextThemes().largeLabel.copyWith(
                        color: Palette.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
          ;
        },
      ),
    );
  }
}

class DashboardShimmer extends StatelessWidget {
  const DashboardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white38,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 16,
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white38,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 12, color: Colors.white),
                            const SizedBox(height: 6),
                            Container(
                              height: 12,
                              width: 80,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 24),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white.withOpacity(0.5),
                  size: 35,
                ),
              ),
            ],
          ),
        ),

        Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white38,
          child: Container(
            width: double.infinity,
            height: 20,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
