import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/subject_widget.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/materials/bloc/material_bloc.dart';

@RoutePage()
class MaterialsScreen extends StatelessWidget {
  const MaterialsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MaterialDetailBloc>(
      create: (BuildContext context) => getIt<MaterialDetailBloc>(),
      child:const  MaterialsView(),
    );
  }
}

@RoutePage()
class MaterialsView extends StatefulWidget {
  const MaterialsView({super.key});

  @override
  State<MaterialsView> createState() => _MaterialsViewState();
}

class _MaterialsViewState extends State<MaterialsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Header
          Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetsManager.images.backgroundCard.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            context.router.maybePop();
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            alignment: AlignmentDirectional.centerStart,
                            child: AssetsManager.svg.arrowBack.svg(),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'المواد',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'هنا تجد المواد كلها للاختصاصك',
                  style: TextStyle(
                    color: Palette.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          // body
          GridView.builder(
            // Number of items
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 8,
            // Grid configuration:
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // two columns
              crossAxisSpacing: 12, // horizontal gap
              mainAxisSpacing: 12, // vertical gap
              childAspectRatio: 3 / 2, // width : height ratio
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  context.router.push(MaterialDetailRoute(id: ""));
                },
                child: SubjectWidget(title: "test", videosCount: 51, image: ""),
              );
            },
          ),
        ],
      ),
    );
  }
}
