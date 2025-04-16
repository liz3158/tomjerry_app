import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:lottie/lottie.dart';
import 'dart:async';

void main() {
  runApp(CartoonGalleryApp());
}

class CartoonGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tom & Jerry Gallery',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => CartoonListPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        // Makes the child fill the whole screen
        child: Lottie.asset(
          'assets/images/introtom.json',
          fit: BoxFit.cover, // Fill the screen and maintain aspect ratio
        ),
      ),
    );
  }
}

class CartoonListPage extends StatefulWidget {
  @override
  _CartoonListPageState createState() => _CartoonListPageState();
}

class _CartoonListPageState extends State<CartoonListPage> {
  List<Map<String, String>> cartoons = [
    {
      'name': 'Tom',
      'image': 'assets/images/Tom.png',
      'sound': 'sounds/Tomlaugh.mp3',
      'description':
          'Tom personality has changed remarkably over the years, especially after the first episodes. For example, in his debut, he was quadrupedal and had normal cat intelligence. However, over the years (since the episode Dog Trouble), he has become almost completely bipedal and has superhuman level of intelligence. As a slapstick cartoon character, Tom has a superhuman level of elasticity. Tom is usually defeated (or very rarely, killed) with Jerry getting the best of him in the end, although there are some stories where he outwits, defeats and gets the best of Jerry.',
      'video': 'assets/videos/Tom.mp4',
    },
    {
      'name': 'Jerry',
      'image': 'assets/images/Jerry.png',
      'sound': 'sounds/Jerry_whistle.mp3',
      'description':
          'Jerry is usually described as an excited, carefree, clever, beautiful and cute mouse, he in several episodes is shown to be cold as he seeks to have fun no matter who he harms, which to Tom anger his sense of fun is sadistic, but he also has other targets although Tom is the main one among them, but this last characteristic seems to have a limit as in the episode "The Lonesome Mouse" he regrets having set up Tom to be kicked out of the house. Also Jerry gets Tom in trouble by the humans and Spike Bulldog, who sometimes dont see Jerry because he’s small. Sometimes when humans see Jerry, they freak out and call out to Tom to get rid of Jerry. Other times, the humans see Jerry and say "Oh. Sorry, Jerry. I didn’t see you there."',
      'video': 'assets/videos/Jerry.mp4',
    },
    {
      'name': 'Spike',
      'image': 'assets/images/Spike.png',
      'sound': 'sounds/SpikeTrysippinlittlewater.mp3',
      'description':
          'Spike is a strong bulldog in *Tom and Jerry*. At first, he was very mean and chased both Tom and Jerry. Later, he became more of a silly, tough dog who always gets tricked into helping Jerry. Sometimes, Spike thinks Tom is being bad — even when it’s Jerry causing the trouble! Spike has a puppy named **Tyke**, and he really loves him. When Tyke is around, Spike is nicer, but he still gets mad at Tom if Tyke gets hurt — even if it’s not Tom’s fault!--- Let me know if you like the same for **other characters** too!',
      'video': 'assets/videos/Spike.mp4',
    },
    {
      'name': 'Tyke',
      'image': 'assets/images/Tyke.png',
      'sound': 'sounds/TykeHic-cups.mp3',
      'description':
          'Tyke is Spike cute little puppy in Tom and Jerry. He is small, sweet, and loves his dad very much. Tyke does not talk, but he is always happy and enjoys spending time with Spike. Spike is very protective of Tyke. If someone bothers Tyke — even by accident — Spike gets really mad, especially at Tom. Sometimes, Jerry uses this to trick Spike into blaming Tom, even when Tom did nothing wrong. Tyke is calm and kind, and everyone loves how adorable he is.',
      'video': 'assets/videos/Tyke.mp4',
    },
    {
      'name': 'Uncle Pecos',
      'image': 'assets/images/pecos.png',
      'sound': 'sounds/Pecos_so_long.mp3',
      'description':
          'Uncle Pecos is Jerry cow-boyish uncle who appeared in the Tom and Jerry short "Pecos Pest", who wanted to stay with Jerry to visit. He is known to be always singing with a guitar, with a black cowboy hat that covers his eyes. He tries to get one of Tom whiskers every time one of his guitar strings snap, because he plucks one whisker off of his face to replace it, and, at one point, took one of Tom claws to use as a guitar pick.',
      'video': 'assets/videos/Pecos.mp4',
    },
    {
      'name': 'Tuffy',
      'image': 'assets/images/Tuffy.jpg',
      'sound': 'sounds/Tuffybonjour.mp3',
      'description':
          'Nibbles Mouse, also more commonly known as Tuffy, is a character from the Tom and Jerry franchise. He is a little gray, diaper-wearing orphan mouse who happens to be Jerry nephew.He tends to be somewhat naïve, often getting into trouble or leading Tom into humorous situations without realizing the consequences. Nibbles has a loving and caring nature, particularly towards Jerry, whom he often looks up to. Their relationship adds a layer of warmth to their interactions. He displays a playful demeanor, often engaging in cute antics that highlight his child-like personality.',
      'video': 'assets/videos/Tuffy.mp4',
    },
    {
      'name': 'Quakers',
      'image': 'assets/images/Quackers.png',
      'sound': 'sounds/Duckling.mp3',
      'description':
          'Quacker is a small yellow duckling with a soft voice and a kind heart. He is always polite and friendly to everyone. Quacker loves swimming and playing, but sometimes he gets scared easily. Jerry often helps Quacker when he is in trouble, and they become good friends. Tom sometimes tries to catch him, but Quacker is very clever and always finds a way to escape. Quacker is cute, gentle, and fun to watch.',
      'video': 'assets/videos/Quakers.mp4',
    },
    {
      'name': 'Cousin Muscles',
      'image': 'assets/images/CousinMuscles.png',
      'sound': 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
      'description':
          'Muscle Mouse is Jerry super strong cousin. He has big muscles and wears a green cap. When Jerry is in trouble, Muscle Mouse comes to help and protects him from Tom. He is not afraid of anything, and he can lift heavy things with no problem. Even Tom is scared of him. Muscle Mouse always stands up for his family and friends. He is brave, tough, and cool!',
      'video': 'assets/videos/CousinMuscles.mp4',
    },
    {
      'name': 'Cousin George',
      'image': 'assets/images/CousinGeorge.png',
      'sound': 'sounds/Timid_cousin.mp3',
      'description':
          'George is Tom cousin. George looks identical to Tom except that he can talk and that he, rather ironically, has a fear of mice. George only appearance so far was in the 1957 short, Timid Tabby. Jerry couldn not tell the difference between him and Tom because of their similarities. This makes the two cousins win easily. He first appears when Tom opens the door to his house and finds George standing on a chair, afraid if there is a mouse around. He later finds Jerry when he takes a jellybean that Jerry was holding. ',
      'video': 'assets/videos/Timid_cousin.mp4',
    },
    {
      'name': 'Toodles Galore',
      'image': 'assets/images/ToodlesGalore.png',
      'sound': 'sounds/ToodlesGalore.mp3',
      'description':
          'Toodles Galore is a beautiful white cat who sometimes appears in Tom and Jerry. She has long eyelashes, a pretty bow, and walks very gracefully. Tom really likes Toodles and always tries to impress her. Sometimes he even forgets about chasing Jerry because he wants to spend time with her. Toodles is calm, quiet, and kind. She does not talk much, but she is one of the sweetest characters in the show.',
      'video': 'assets/videos/ToodlesGalore.mp4',
    },
    // Add more cartoon characters here
  ];

