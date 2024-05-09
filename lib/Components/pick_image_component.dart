import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final ImagePicker picker = ImagePicker();
  XFile? file = await picker.pickImage(source: source);
  if (file != null) {
    return await file.readAsBytes();
  }
  print("No image selected");
}
