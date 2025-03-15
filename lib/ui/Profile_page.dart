import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_new/bloc/profile_bloc/bloc/insta_bloc.dart';
import 'package:insta_new/repositery/model/insta_profile.dart';
import '../bloc/media_bloc/bloc/media_bloc.dart';
import '../repositery/model/insta_model.dart';

class InstagramProfilePage extends StatefulWidget {
  @override
  State<InstagramProfilePage> createState() => _InstagramProfilePageState();
}

class _InstagramProfilePageState extends State<InstagramProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<InstaBloc>().add(fetchInstaUser(message: ''));
    context.read<MediaBloc>().add(fetchMedia());
  }

  late InstaUser response;
  late InstaMedia response1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<InstaBloc, InstaState>(
        builder: (context, state) {
          if (state is InstaUserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is InstaUserError) {
            return const Center(child: Text('Error loading profile'));
          } else if (state is InstaUserLoaded) {
            response = BlocProvider.of<InstaBloc>(context)
                .instaUser; // Use the state directly
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        response.response?.body?.data?.user?.username ??
                            'Unknown User',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // Profile Header
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        // Profile Picture
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(response
                                  .response?.body?.data?.user?.profilePicUrl ??
                              ''),
                        ),
                        const SizedBox(width: 16),
                        // Stats
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildStatColumn('Posts', 10),
                              _buildStatColumn(
                                  'Followers',
                                  response.response!.body!.data!.user!
                                      .edgeFollowedBy!.count!
                                      .toInt()),
                              _buildStatColumn('Following', 0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Name and Bio
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          response.response?.body?.data?.user?.fullName ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          response.response?.body?.data?.user?.biography ?? '',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Media Grid
                  BlocBuilder<MediaBloc, MediaState>(
                    builder: (context, state) {
                      if (state is MediaBlocLoading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is MediaBlocError) {
                        return const Center(child: Text('Error loading media'));
                      } else if (state is MediaBlocLoaded) {
                        response1 =
                            BlocProvider.of<MediaBloc>(context).instaMedia;
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4,
                          ),
                          itemCount:
                              response1.response?.body?.items?.length ?? 0,
                          itemBuilder: (context, index) {
                            final media =
                                response1.response?.body?.items?[index];
                            return Image.network(
                              media?.imageVersions2?.candidates?.first.url ??
                                  '',
                              fit: BoxFit.cover,
                            );
                          },
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildStatColumn(String label, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
