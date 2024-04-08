import 'dart:io';
import 'dart:typed_data';

extension FileExt on File {
  Future<Uint8List?> toUint8List() async {
    try {
      List<int> bytes = await readAsBytes();
      Uint8List uint8List = Uint8List.fromList(bytes);
      return uint8List;
    } catch (e) {
      return null;
    }
  }

  bool isImageFile() {
    final String extension = path.split('.').last.toLowerCase();
    return ['jpg', 'jpeg', 'png', 'gif', 'bmp'].contains(extension);
  }

  bool isVideoFile() {
    final String extension = path.split('.').last.toLowerCase();
    return ['mp4', 'avi', 'mkv', 'mov', 'wmv', 'flv', 'webm']
        .contains(extension);
  }

  bool isAudioFile() {
    final String extension = path.split('.').last.toLowerCase();
    return ['mp3', 'wav', 'ogg', 'aac', 'flac', 'm4a', 'wma']
        .contains(extension);
  }
}
