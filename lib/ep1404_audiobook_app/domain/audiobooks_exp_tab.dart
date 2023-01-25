class AudiobookExpTab {
  String? tabIcon;
  String? title;
  int? index;

  AudiobookExpTab({this.tabIcon = "🔥", this.title, this.index});
}

List<AudiobookExpTab> audiobooksExploreTab = [
  AudiobookExpTab(tabIcon: "🔥", title: "Trending"),
  AudiobookExpTab(tabIcon: "❤", title: "Romance"),
  AudiobookExpTab(tabIcon: "👶", title: "Children")
];
