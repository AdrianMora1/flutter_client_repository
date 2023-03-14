import 'package:flutter/material.dart';

import '../authentication/email_password/email_password.dart' as email;
import '../authentication/google_sign_in/google_sign_in.dart' as google;
import '../authentication/phone_sign_in/phone_sign_in.dart' as phone;
import '../backend_actions/user_presence/user_presence.dart' as user_presence;

import 'custom_colors.dart';
import 'fire_assets.dart';

List<Map<String, dynamic>> menu = [
  {
    'name': 'Authentication',
    'icon': FiresAssets.fireAuthentication,
    'screens': [
      {
        'name': 'Email Sign In',
        'icon': const Icon(
          Icons.email_rounded,
          color: Palette.firebaseNavy,
        ),
        //'widget': const email.
      }
    ]
  }
];
