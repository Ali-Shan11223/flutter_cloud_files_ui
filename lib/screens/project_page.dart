import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  final String projectName;
  const ProjectPage({super.key, required this.projectName});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            height: 200,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.projectName,
                      style: const TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Project',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.1)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.1)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_rounded,
                            size: 28,
                            color: Colors.white,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20),
            height: 110,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                buildAvatar('mia', 'Mia'),
                buildAvatar('mike', 'Mike'),
                buildAvatar('jess', 'Jess'),
                buildAvatar('brandon', 'Brandon'),
                buildAvatar('alie', 'Alie'),
                buildAvatar('adam', 'Adam'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildAvatar(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/$avatar.jpeg'),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
