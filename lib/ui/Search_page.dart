import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.white70),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white54),
              border: InputBorder.none,
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(
              2,
              2,
            ),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1)
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Stack(
              children: [
                Image(
                  image: AssetImage('assets/picture1166.png'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                if (index % 5 == 0)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: ImageIcon(
                      AssetImage('assets/video.png'),
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      //   body: GridView.builder(
      //     padding: EdgeInsets.all(2),
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       crossAxisSpacing: 2,
      //       mainAxisSpacing: 2,
      //     ),
      //     itemCount: 30,
      //     itemBuilder: (context, index) {
      //       return Container(
      //         decoration: BoxDecoration(
      //           border: Border.all(color: Colors.black),
      //         ),
      //         child: Stack(
      //           children: [
      //             Image(
      //               image: AssetImage('assets/picture1175.png'),
      //               fit: BoxFit.cover,
      //               width: double.infinity,
      //               height: double.infinity,
      //             ),
      //             if (index % 3 == 0)
      //               Positioned(
      //                 top: 8,
      //                 right: 8,
      //                 child: ImageIcon(
      //                   AssetImage('assets/video.png'),
      //                   color: Colors.white,
      //                   size: 20,
      //                 ),
      //               ),
      //           ],
      //         ),
      //       );
      //     },
      //   ),
    );
  }
}
