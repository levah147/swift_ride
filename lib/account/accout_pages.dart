import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            _buildProfileSection(),
            
            // Account Update Banner
            _buildAccountUpdateBanner(),
            
            // Account Settings Section
            _buildSettingsSection(
              title: null,
              settings: [
                SettingItem(
                  icon: Icons.person_outline,
                  title: 'Personal info',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.shield_outlined,
                  title: 'Safety',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.security_outlined,
                  title: 'Login & security',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.pan_tool_outlined,
                  title: 'Privacy',
                  onTap: () {},
                ),
              ],
            ),
            
            // Saved Places Section
            _buildSettingsSection(
              title: 'Saved places',
              settings: [
                SettingItem(
                  icon: Icons.home_outlined,
                  title: 'Enter home location',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.work_outline,
                  title: 'Enter work location',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.add,
                  title: 'Add a place',
                  onTap: () {},
                ),
              ],
            ),
            
            // Preferences Section
            _buildSettingsSection(
              title: null,
              settings: [
                SettingItem(
                  icon: Icons.language_outlined,
                  title: 'Language',
                  subtitle: 'English - GB',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.notifications_none_outlined,
                  title: 'Communication preferences',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.calendar_today_outlined,
                  title: 'Calendars',
                  onTap: () {},
                ),
              ],
            ),
            
            // Account Actions Section
            _buildSettingsSection(
              title: null,
              settings: [
                SettingItem(
                  icon: Icons.logout_outlined,
                  title: 'Log out',
                  onTap: () {},
                ),
                SettingItem(
                  icon: Icons.delete_outline,
                  title: 'Delete account',
                  onTap: () {},
                ),
              ],
            ),
            
            // Bottom padding for better scrolling experience
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      padding: const EdgeInsets.only(top: 60, bottom: 20),
      alignment: Alignment.center,
      child: Column(
        children: [
          // Profile picture with add button
          Stack(
            children: [
              // Profile avatar
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              // Add button
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: const Color(0xFF23AA49),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          // Name
          const Text(
            'Levah Emmanuel',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 8),
          
          // Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Color(0xFF23AA49),
                size: 20,
              ),
              const SizedBox(width: 4),
              const Text(
                '5.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF23AA49),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                'Rating',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAccountUpdateBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xFF23AA49),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Let\'s update your account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Improve your app experience',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '4 new suggestions',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF23AA49),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsSection({required String? title, required List<SettingItem> settings}) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey[200]!),
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title if available
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
            ),
          
          // Settings List
          ...settings.map((setting) => _buildSettingItem(setting)).toList(),
        ],
      ),
    );
  }

  Widget _buildSettingItem(SettingItem setting) {
    return InkWell(
      onTap: setting.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          children: [
            Icon(
              setting.icon,
              color: Colors.grey[600],
              size: 24,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    setting.title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF333333),
                    ),
                  ),
                  if (setting.subtitle != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        setting.subtitle!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItem {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  SettingItem({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });
}

// Add this to your main.dart or routes:
// routes: {
//   '/account': (context) => const AccountScreen(),
// }