class FlutterCommandModel {
  String key;
  String use;
  FlutterCommandModel({
    required this.key,
    required this.use,
  });
  static List<FlutterCommandModel> data = [
    FlutterCommandModel(
        key: "flutter doctor",
        use:
            "This command checks your environment and displays a report of the status of your Flutter installation. It will also notify you of any dependencies you still need to install."),
    FlutterCommandModel(
        key: "flutter create my_app",
        use: "This command sets up a new Flutter project called"),
    FlutterCommandModel(
        key: "flutter run",
        use:
            "After creating a project, navigate to the project directory and use this command to run the Flutter app in the default device (emulator/simulator)."),
    FlutterCommandModel(
        key: "flutter devices",
        use:
            "To check the list of all connected devices, use the following command"),
    FlutterCommandModel(
        key: "flutter build apk",
        use: "To build an APK file for Android, use: "),
    FlutterCommandModel(
        key: "flutter build ios", use: "To build an IPA file for iOS, use:"),
    FlutterCommandModel(
        key: "flutter pub get",
        use: "To get all the packages in your project, use:"),
    FlutterCommandModel(
        key: "flutter build appbundle",
        use: "To create an app bundle for Android to publish app, use:"),
  ];
}
