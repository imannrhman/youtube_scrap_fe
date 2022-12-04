import 'package:http/http.dart' as http;
import 'package:youtube_scrap_fe/models/videos/videos.dart';

abstract class YoutubeRepository {
   Future<List<Videos>> getVideos(String query);
}


class YoutubeAPI implements YoutubeRepository{

  String baseUrl = "127.0.0.1:8000";
  http.Client client = http.Client();

  @override
  Future<List<Videos>> getVideos(String query) async {
    try {
      http.Response response = await client.get(
          Uri.http(baseUrl, '/youtube/search_video', {'query' : query}));

      if (response.statusCode == 200) {
        List<Videos> videos = videosFromJson(response.body);
        return videos;
      } else {
        throw response.body;
      }
    } catch (e) {
      rethrow;
    }
  }

}