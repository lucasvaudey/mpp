import 'package:http/http.dart';
import 'package:intl/intl.dart';

final dateFormatter = DateFormat('yyyy-MM-dd');
final timeFormatter = DateFormat('HH:mm:ss');
// logo: Upload!
MultipartFile fromGraphQLUploadToDartMultipartFile(MultipartFile file) => file;
MultipartFile fromDartMultipartFileToGraphQLUpload(MultipartFile file) => file;

//DateTime
DateTime fromGraphQLDateTimeToDartDateTime(String time) => DateTime.parse(time);
DateTime fromGraphQLDateToDartDateTime(String date) => DateTime.parse(date);
String fromDartDateTimeToGraphQLDate(DateTime date) =>
    dateFormatter.format(date);
DateTime fromGraphQLTimeToDartDateTime(String time) =>
    DateTime.parse('1970-01-01T${time}Z');
String fromDartDateTimeToGraphQLDateTime(DateTime date) =>
    timeFormatter.format(date);

List<DateTime>? fromDartListNullableDateTimeToGraphQLListNullableDateTime(
  List<DateTime>? times,
) =>
    times;
List<DateTime>? fromGraphQLListNullableDateTimeToDartListNullableDateTime(
  List<DateTime>? times,
) =>
    times;

//DateTime?
DateTime? fromGraphQLDateTimeNullableToDartDateTimeNullable(String? date) =>
    date == null ? null : DateTime.parse(date);
DateTime? fromGraphQLDateNullableToDartDateTimeNullable(String? date) =>
    date == null ? null : DateTime.parse(date);
String? fromDartDateTimeNullableToGraphQLDateNullable(DateTime? date) =>
    date == null ? null : dateFormatter.format(date);
DateTime? fromGraphQLTimeNullableToDartDateTimeNullable(String? time) =>
    DateTime.parse('1970-01-01T${time}Z');
String? fromDartDateTimeNullableToGraphQLDateTimeNullable(DateTime? date) =>
    date == null ? null : timeFormatter.format(date);

// productPhotos: [Upload!]!
List<MultipartFile> fromGraphQLListUploadToDartListMultipartFile(
  List<MultipartFile> file,
) =>
    file;
List<MultipartFile> fromDartListMultipartFileToGraphQLListUpload(
  List<MultipartFile> file,
) =>
    file;

// moreImages: [Upload!]
List<MultipartFile>?
    fromGraphQLListNullableUploadToDartListNullableMultipartFile(
  List<MultipartFile>? file,
) =>
        file;
List<MultipartFile>?
    fromDartListNullableMultipartFileToGraphQLListNullableUpload(
  List<MultipartFile>? file,
) =>
        file;

// logoSmall: Upload
MultipartFile? fromGraphQLUploadNullableToDartMultipartFileNullable(
  MultipartFile? file,
) =>
    file;
MultipartFile? fromDartMultipartFileNullableToGraphQLUploadNullable(
  MultipartFile? file,
) =>
    file;

// productPhotosSmall: [Upload]
List<MultipartFile?>?
    fromDartListNullableMultipartFileNullableToGraphQLListNullableUploadNullable(
  List<MultipartFile?>? file,
) =>
        file;
List<MultipartFile?>?
    fromGraphQLListNullableUploadNullableToDartListNullableMultipartFileNullable(
  List<MultipartFile?>? file,
) =>
        file;

// productPhotosSmall: [Upload]!
List<MultipartFile?>
    fromGraphQLListUploadNullableToDartListMultipartFileNullable(
  List<MultipartFile?> file,
) =>
        file;
List<MultipartFile?>
    fromDartListMultipartFileNullableToGraphQLListUploadNullable(
  List<MultipartFile?> file,
) =>
        file;

///ID
int fromGraphQLIdToDartint(String id) {
  return int.parse(id);
}

int fromDartintToGraphQLId(int id) {
  return id;
}
