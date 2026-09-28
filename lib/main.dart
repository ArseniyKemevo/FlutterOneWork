import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaMockupsApp());
}

class FigmaMockupsApp extends StatelessWidget {
  const FigmaMockupsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа: Макеты Figma',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF389799)),
        useMaterial3: true,
      ),
      home: const RootNavigationScreen(),
    );
  }
}

class RootNavigationScreen extends StatefulWidget {
  const RootNavigationScreen({super.key});

  @override
  State<RootNavigationScreen> createState() => _RootNavigationScreenState();
}

class _RootNavigationScreenState extends State<RootNavigationScreen> {
  int _selectedPageIndex = 0;

  final List<Widget> _pages = const [
    SimpleMockupsRootPage(),
    ComplexMockupsRootPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedPageIndex,
        onDestinationSelected: (idx) => setState(() => _selectedPageIndex = idx),
        indicatorColor: const Color(0xFFE2F4F3),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.looks_one_outlined),
            selectedIcon: Icon(Icons.looks_one, color: Color(0xFF389799)),
            label: '1. Легкие макеты',
          ),
          NavigationDestination(
            icon: Icon(Icons.looks_two_outlined),
            selectedIcon: Icon(Icons.looks_two, color: Color(0xFF4F58FD)),
            label: '2. Сложные макеты',
          ),
        ],
      ),
    );
  }
}
class SimpleMockupsRootPage extends StatelessWidget {
  const SimpleMockupsRootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Легкие макеты',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          bottom: const TabBar(
            labelColor: Color(0xFF389799),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xFF389799),
            indicatorWeight: 3,
            tabs: [
              Tab(text: 'Макет 1: Relax'),
              Tab(text: 'Макет 2: Meditate'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SimpleMockup1Relax(),
            SimpleMockup2Meditate(),
          ],
        ),
      ),
    );
  }
}

class SimpleMockup1Relax extends StatelessWidget {
  const SimpleMockup1Relax({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                gradient: const LinearGradient(
                  colors: [Color(0xFFF7DE89), Color(0xFFEDC362)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFF455A64).withOpacity(0.3),
                        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(22)),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.nature_people_rounded, size: 84, color: Color(0xFF263238)),
                      SizedBox(height: 8),
                      Text(
                        'Mindfulness & Peace',
                        style: TextStyle(
                          color: Color(0xFF37474F),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Peter Mach',
              style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),
            const Text(
              'Mind Deep Relax',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 10),
            const Text(
              'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.',
              style: TextStyle(color: Color(0xFF555555), fontSize: 13.5, height: 1.45),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 26),
                label: const Text(
                  'Play Next Session',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF389799),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  elevation: 0,
                ),
              ),
            ),
            const SizedBox(height: 24),
            _buildTrackItem(
              iconColor: const Color(0xFF4C7BF4),
              title: 'Sweet Memories',
              subtitle: 'December 29 Pre-Launch',
            ),
            const Divider(color: Color(0xFFEEEEEE), height: 20),
            _buildTrackItem(
              iconColor: const Color(0xFF389799),
              title: 'A Day Dream',
              subtitle: 'December 29 Pre-Launch',
            ),
            const Divider(color: Color(0xFFEEEEEE), height: 20),
            _buildTrackItem(
              iconColor: const Color(0xFFE5903C),
              title: 'Mind Explore',
              subtitle: 'December 29 Pre-Launch',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTrackItem({required Color iconColor, required String title, required String subtitle}) {
    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: iconColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 26),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              const SizedBox(height: 3),
              Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz, color: Color(0xFFB0B0B0)),
          onPressed: () {},
        ),
      ],
    );
  }
}

