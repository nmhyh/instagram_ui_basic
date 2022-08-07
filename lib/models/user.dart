import 'package:instagram_ui/models/post.dart';
import 'package:instagram_ui/models/story.dart';

class User {
  String username;
  String bio;
  String? website;
  String? email;
  String? phone;
  String? gender;
  int totalPosts;
  int followers;
  int following;
  List<Story> listStories;
  List<Post> posts;
  User({
    required this.username, required this.bio, required this.totalPosts,
    required this.followers, required this.following, required this.listStories,
    required this.posts});
}

final List<String> searchKeyWordsEnum = ['IGTV', 'Shop', 'Style', 'Sports', 'Auto', 'IGTV', 'Shop', 'Style', 'Sports', 'Auto'];

final List<User> users = [
  User(
      username: 'Jacob West',
      bio: 'Digital goodies designer @pixsellz Everything is designed.',
      totalPosts: 54,
      followers: 843,
      following: 162,
      listStories: [Story(image: 'image', content: 'content')],
      posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'joshua_l',
    bio: 'Have a nice day, bro!',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'karennne',
    bio: 'I heard this is a good movie, s…',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'martini_rond',
    bio: 'See you on the next meeting!',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'andrewww_',
    bio: 'Sounds good 😂😂😂',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'kiero_d',
    bio: 'The new design looks cool, b…',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'maxjacobson',
    bio: 'Thank you, bro!',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'jamie.franco',
    bio: 'Yeap, I\'m going to travel in To…',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
  User(
    username: 'm_humphrey',
    bio: 'Instagram UI is pretty good',
    totalPosts: 54,
    followers: 843,
    following: 162,
    listStories: [Story(image: 'image', content: 'content')],
    posts: [Post(username: 'Jacob West', location: 'Tokyo, Japan', images: ['images'], title: 'The game in Japan was amazing and I want to share some photos')],
  ),
];

