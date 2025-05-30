class Part {
  final String title;
  final String teacher;
  bool isExpanded;
  final List<Chapter> chapters;
  Part({
    required this.title,
    required this.teacher,
    this.isExpanded = false,
    required this.chapters,
  });
}

class Chapter {
  final String title;
  bool isExpanded;
  final List<Lesson> lessons;
  Chapter({
    required this.title,
    this.isExpanded = false,
    required this.lessons,
  });
}

class Lesson {
  final String title;
  bool isExpanded;
  final List<Session> sessions;

  Lesson({
    required this.title,
    required this.sessions,
    this.isExpanded = false,
  });
}

class Session {
  String title;
  String duration;
  bool isWatched;
  Session({
    required this.duration,
    required this.isWatched,
    required this.title,
  });
}

final List<Part> parts = <Part>[
  Part(
    title: 'الميكانيك',
    teacher: 'أ. مهند بكر',
    chapters: <Chapter>[
      Chapter(
        title: 'النواسات',
        lessons: <Lesson>[
          Lesson(
            title: "النواس المرن",
            sessions: <Session>[
              Session(
                title: 'الحلقة الأولى',
                duration: '10:05',
                isWatched: false,
              ),
              Session(
                title: 'الحلقة الثانية',
                duration: '12:30',
                isWatched: true,
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