  List<Map<String, String>> favoriteCartoons = [];
  List<Map<String, String>> filteredCartoons = [];
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    filteredCartoons = cartoons;
  }

  void searchCartoon(String query) {
    final results =
        cartoons
            .where(
              (cartoon) =>
                  cartoon['name']!.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
    setState(() {
      filteredCartoons = results;
    });
  }

  void toggleFavorite(Map<String, String> cartoon) {
    setState(() {
      if (favoriteCartoons.contains(cartoon)) {
        favoriteCartoons.remove(cartoon);
      } else {
        favoriteCartoons.add(cartoon);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tom & Jerry Character'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.quiz,
            ), // Or use Icons.help_outline for a question icon
            tooltip: 'Quiz',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => FavoriteCartoonsPage(
                        favoriteCartoons: favoriteCartoons,
                      ),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: searchCartoon,
              decoration: InputDecoration(
                labelText: 'Search Character',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // Animated Background
          Expanded(
            child: Stack(
              children: [
                SizedBox.expand(
                  child: Lottie.asset(
                    'assets/images/back.json',
                    fit: BoxFit.cover,
                  ),
                ),
                GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 600
                            ? 3
                            : 2, // 3 columns for larger screens (tablets)
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: filteredCartoons.length,
                  itemBuilder: (context, index) {
                    final cartoon = filteredCartoons[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    CartoonDetailPage(cartoon: cartoon),
                          ),
                        );
                      },
                      child: Hero(
                        tag: cartoon['name']!,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    cartoon['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                cartoon['name']!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              IconButton(
                                icon: Icon(
                                  favoriteCartoons.contains(cartoon)
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      favoriteCartoons.contains(cartoon)
                                          ? Colors.red
                                          : Colors.pink,
                                ),
                                onPressed: () {
                                  toggleFavorite(cartoon);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartoonDetailPage extends StatefulWidget {
  final Map<String, String> cartoon;

  const CartoonDetailPage({required this.cartoon});

  @override
  State<CartoonDetailPage> createState() => _CartoonDetailPageState();
}

class _CartoonDetailPageState extends State<CartoonDetailPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.cartoon['video']!)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _videoController.dispose();
    super.dispose();
  }

  void playSound(String url) {
    if (kIsWeb) {
      url = 'assets/' + url;
      _audioPlayer.play(UrlSource(url));
    } else {
      _audioPlayer.play(AssetSource(url));
    }
  }

  void _playVideo() {
    setState(() {
      _videoController.value.isPlaying
          ? _videoController.pause()
          : _videoController.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.cartoon['name']!)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: widget.cartoon['name']!,
              child: Image.asset(widget.cartoon['image']!, height: 200),
            ),
            SizedBox(height: 20),
            Text(
              widget.cartoon['description']!,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.volume_up),
              label: Text('Play Sound'),
              onPressed: () { playSound(widget.cartoon['sound'].toString()); },
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.play_circle_fill),
              label: Text(
                _videoController.value.isPlaying ? 'Pause Video' : 'Play Video',
              ),
              onPressed: _playVideo,
            ),
            SizedBox(height: 20),
            _videoController.value.isInitialized
                ? Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    AspectRatio(
                      aspectRatio: _videoController.value.aspectRatio,
                      child: VideoPlayer(_videoController),
                    ),
                    VideoProgressIndicator(
                      _videoController,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        playedColor: Colors.brown,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ],
                )
                : CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class FavoriteCartoonsPage extends StatelessWidget {
  final List<Map<String, String>> favoriteCartoons;

  FavoriteCartoonsPage({required this.favoriteCartoons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite Characters')),
      body: ListView.builder(
        itemCount: favoriteCartoons.length,
        itemBuilder: (context, index) {
          final cartoon = favoriteCartoons[index];
          return ListTile(
            title: Text(cartoon['name']!),
            leading: Image.asset(cartoon['image']!, width: 50),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartoonDetailPage(cartoon: cartoon),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tom and Jerry Quiz',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<Map<String, Object>> _questions = [
    {
      'question': 'What is the name of Tom\'s arch-nemesis?',
      'answers': ['Spike', 'Jerry', 'Butch'],
      'correctAnswer': 'Jerry',
    },
    {
      'question': 'What is the name of Tom and Jerry\'s neighbor dog?',
      'answers': ['Spike', 'Toodles', 'Butch'],
      'correctAnswer': 'Spike',
    },
    {
      'question': 'What is the name of Tom\'s little cousin?',
      'answers': ['Tyke', 'George', 'Muscle'],
      'correctAnswer': 'George',
    },
    {
      'question': 'Who is the little mouse that sometimes appears with Jerry?',
      'answers': ['Nibbles', 'Tuffy', 'Quacker'],
      'correctAnswer': 'Tuffy',
    },
    // Add more questions here
  ];

  int _currentQuestionIndex = 0;
  int _score = 0;

  void _answerQuestion(String answer) {
    if (answer == _questions[_currentQuestionIndex]['correctAnswer']) {
      _score++;
    }
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizResultPage(score: _score),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(title: Text('Tom and Jerry Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              question['question'] as String,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...(question['answers'] as List<String>).map((answer) {
              return ElevatedButton(
                onPressed: () => _answerQuestion(answer),
                child: Text(answer),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class QuizResultPage extends StatelessWidget {
  final int score;

  QuizResultPage({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz Result')),
      body: Center(
        child: Text(
          'Your Score: $score/${(score > 0) ? 4 : 0}',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
