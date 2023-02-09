class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image,  required this.title,  required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Find a doctor',
      image: 'assets/images/Onboarding/Medical prescription-bro.svg',
      discription: "Find a doctor who will take the best care of you."
  ),
  UnbordingContent(
      title: 'Nursing Center',
      image: 'assets/images/Onboarding/Nursing home-bro.svg',
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  ),
  UnbordingContent(
      title: 'Radiation Center',
      image: 'assets/images/Onboarding/Rheumatology-pana.svg',
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  ),

  UnbordingContent(
      title: 'Laboratory Center',
      image: 'assets/images/Onboarding/Vaccine development-bro.svg',
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  ),
];