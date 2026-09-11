import 'package:flutter/material.dart';

import '../common/routes/app_routes.dart';

import '../components/app_navigation_bar/app_navigation_bar_factory.dart';

import '../components/search_bar/search_bar_factory.dart';
import '../components/search_bar/search_bar_viewmodel.dart';

import '../components/typography/typography_factory.dart';
import '../components/typography/typography_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(context),

                    const SizedBox(height: 16),

                    _buildSearchBar(context),

                    const SizedBox(height: 12),

                    _buildCategories(),

                    const SizedBox(height: 20),

                    _buildSectionHeader(),

                    const SizedBox(height: 16),

                    _buildCourses(),
                  ],
                ),
              ),
            ),

            _buildBottomNavigation(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.typographySample,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              child: Row(
                children: [
                  TypographyFactory.create(
                    text: 'Welcome, ',
                    type: TypographyType.title1Bold,
                  ),

                  TypographyFactory.create(
                    text: 'Fawais',
                    type: TypographyType.title1Bold,
                  ),
                ],
              ),
            ),
          ),
        ),

        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings_outlined,
            color: Color(0xFFCBD5E1),
          ),
        ),

        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Color(0xFFE2E8F0),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return SearchBarFactory.create(
      hintText: 'Search Here',
      type: SearchBarType.standard,
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.searchBarSample,
        );
      },
    );
  }

  Widget _buildCategories() {
    return Row(
      children: [
        Expanded(
          child: _categoryChip('UI/UX'),
        ),

        const SizedBox(width: 8),

        Expanded(
          flex: 2,
          child: _categoryChip('Graphics Design'),
        ),

        const SizedBox(width: 8),

        Expanded(
          child: _categoryChip('Figma'),
        ),
      ],
    );
  }

  Widget _categoryChip(String text) {
    return Container(
      height: 34,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE2E8F0),
        ),
      ),
      child: TypographyFactory.create(
        text: text,
        type: TypographyType.caption1Regular,
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TypographyFactory.create(
          text: 'Continue Watching',
          type: TypographyType.headlineMedium,
        ),

        TypographyFactory.create(
          text: 'See All',
          type: TypographyType.subheadRegular,
        ),
      ],
    );
  }

  Widget _buildCourses() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      crossAxisSpacing: 12,
      mainAxisSpacing: 18,

      childAspectRatio: 0.80,

      children: const [
        CourseCard(
          title: 'Graphic Design',
          author: 'By Syed Hasnain',
          progress: 0.70,
          icon: Icons.palette_outlined,
        ),

        CourseCard(
          title: 'Wireframing',
          author: 'By Shoaib Hassan',
          progress: 0.50,
          icon: Icons.phone_iphone,
        ),

        CourseCard(
          title: 'Website Design',
          author: 'By Dawar Hanif',
          progress: 0.65,
          icon: Icons.web,
        ),

        CourseCard(
          title: 'Video Editing',
          author: 'By Ammar Ijaz',
          progress: 0.60,
          icon: Icons.video_camera_back_outlined,
        ),
      ],
    );
  }

  Widget _buildBottomNavigation(BuildContext context) {
    return AppNavigationBarFactory.fourItems(
      currentIndex: currentNavigationIndex,

      onSelected: (index) {
        setState(() {
          currentNavigationIndex = index;
        });

        Navigator.pushNamed(
          context,
          AppRoutes.appNavigationBarSample,
        );
      },
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;

  final String author;

  final double progress;

  final IconData icon;

  const CourseCard({
    super.key,
    required this.title,
    required this.author,
    required this.progress,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
              color: const Color(0xFFE2E8F0),

              borderRadius: BorderRadius.circular(12),
            ),

            child: Icon(
              icon,
              size: 48,
              color: const Color(0xFF64748B),
            ),
          ),
        ),

        const SizedBox(height: 8),

        Row(
          children: [
            Expanded(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,

                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const Text(
              '★★★★★',
              style: TextStyle(
                fontSize: 9,
                color: Color(0xFF1746A2),
              ),
            ),
          ],
        ),

        const SizedBox(height: 3),

        Text(
          author,

          style: const TextStyle(
            fontSize: 9,
            color: Color(0xFF9CA3AF),
          ),
        ),

        const SizedBox(height: 6),

        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: progress,

                backgroundColor:
                const Color(0xFFE5E7EB),

                color: const Color(0xFF1746A2),

                minHeight: 3,

                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const SizedBox(width: 6),

            Text(
              '${(progress * 100).toInt()}% Done',

              style: const TextStyle(
                fontSize: 8,
                color: Color(0xFF9CA3AF),
              ),
            ),
          ],
        ),
      ],
    );
  }
}