class SimpleMockup2Meditate extends StatelessWidget {
  const SimpleMockup2Meditate({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = ['All', 'Bible In a Year', 'Dailies', 'Minutes', 'November'];

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Meditate',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: Colors.black87),
                ),
                IconButton(
                  icon: const Icon(Icons.search, size: 26, color: Colors.black87),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 36,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final isSelected = index == 0;
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? const Color(0xFF389799) : const Color(0xFFE2F4F3),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                      child: Text(
                        filters[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : const Color(0xFF389799),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: const Color(0xFFF0F0F0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
                      gradient: LinearGradient(
                        colors: [Color(0xFFF9DC78), Color(0xFFF1C950)],
                      ),
                    ),
                    child: const Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 110,
                          child: Icon(Icons.wb_sunny_rounded, size: 76, color: Color(0xFFE96E5A)),
                        ),
                        Positioned(
                          right: 120,
                          child: Icon(Icons.nightlight_round, size: 68, color: Color(0xFF2C3E50)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'A Song of Moon',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text('Start with the basics', style: TextStyle(color: Colors.grey, fontSize: 13)),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 16, color: Colors.black87),
                                SizedBox(width: 6),
                                Text('9 Sessions', style: TextStyle(fontSize: 12, color: Colors.black87)),
                              ],
                            ),
                            Text('Start >', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              childAspectRatio: 0.84,
              children: const [
                _MeditateGridCard(
                  bgColor: Color(0xFFF3A056),
                  icon: Icons.cloud_queue_rounded,
                  title: 'The Sleep Hour',
                  author: 'Ashna Mukherjee',
                  infoText: '3 Sessions',
                ),
                _MeditateGridCard(
                  bgColor: Color(0xFFF2D157),
                  icon: Icons.bedtime_outlined,
                  title: 'Easy on the Mission',
                  author: 'Peter Mach',
                  infoText: '5 minutes',
                ),
                _MeditateGridCard(
                  bgColor: Color(0xFF4C7BF4),
                  icon: Icons.wb_sunny_outlined,
                  title: 'Relax with Me',
                  author: 'Amanda James',
                  infoText: '3 Sessions',
                ),
                _MeditateGridCard(
                  bgColor: Color(0xFF389799),
                  icon: Icons.flare_rounded,
                  title: 'Sun and Energy',
                  author: 'Micheal Hiu',
                  infoText: '5 minutes',
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _MeditateGridCard extends StatelessWidget {
  final Color bgColor;
  final IconData icon;
  final String title;
  final String author;
  final String infoText;

  const _MeditateGridCard({
    required this.bgColor,
    required this.icon,
    required this.title,
    required this.author,
    required this.infoText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFF0F0F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            ),
            child: Icon(icon, size: 40, color: Colors.white.withOpacity(0.9)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                Text(
                  author,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.favorite_border, size: 13, color: Colors.black87),
                        const SizedBox(width: 3),
                        Text(infoText, style: const TextStyle(fontSize: 10)),
                      ],
                    ),
                    const Text('Start >', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ComplexMockupsRootPage extends StatelessWidget {
  const ComplexMockupsRootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Сложные макеты',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          bottom: const TabBar(
            labelColor: Color(0xFF4F58FD),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xFF4F58FD),
            indicatorWeight: 3,
            tabs: [
              Tab(text: 'Макет 1: 3D Design'),
              Tab(text: 'Макет 2: Organizer'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ComplexMockup1Design(),
            ComplexMockup2Organizer(),
          ],
        ),
      ),
    );
  }
}

class ComplexMockup1Design extends StatelessWidget {
  const ComplexMockup1Design({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F3FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.arrow_back_ios_new, size: 16, color: Color(0xFF4F58FD)),
                ),
                const SizedBox(width: 16),
                const Text(
                  '3D Design Basic',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                gradient: const RadialGradient(
                  center: Alignment(0.2, -0.3),
                  radius: 1.2,
                  colors: [Color(0xFF2962FF), Color(0xFF1A237E), Color(0xFF0D47A1)],
                ),
              ),
              child: const Center(
                child: Icon(Icons.view_in_ar_rounded, size: 80, color: Color(0xFF82B1FF)),
              ),
            ),
            const SizedBox(height: 16),
            // Бейджи (4.569 | 4.9 | Best Seller)
            Row(
              children: [
                _buildBadge(icon: Icons.videocam_outlined, label: '4.569'),
                const SizedBox(width: 10),
                _buildBadge(icon: Icons.star_rounded, label: '4.9'),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4F58FD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Best Seller',
                    style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Text(
              '3D Design Basic',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            const Text(
              'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
              style: TextStyle(color: Color(0xFF5A5A5A), fontSize: 14, height: 1.45),
            ),
            const SizedBox(height: 22),
            // Строка уроков
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '24 Lessons (20 hours)',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Color(0xFF4F58FD), fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFEDEDED)),
              ),
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF7C4DFF), Color(0xFF448AFF)],
                      ),
                    ),
                    child: const Icon(Icons.play_circle_outline, color: Colors.white, size: 28),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Introduction to 3D', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                        SizedBox(height: 4),
                        Text('20 mins', style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                  ),
                  const Icon(Icons.check_circle_outline, color: Color(0xFF4F58FD), size: 24),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4F58FD),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                  elevation: 0,
                ),
                child: const Text(
                  'Enroll - \$24.99',
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge({required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: const Color(0xFF4F58FD)),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(color: Color(0xFF4F58FD), fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class ComplexMockup2Organizer extends StatefulWidget {
  const ComplexMockup2Organizer({super.key});

  @override
  State<ComplexMockup2Organizer> createState() => _ComplexMockup2OrganizerState();
}

class _ComplexMockup2OrganizerState extends State<ComplexMockup2Organizer> {
  int _activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF4F58FD)),
                  onPressed: () {},
                ),
                const Text(
                  'Organizer',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F3FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.more_vert, color: Color(0xFF4F58FD), size: 20),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const CircleAvatar(
              radius: 54,
              backgroundColor: Color(0xFFE0E0E0),
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=200'),
            ),
            const SizedBox(height: 14),
            const Text(
              'Albert Flores',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatColumn('2.368', 'Followers'),
                Container(width: 1, height: 32, color: const Color(0xFFEEEEEE)),
                _buildStatColumn('346', 'Following'),
                Container(width: 1, height: 32, color: const Color(0xFFEEEEEE)),
                _buildStatColumn('13', 'Events'),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(color: Color(0xFFF0F0F0)),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.person_add_alt_1_outlined, color: Colors.white, size: 18),
                      label: const Text('Follow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5669FF),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                        elevation: 0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline, color: Color(0xFF5669FF), size: 18),
                      label: const Text('Messages', style: TextStyle(color: Color(0xFF5669FF), fontWeight: FontWeight.w600)),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF5669FF)),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            const Divider(color: Color(0xFFF0F0F0)),
            const SizedBox(height: 14),
            // Вкладки: About / Events / Reviews
            Row(
              children: [
                _buildPillTab(title: 'About', index: 0),
                const SizedBox(width: 10),
                _buildPillTab(title: 'Events', index: 1),
                const SizedBox(width: 10),
                _buildPillTab(title: 'Reviews', index: 2),
              ],
            ),
            const SizedBox(height: 20),
            // Блок About
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                _activeTab == 0 ? 'About' : (_activeTab == 1 ? 'Events' : 'Reviews'),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Color(0xFF555555), fontSize: 13.5, height: 1.55),
                children: [
                  TextSpan(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  ),
                  TextSpan(
                    text: 'Read more...',
                    style: TextStyle(color: Color(0xFF5669FF), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  Widget _buildPillTab({required String title, required int index}) {
    final isSelected = _activeTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => _activeTab = index),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF5669FF) : Colors.white,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: const Color(0xFF5669FF)),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFF5669FF),
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ),
    );
  }
}