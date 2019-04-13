import 'package:highschool/util/base/index.dart';

const BASE_URL = "http://localhost:8080/";

class ResponseStatus<int> extends Enum<int> {
  const ResponseStatus(int value) : super(value);

  static const ResponseStatus StatusOK = const ResponseStatus(200);
  static const ResponseStatus StatusNotFound = const ResponseStatus(4041);
}
