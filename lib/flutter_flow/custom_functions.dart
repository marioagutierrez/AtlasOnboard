import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

String? countryFLag(String? countryName) {
  if (countryName == null) {
    return null;
  }

  final countryInfoJson = {
    'Argentina': {'code': 'AR'},
    'Belize': {'code': 'BZ'},
    'Bolivia': {'code': 'BO'},
    'Brazil': {'code': 'BR'},
    'Canada': {'code': 'CA'},
    'Chile': {'code': 'CL'},
    'Colombia': {'code': 'CO'},
    'Costa Rica': {'code': 'CR'},
    'Cuba': {'code': 'CU'},
    'Dominica': {'code': 'DM'},
    'Dominican Republic': {'code': 'DO'},
    'Ecuador': {'code': 'EC'},
    'El Salvador': {'code': 'SV'},
    'Grenada': {'code': 'GD'},
    'Guatemala': {'code': 'GT'},
    'Guyana': {'code': 'GY'},
    'Haiti': {'code': 'HT'},
    'Honduras': {'code': 'HN'},
    'Jamaica': {'code': 'JM'},
    'Mexico': {'code': 'MX'},
    'Nicaragua': {'code': 'NI'},
    'Panama': {'code': 'PA'},
    'Paraguay': {'code': 'PY'},
    'Peru': {'code': 'PE'},
    'Puerto Rico': {'code': 'PR'},
    'Saint Kitts and Nevis': {'code': 'KN'},
    'Saint Lucia': {'code': 'LC'},
    'Saint Vincent and the Grenadines': {'code': 'VC'},
    'Suriname': {'code': 'SR'},
    'Trinidad and Tobago': {'code': 'TT'},
    'United States': {'code': 'US'},
    'Uruguay': {'code': 'UY'},
    'Venezuela': {'code': 'VE'},
    'Antigua and Barbuda': {'code': 'AG'},
    'Bahamas': {'code': 'BS'},
    'Barbados': {'code': 'BB'},
    'Albania': {'code': 'AL'},
    'Andorra': {'code': 'AD'},
    'Austria': {'code': 'AT'},
    'Belarus': {'code': 'BY'},
    'Belgium': {'code': 'BE'},
    'Bosnia and Herzegovina': {'code': 'BA'},
    'Bulgaria': {'code': 'BG'},
    'Croatia': {'code': 'HR'},
    'Cyprus': {'code': 'CY'},
    'Czech Republic': {'code': 'CZ'},
    'Denmark': {'code': 'DK'},
    'Estonia': {'code': 'EE'},
    'Finland': {'code': 'FI'},
    'France': {'code': 'FR'},
    'Germany': {'code': 'DE'},
    'Greece': {'code': 'GR'},
    'Hungary': {'code': 'HU'},
    'Iceland': {'code': 'IS'},
    'Ireland': {'code': 'IE'},
    'Italy': {'code': 'IT'},
    'Kosovo': {'code': 'XK'},
    'Latvia': {'code': 'LV'},
    'Liechtenstein': {'code': 'LI'},
    'Lithuania': {'code': 'LT'},
    'Luxembourg': {'code': 'LU'},
    'Malta': {'code': 'MT'},
    'Moldova': {'code': 'MD'},
    'Monaco': {'code': 'MC'},
    'Montenegro': {'code': 'ME'},
    'Netherlands': {'code': 'NL'},
    'North Macedonia': {'code': 'MK'},
    'Norway': {'code': 'NO'},
    'Poland': {'code': 'PL'},
    'Portugal': {'code': 'PT'},
    'Romania': {'code': 'RO'},
    'Russia': {'code': 'RU'},
    'San Marino': {'code': 'SM'},
    'Serbia': {'code': 'RS'},
    'Slovakia': {'code': 'SK'},
    'Slovenia': {'code': 'SI'},
    'Spain': {'code': 'ES'},
    'Sweden': {'code': 'SE'},
    'Switzerland': {'code': 'CH'},
    'Turkey': {'code': 'TR'},
    'Ukraine': {'code': 'UA'},
    'United Kingdom': {'code': 'GB'},
    'Vatican City': {'code': 'VA'},
  };

  final countryCode = countryInfoJson[countryName]?['code'];

  if (countryCode != null) {
    final countryCodeInLowerCase = countryCode.toLowerCase();
    return 'https://flagcdn.com/h80/$countryCodeInLowerCase.png';
  }

  return null;
}

