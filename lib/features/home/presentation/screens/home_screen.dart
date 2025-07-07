import 'package:flutter/material.dart';
import 'package:student_app/features/home/bloc/home_bloc.dart';
import 'package:student_app/features/home/data/model/home_model.dart';
import 'package:student_app/features/home/presentation/widgets/Teachers_widget.dart';
import 'package:student_app/features/home/presentation/widgets/card_widget.dart';
import 'package:student_app/features/home/presentation/widgets/news_widget.dart';
import 'package:student_app/features/home/presentation/widgets/subjects_widget.dart';
import 'package:student_app/features/home/presentation/widgets/views_widget.dart';
import '../../../../core/core.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create:
          (BuildContext context) =>
              getIt<HomeBloc>()..add(const HomeEvent.getHome()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeBloc homeBloc;
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.getHome());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: BlocConsumer<HomeBloc, HomeState>(
          bloc: context.read<HomeBloc>(),
          listener: (BuildContext context, HomeState state) {},
          builder: (BuildContext context, HomeState state) {
            return state.maybeWhen(
              successHome: (HomeResults? homeResults) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const CardWidget(),
                      const SizedBox(height: 16),
                      const ViewsWidget(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'آخر الأخبار :',
                              style: Theme.of(
                                context,
                              ).textTheme.headlineSmall!.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '(8)',
                              style: Theme.of(
                                context,
                              ).textTheme.headlineSmall!.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const NewsWidget(),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'المواد :',
                              style: context.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context.router.push(MaterialsRoute());
                              },
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      SubjectsWidget(list: homeResults?.materials ?? []),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'المدرسين :',
                              style: context.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context.router.push(const TeachersRoute());
                              },
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TeachersWidget(teachers: homeResults?.teachers),
                      const SizedBox(height: 14),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'المكثفات :',
                              style: context.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Icon(Icons.arrow_forward_ios, size: 18),
                          ],
                        ),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ),
                );
              },
              loadingHome: () {
                return const GlobalLoading();
              },
              failedHome: (GeneralException? generalException) {
                return Center(
                  child: GlobalErrorWidget(generalException: generalException,
                  onPressed: () {
                     context.read<HomeBloc>().add(const HomeEvent.getHome());
                  },),
                );
              },
              orElse: () {
                return Container();
              },
            );
          },
        ),
      ),
    );
  }
}
