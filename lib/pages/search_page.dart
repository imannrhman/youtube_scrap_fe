import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:youtube_scrap_fe/blocs/videos/videos_bloc.dart';
import 'package:youtube_scrap_fe/injections/injections.dart';
import 'package:youtube_scrap_fe/models/videos/videos.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late VideosBloc videosBloc;
  Color primaryColor = const Color(0xFF2D3B70);
  Color greyColor = const Color(0xFFB6B6B6);
  String fontFamily = 'Nonito';

  late AnimationController controller;

  @override
  void initState() {
    videosBloc = getIt<VideosBloc>();
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 1, milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FB),
      body: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
              child: Text(
            'Youtube Search Scrapping',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: primaryColor,
              fontSize: 25,
              fontFamily: fontFamily,
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          _buildSearchWidget(),
          const SizedBox(
            height: 50,
          ),
          _buildListVideoWidget()
        ],
      ),
    );
  }

  Widget _buildListVideoWidget() {
    return BlocBuilder<VideosBloc, VideosState>(
      bloc: videosBloc,
      builder: (context, state) {
        if (state is VideosLoading) {
          return Column(
            children: [
              FadeTransition(
                opacity: Tween(
                  begin: 0.0,
                  end: 1.0,
                ).animate(controller
                  ..forward()
                  ..repeat(reverse: true)),
                child: Text(
                  "Scrapping Process",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                    fontFamily: fontFamily,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SpinKitFadingFour(
                color: primaryColor,
              ),
            ],
          );
        }

        if (state is VideosError) {
          return Text(
            "Maaf Terjadi Kesalahan :(",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: primaryColor,
              fontFamily: fontFamily,
              fontSize: 20,
            ),
          );
        }

        if (state is VideosLoaded) {
          return ListView.separated(
            itemCount: state.videos.length,
            shrinkWrap: true,
            primary: false,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              final video = state.videos[index];
              return _buildVideoItem(video);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
          );
        }
        return Container();
      },
    );
  }

  Widget _buildVideoItem(Videos video) {
    double width = ResponsiveWrapper.of(context).screenWidth;

    if (ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)) {
      if (ResponsiveWrapper.of(context).isTablet) {
        width = width * 0.6;
      } else {
        width = width * 0.7;
      }
    } else {
      if(ResponsiveWrapper.of(context).isLargerThan(DESKTOP)) {
        if (ResponsiveWrapper.of(context).isLargerThan('L')) {
          if(ResponsiveWrapper.of(context).isLargerThan('XL')) {
            width = width * 0.3;
          } else {
            width = width * 0.4;
          }
        } else {
          width = width * 0.45;
        }
      } else {
        width = width * 0.5;
      }
    }

    return ResponsiveRowColumn(
      rowPadding: const EdgeInsets.all(30),
      columnMainAxisSize: MainAxisSize.max,
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: Container(
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 14,
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(125, 159, 192, 0.01))
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: CachedNetworkImage(
                            imageUrl: video.thumbnail ?? '',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 14,
                                  offset: Offset(0, 10),
                                  color: Color.fromRGBO(125, 159, 192, 0.01))
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 4),
                          child: Text(
                            video.timeVideo ?? "-",
                            style: TextStyle(
                              fontSize: 12,
                              color: primaryColor,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          backgroundColor: primaryColor,
                          foregroundImage: CachedNetworkImageProvider(
                              video.channel?.channelImage ?? ''),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                video.title ?? "-",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  fontFamily: fontFamily,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    video.channel?.channelName ?? "-",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        fontFamily: fontFamily,
                                        color: Colors.black87),
                                  ),
                                  const SizedBox(width: 3,),
                                  if (video.verifiedBadge ?? false)
                                    Icon(Icons.check_circle_rounded, color: primaryColor, size: 13,)
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Expanded(
                              child: Text(
                                "${video.views ?? "0"} • ${video.timePublished ?? ""}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: greyColor),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Expanded(
                              child: video.extensions != null
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        video.extensions?.toUpperCase() ?? "",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSearchWidget() {
    double width = ResponsiveWrapper.of(context).screenWidth;

    if (ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)) {
      if (ResponsiveWrapper.of(context).isTablet) {
        width = width * 0.6;
      } else {
        width = width * 0.7;
      }
    } else {
      if(ResponsiveWrapper.of(context).isLargerThan(DESKTOP)) {
        if (ResponsiveWrapper.of(context).isLargerThan('L')) {
          if(ResponsiveWrapper.of(context).isLargerThan('XL')) {
            width = width * 0.3;
          } else {
            width = width * 0.4;
          }
        } else {
          width = width * 0.45;
        }
      } else {
        width = width * 0.5;
      }
    }


    return ResponsiveRowColumn(
      rowPadding: const EdgeInsets.all(30),
      columnMainAxisSize: MainAxisSize.max,
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: Container(
            width: width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 14,
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(125, 159, 192, 0.01))
              ],
            ),
            child: TextFormField(
              onFieldSubmitted: (val) {
                videosBloc.add(GetVideosFromAPI(val));
              },
              style: TextStyle(
                fontSize: 16,
                fontFamily: fontFamily,
              ),
              cursorColor: const Color(0xFF2D3B70),
              decoration: InputDecoration(
                focusColor: const Color(0xFF2D3B70),
                prefixIconColor: const Color(0xF0F0F0F0),
                hintText: 'Search..',
                hintStyle: TextStyle(
                  fontFamily: fontFamily,
                  color: greyColor,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xFF2D3B70),
                  size: 25,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xFF2D3B70),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
