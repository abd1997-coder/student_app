import 'dart:convert';
import 'dart:io';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:crypto/crypto.dart';

class DecryptParams {
  final String videoTitle;
  final String password;
  final String appDirPath;

  DecryptParams({
    required this.videoTitle,
    required this.password,
    required this.appDirPath,
  });
}

Future<String> decryptFileIsolate(DecryptParams params) async {
  final String encryptedPath =
      '${params.appDirPath}/encrypted/${params.videoTitle}.enc';
  final String decryptedDirPath = '${params.appDirPath}/decrypted';
  final String decryptedPath = '$decryptedDirPath/${params.videoTitle}.mp4';

  final encryptedFile = File(encryptedPath);
  final fileLength = await encryptedFile.length();

  if (fileLength <= 16) {
    throw Exception('Encrypted file is too small or corrupted.');
  }

  // Read only IV and the remaining cipherText using RandomAccessFile
  final raf = await encryptedFile.open();

  final ivBytes = await raf.read(16); // first 16 bytes = IV
  final cipherTextBytes = await raf.read(fileLength - 16);
  await raf.close();

  final iv = encrypt.IV(ivBytes);

  final key = encrypt.Key.fromUtf8(
    sha256.convert(utf8.encode(params.password)).toString().substring(0, 32),
  );

  final encrypter = encrypt.Encrypter(
    encrypt.AES(key, mode: encrypt.AESMode.gcm),
  );

  final decryptedBytes = encrypter.decryptBytes(
    encrypt.Encrypted(cipherTextBytes),
    iv: iv,
  );

  // Ensure decrypted folder exists
  final decryptedDir = Directory(decryptedDirPath);
  if (!await decryptedDir.exists()) {
    await decryptedDir.create(recursive: true);
  }

  final decryptedFile = File(decryptedPath);
  await decryptedFile.writeAsBytes(decryptedBytes);

  return decryptedPath;
}
