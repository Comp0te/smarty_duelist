import 'dart:io';

abstract class Url {}

final urlProxyMan =
    Platform.isAndroid ? '172.16.101.77:9090' : 'localhost:9090';

const kAvatarMaxSize = 300.0;
const kAvatarCacheControl = 'public,max-age=300';
