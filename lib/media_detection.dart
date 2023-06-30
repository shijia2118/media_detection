
import 'media_detection_platform_interface.dart';

class MediaDetection {
  Future<String?> getPlatformVersion() {
    return MediaDetectionPlatform.instance.getPlatformVersion();
  }
}
