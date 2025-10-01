import 'package:http/http.dart' as http;
import 'dart:convert';

class Team {
  final int id;
  final String name;
  final String crestUrl;
  final String clubColors;

  Team({
    required this.id,
    required this.name,
    required this.crestUrl,
    required this.clubColors,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Unknown',
      crestUrl: json['crest'] ?? '',
      clubColors: json['clubColors'] ?? 'Tidak diketahui',
    );
  }

  static Future<List<Team>> connectToApi() async {
    const String apiUrl =
        'https://api.football-data.org/v4/competitions/PL/teams';
    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'X-Auth-Token':
              '498e19217a5b47ac88fc3bc1f1868b23', // Ganti dengan key Anda
        },
      );
      if (response.statusCode == 200) {
        final jsonObject = json.decode(response.body);
        final teams = jsonObject['teams'] as List;
        return teams.map((json) => Team.fromJson(json)).toList();
      } else {
        throw Exception('Gagal memuat data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
