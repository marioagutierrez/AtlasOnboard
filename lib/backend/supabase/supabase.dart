import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://fpvxrsabicqnqdswijck.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZwdnhyc2FiaWNxbnFkc3dpamNrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzEyODY5NjcsImV4cCI6MTk4Njg2Mjk2N30.k2AFxgwK4M6x5pXvzW1LcYrq1RYjv3ndO-wkImE6x08';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
