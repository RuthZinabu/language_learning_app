import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // Light background
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A1D92), // Purple color
        elevation: 0,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/avatar.png',  
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello, Fillo',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'What would you like to learn today?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined),
                    color: Colors.white,
                    iconSize: 28,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Continue Course Section
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Continue Course',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4A1D92),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _CourseCard(
                      title: 'German Language',
                      progress: '15/20',
                      subtitle: '20 Classes • Easy',
                      color: const Color(0xFF5BA890),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _CourseCard(
                      title: 'Spanish Language',
                      progress: '10/30',
                      subtitle: '30 Classes • Easy',
                      color: const Color(0xFFE57373),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Featured Courses Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Featured Courses',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4A1D92),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Featured Cards
              _FeaturedCard(
                title: 'Grammar Quiz',
                subtitle: 'Business English',
                time: '2 hours',
                imagePath: 'assets/grammar_quiz.png',  
              ),
              const SizedBox(height: 16),
              _FeaturedCard(
                title: 'Online Phrases',
                subtitle: 'Business English',
                time: '2 hours',
                imagePath:
                    'assets/online_phrases.png',  
              ),
              const SizedBox(height: 16),
              _FeaturedCard(
                title: 'Set Weekly Goal!',
                subtitle: 'Set a weekly goal to stay motivated.',
                time: '',
                imagePath: 'assets/weekly_goal.png',  
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF4A1D92),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class _CourseCard extends StatelessWidget {
  final String title;
  final String progress;
  final String subtitle;
  final Color color;

  const _CourseCard({
    Key? key,
    required this.title,
    required this.progress,
    required this.subtitle,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            progress,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class _FeaturedCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String imagePath;

  const _FeaturedCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              imagePath,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




















// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF410FA3),
//         elevation: 0,
//         toolbarHeight: 120,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.notifications_outlined),
//             color: Colors.white,
//           ),
//         ],
//         title: const Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/images/img3.png'),
//               radius: 20,
//             ),
//             Text(
//               'Hello, Fillo',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'What would you like to learn today?',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.white70,
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Continue Course Section
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Continue Course',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text('See All'),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             const Row(
//               children: [
//                 Expanded(
//                   child: CourseProgressCard(
//                     title: 'German Language',
//                     progress: 0.75,
//                     classesInfo: '20 Classes • Easy',
//                     color: Color(0xFF5BA890),
//                     progressLabel: '15/20',
//                   ),
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: CourseProgressCard(
//                     title: 'Spanish Language',
//                     progress: 0.33,
//                     classesInfo: '30 Classes • Easy',
//                     color: const Color(0xFFE57373),
//                     progressLabel: '10/30',
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 32),

//             // Featured Courses Section
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Featured Courses',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text('See All'),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             // Featured Cards
//             FeaturedCourseCard(
//               image: 'assets/grammar_quiz.png',
//               title: 'Grammar Quiz',
//               subtitle: 'Business English',
//               timeInfo: '2 hours',
//             ),
//             const SizedBox(height: 16),
//             FeaturedCourseCard(
//               image: 'assets/online_phrases.png',
//               title: 'Online Phrases',
//               subtitle: 'Business English',
//               timeInfo: '2 hours',
//             ),
//             const SizedBox(height: 16),
//             FeaturedCourseCard(
//               image: 'assets/weekly_goal.png',
//               title: 'Set Weekly Goal!',
//               subtitle: 'Stay motivated!',
//               timeInfo: 'Set a goal now',
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: const Color(0xFF4A1D92),
//         unselectedItemColor: Colors.grey,
//         showSelectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CourseProgressCard extends StatelessWidget {
//   final String title;
//   final double progress;
//   final String classesInfo;
//   final Color color;
//   final String progressLabel;

//   const CourseProgressCard({
//     Key? key,
//     required this.title,
//     required this.progress,
//     required this.classesInfo,
//     required this.color,
//     required this.progressLabel,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               Expanded(
//                 child: LinearProgressIndicator(
//                   value: progress,
//                   color: color,
//                   backgroundColor: color.withOpacity(0.3),
//                 ),
//               ),
//               const SizedBox(width: 8),
//               Text(
//                 progressLabel,
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: color,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Text(
//             classesInfo,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FeaturedCourseCard extends StatelessWidget {
//   final String image;
//   final String title;
//   final String subtitle;
//   final String timeInfo;

//   const FeaturedCourseCard({
//     Key? key,
//     required this.image,
//     required this.title,
//     required this.subtitle,
//     required this.timeInfo,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.asset(
//               image,
//               height: 60,
//               width: 60,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   subtitle,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   timeInfo,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
