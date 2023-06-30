import 'package:flutter_test/flutter_test.dart';
import 'package:media_detection/media_detection.dart';
import 'package:media_detection/media_detection_platform_interface.dart';
import 'package:media_detection/media_detection_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMediaDetectionPlatform
    with MockPlatformInterfaceMixin
    implements MediaDetectionPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MediaDetectionPlatform initialPlatform = MediaDetectionPlatform.instance;

  test('$MethodChannelMediaDetection is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMediaDetection>());
  });

  test('getPlatformVersion', () async {
    MediaDetection mediaDetectionPlugin = MediaDetection();
    MockMediaDetectionPlatform fakePlatform = MockMediaDetectionPlatform();
    MediaDetectionPlatform.instance = fakePlatform;

    expect(await mediaDetectionPlugin.getPlatformVersion(), '42');
  });
}
