import 'package:flutter/material.dart';
import 'package:bolte/pages/VerificationScreen.dart';

class PhoneEntryScreen extends StatefulWidget {
  const PhoneEntryScreen({Key? key}) : super(key: key);

  @override
  State<PhoneEntryScreen> createState() => _PhoneEntryScreenState();
}

class _PhoneEntryScreenState extends State<PhoneEntryScreen> {
  final TextEditingController _phoneController =
      TextEditingController(text: '8167791934');
  String _selectedCountryCode = '+234';

  void _handlePhoneSubmit() {
    final phone = _phoneController.text.trim();
    if (phone.isEmpty || phone.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid phone number')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => VerificationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildPromoBanner(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Enter your number',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildPhoneInput(),
                  const SizedBox(height: 20),
                  _buildSignInButton(),
                  const SizedBox(height: 20),
                  _buildOrDivider(),
                  _buildSocialButtons(),
                  const SizedBox(height: 16),
                  _buildTermsText(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      width: double.infinity,
      height: 240,
      color: const Color(0xFF23AA49),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
            child: Image.asset(
              'assets/login/gift_animation.png',
              errorBuilder: (_, __, ___) => Icon(Icons.card_giftcard, color: Colors.white, size: 64),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'New to Bolt? Enjoy up to 20% off on',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            'your first ride-hailing trips!',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneInput() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Country code with flag
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              children: [
                _buildNigerianFlag(),
                const SizedBox(width: 8),
                Text(_selectedCountryCode,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade700),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                hintText: 'Phone number',
                suffixIcon: IconButton(
                  icon: Icon(Icons.cancel, color: Colors.grey.shade400),
                  onPressed: _phoneController.clear,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNigerianFlag() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: Container(
        width: 24,
        height: 16,
        color: const Color(0xFF008753),
        child: Row(
          children: [
            Container(width: 8, color: Colors.white),
            Container(width: 8, color: const Color(0xFF008753)),
            Container(width: 8, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInButton() {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: _handlePhoneSubmit,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF23AA49),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget _buildOrDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(child: Divider()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('OR',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 52,
          child: OutlinedButton.icon(
            onPressed: () {
              // TODO: Add Google sign-in logic
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.grey.shade300),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            icon: Image.asset(
              'assets/login/google_icon.png',
              width: 44,
              height: 44,
              errorBuilder: (_, __, ___) => Icon(Icons.g_mobiledata),
            ),
            label: const Text(
              'Sign in with Google',
              style: TextStyle(
                  color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: OutlinedButton.icon(
            onPressed: () {
              // TODO: Add Facebook sign-in logic
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.grey.shade300),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            icon: Image.asset(
              'assets/login/facebook_icon.png',
              width: 34,
              height: 34,
              errorBuilder: (_, __, ___) => Icon(Icons.facebook),
            ),
            label: const Text(
              'Sign in with Facebook',
              style: TextStyle(
                  color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTermsText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
          children: [
            const TextSpan(text: 'By signing up, you agree to our '),
            TextSpan(
              text: 'Terms & Conditions',
              style: TextStyle(
                  color: const Color(0xFF23AA49), fontWeight: FontWeight.w500),
            ),
            const TextSpan(text: ', acknowledge our '),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                  color: const Color(0xFF23AA49), fontWeight: FontWeight.w500),
            ),
            const TextSpan(
              text:
                  ', and confirm that you\'re over 18. We may send promotions related to our services – you can unsubscribe anytime in Communication Settings',
            ),
          ],
        ),
      ),
    );
  }
}
