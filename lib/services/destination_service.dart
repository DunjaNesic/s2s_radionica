import 'package:s2s_radionica/models/destination.dart';
import 'package:http/http.dart' as http;

class DestinationService {
final String api;

DestinationService({required this.api});

Future<void> fetchDestinations() async{

final response = await http.get(Uri.parse(api));
if(response.statusCode == 200){
  var json = response.body;
  print(json);
} else {
  print('greska');
  throw Exception('Neuspesno');
}


}



}