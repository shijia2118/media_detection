import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'media_detection_platform_interface.dart';

/// An implementation of [MediaDetectionPlatform] that uses method channels.
class MethodChannelMediaDetection extends MediaDetectionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('media_detection');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
