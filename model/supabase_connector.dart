import 'package:my_first_project/model/model_constants.dart';
import 'package:supabase/supabase.dart';

class SupabaseHelper {
  //singleton
  SupabaseHelper._();

  static final SupabaseHelper getInstance = SupabaseHelper._();

  static late final SupabaseClient supabase;

   Future<void> supabaseConnector() async {
    supabase = SupabaseClient(kprojectURL, kAPIKey);
  }

  // query data
   Future<List<Map<String, dynamic>>> fetchData() async {
    final List<Map<String, dynamic>> data = await supabase
        .from('Organizer')
        .select();
    return data;
  }
}
