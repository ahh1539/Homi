class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://pbs.twimg.com/profile_images/934586153818382336/3mRqselO_400x400.jpg",
      name: "Bobby",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl: "https://www.se.rit.edu/sites/default/files/staff-photos/Kiser.jpg",
      name: "Kiser",
      datetime: "19:22",
      message: "I love that idea, it's great!",
    ),
    ChatModel(
      avatarUrl: "https://www.se.rit.edu/sites/default/files/staff-photos/Krutz.jpg",
      name: "Krutz",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
    ),
    ChatModel(
      avatarUrl: "http://www.teachingse.com/wp-content/uploads/2015/08/PMP-Life-300x225.jpg",
      name: "Sam",
      datetime: "11:05",
      message: "Wanna be my Homi?",
    ),
    ChatModel(
      avatarUrl: "https://i1.rgstatic.net/ii/profile.image/278775288877058-1443476616410_Q512/Thomas_Reichlmayr.jpg",
      name: "Reich",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
    ),
    ChatModel(
      avatarUrl: "https://scontent-atl3-1.xx.fbcdn.net/v/t1.0-9/403175_351335678210661_1320626968_n.jpg?_nc_cat=102&_nc_oc=AQlOQBWnhkh50NQjofpQNkoLdN2ui9FlZ5DYVB5uAeEcpUEd9MI7sfaADJuwFz7Ql3k&_nc_ht=scontent-atl3-1.xx&oh=9ce5ca0b64466a336328fa1a3c5d9223&oe=5E270591",
      name: "Williams",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
    ),
  ];
}