List<String> countryName() {
  return [
    // América del Norte
    'Canada',
    'United States',
    'Mexico',
    // América Central y el Caribe
    'Belize',
    'Costa Rica',
    'El Salvador',
    'Guatemala',
    'Honduras',
    'Nicaragua',
    'Panama',
    'Antigua and Barbuda',
    'Bahamas',
    'Barbados',
    'Cuba',
    'Dominica',
    'Dominican Republic',
    'Grenada',
    'Haiti',
    'Jamaica',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Trinidad and Tobago',
    'Puerto Rico', // es un territorio no incorporado de los Estados Unidos
    // América del Sur
    'Argentina',
    'Bolivia',
    'Brazil',
    'Chile',
    'Colombia',
    'Ecuador',
    'Guyana',
    'Paraguay',
    'Peru',
    'Suriname',
    'Uruguay',
    'Venezuela',
    // Europa
    'Albania',
    'Andorra',
    'Austria',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'North Macedonia',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City',
  ];
}

String? dialCountry(String? countryName) {
  if (countryName == null) {
    return null;
  }

  final countryInfoJson = {
    'Argentina': {'code': '+54'},
    'Belize': {'code': '+501'},
    'Costa Rica': {'code': '+506'},
    'El Salvador': {'code': '+503'},
    'Guatemala': {'code': '+502'},
    'Honduras': {'code': '+504'},
    'Mexico': {'code': '+52'},
    'Nicaragua': {'code': '+505'},
    'Panama': {'code': '+507'},
    'Dominican Republic': {'code': '+1'},
    'Cuba': {'code': '+53'},
    'Puerto Rico': {'code': '+1'},
    'Jamaica': {'code': '+1'},
    'Haiti': {'code': '+509'},
    'Trinidad and Tobago': {'code': '+1'},
    'Barbados': {'code': '+1'},
    'Bahamas': {'code': '+1'},
    'Grenada': {'code': '+1'},
    'Dominica': {'code': '+1'},
    'Saint Lucia': {'code': '+1'},
    'Saint Kitts and Nevis': {'code': '+1'},
    'Antigua and Barbuda': {'code': '+1'},
    'Saint Vincent and the Grenadines': {'code': '+1'},
    // América del Norte
    'Canada': {'code': '+1'},
    'United States': {'code': '+1'},
    'Bolivia': {'code': '+591'},
    'Brazil': {'code': '+55'},
    'Chile': {'code': '+56'},
    'Colombia': {'code': '+57'},
    'Ecuador': {'code': '+593'},
    'Guyana': {'code': '+592'},
    'Paraguay': {'code': '+595'},
    'Peru': {'code': '+51'},
    'Suriname': {'code': '+597'},
    'Uruguay': {'code': '+598'},
    'Venezuela': {'code': '+58'},
    // Europa
    'Albania': {'code': '+355'},
    'Andorra': {'code': '+376'},
    'Austria': {'code': '+43'},
    'Belarus': {'code': '+375'},
    'Belgium': {'code': '+32'},
    'Bosnia and Herzegovina': {'code': '+387'},
    'Bulgaria': {'code': '+359'},
    'Croatia': {'code': '+385'},
    'Cyprus': {'code': '+357'},
    'Czech Republic': {'code': '+420'},
    'Denmark': {'code': '+45'},
    'Estonia': {'code': '+372'},
    'Finland': {'code': '+358'},
    'France': {'code': '+33'},
    'Germany': {'code': '+49'},
    'Greece': {'code': '+30'},
    'Hungary': {'code': '+36'},
    'Iceland': {'code': '+354'},
    'Ireland': {'code': '+353'},
    'Italy': {'code': '+39'},
    'Kosovo': {'code': '+383'},
    'Latvia': {'code': '+371'},
    'Liechtenstein': {'code': '+423'},
    'Lithuania': {'code': '+370'},
    'Luxembourg': {'code': '+352'},
    'Malta': {'code': '+356'},
    'Moldova': {'code': '+373'},
    'Monaco': {'code': '+377'},
    'Montenegro': {'code': '+382'},
    'Netherlands': {'code': '+31'},
    'North Macedonia': {'code': '+389'},
    'Norway': {'code': '+47'},
    'Poland': {'code': '+48'},
    'Portugal': {'code': '+351'},
    'Romania': {'code': '+40'},
    'Russia': {'code': '+7'},
    'San Marino': {'code': '+378'},
    'Serbia': {'code': '+381'},
    'Slovakia': {'code': '+421'},
    'Slovenia': {'code': '+386'},
    'Spain': {'code': '+34'},
    'Sweden': {'code': '+46'},
    'Switzerland': {'code': '+41'},
    'Turkey': {'code': '+90'},
    'Ukraine': {'code': '+380'},
    'United Kingdom': {'code': '+44'},
    'Vatican City': {'code': '+379'},
  };

  final countryCode = countryInfoJson[countryName]?['code'];

  if (countryCode != null) {
    return countryCode;
  }

  return null;
}

