part of 'videos_bloc.dart';

abstract class VideosEvent extends Equatable {
  const VideosEvent();
}

class GetVideosFromAPI extends VideosEvent {
  final String query;

  const GetVideosFromAPI(this.query);

  @override
  List<Object?> get props => [query];
}
