import 'dart:async';


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:youtube_scrap_fe/models/videos/videos.dart';
import 'package:youtube_scrap_fe/repositories/youtube.dart';

part 'videos_event.dart';
part 'videos_state.dart';

@injectable
class VideosBloc extends Bloc<VideosEvent, VideosState> {
  YoutubeRepository repository = YoutubeAPI();
  VideosBloc() : super(VideosInitial()) {
    on<GetVideosFromAPI>((event, emit) async {
       try {
         emit(VideosLoading());
         List<Videos> videos = await repository.getVideos(event.query);
         emit(VideosLoaded(videos));
       } catch (e) {
         print(e);
         emit (VideosError());
       }
    });
  }
}