List<String> typeOfBusiness() {
  return [
    // Food Industry
    'Restaurant',
    'Cafe',
    'Bar',
    'Bakery',
    'Catering service',
    // Retail
    'Clothing store',
    'Supermarket',
    'Bookstore',
    'Home appliance store',
    'Pharmacy',
    // Services
    'Travel agency',
    'Gym',
    'Spa',
    'Beauty salon',
    'Laundry service',
    // Technology
    'Electronics store',
    'Software development',
    'IT consulting',
    'E-commerce',
    'Digital marketing agency',
    // Construction
    'Construction company',
    'Real estate agency',
    'Architecture firm',
    'Engineering firm',
    'Home improvement service',
    // Health
    'Clinic',
    'Pharmacy',
    'Dental office',
    'Physical therapy',
    'Psychology clinic',
    // Education
    'Daycare',
    'School',
    'Language academy',
    'Private tutoring',
    'Online education',
    // Others
    'Agriculture',
    'Livestock',
    'Transportation',
    'Hospitality',
    'Music production',
  ];
}

List<String> educationLevel() {
  return [
    // Preschool
    'High school',
    'Vocational school',
    'College',
    'Postgraduate education',
    'Doctorate degree',
  ];
}

double? sumVariable(
  double? var1,
  double? var2,
  double? var3,
  double? var4,
  double? var5,
) {
  // sum between variables
  double? sum = 0;
  if (var1 != null) {
    sum += var1;
  }
  if (var2 != null) {
    sum += var2;
  }
  if (var3 != null) {
    sum += var3;
  }
  if (var4 != null) {
    sum += var4;
  }
  if (var5 != null) {
    sum += var5;
  }
  return sum;
}

String correctWriting(String arg) {
  // function that changes the composure of the text the first letter uppercase the other lowercase
  return arg[0].toUpperCase() + arg.substring(1).toLowerCase();
}

FFUploadedFile? pDFbytesFunction(FFUploadedFile? apiResponse) {
  // Create function to handle PDF bytes for PDFView
  if (apiResponse != null && apiResponse.bytes != null) {
    return apiResponse;
  } else {
    return null;
  }
}

double? onboardingProcess(
  double? currentValue,
  double? addValue,
) {
  // plus and add value
  if (currentValue == null || addValue == null) {
    return null;
  }
  return currentValue + addValue;
}

List<String> decodeApiResponse(List<String> apiResponse) {
  // decode base64 api response
  List<String> decodedResponse = [];

  for (String response in apiResponse) {
    String decoded = utf8.decode(base64.decode(response));
    decodedResponse.add(decoded);
  }

  return decodedResponse;
}
