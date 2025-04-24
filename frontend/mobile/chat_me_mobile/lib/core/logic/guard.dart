class GuardResult {
  const GuardResult({required this.succeeded, this.message});

  final bool succeeded;
  final String? message;
}

class GuardArgument {
  const GuardArgument({required this.argument, required this.argumentName});

  final dynamic argument;
  final String argumentName;
}

// ignore: avoid_classes_with_only_static_members
class Guard {
  static GuardResult combine(List<GuardResult> guardResults) {
    for (final GuardResult result in guardResults) {
      if (result.succeeded == false) {
        return result;
      }
    }
    return const GuardResult(succeeded: true);
  }

  static GuardResult againstNullOrUndefined(
      dynamic argument, String argumentName) {
    if (argument == null) {
      return GuardResult(
          succeeded: false, message: '$argumentName is undefined');
    } else {
      if (argument is String && argument.isEmpty) {
        return GuardResult(succeeded: false, message: '$argumentName is empty');
      }
      return const GuardResult(succeeded: true);
    }
  }

  static GuardResult againstEmptyString(dynamic value, String argumentName) {
    if (value is! String) {
      return GuardResult(
          succeeded: false, message: '$argumentName is not a String');
    }

    final GuardResult result = againstNullOrUndefined(value, argumentName);
    if (!result.succeeded) {
      return result;
    }

    if (value.isEmpty) {
      return GuardResult(succeeded: false, message: '$argumentName is empty');
    } else {
      return const GuardResult(succeeded: true);
    }
  }

  static GuardResult againstInvalidDate(String? value, String argumentName) {
    if (value == null) {
      return againstNullOrUndefined(value, argumentName);
    }
    try {
      DateTime.parse(value);
      return const GuardResult(succeeded: true);
    } catch (e) {
      return GuardResult(
          succeeded: false, message: '$argumentName is an invalid date');
    }
  }

  static GuardResult againstInvalidEmail(String? value, String argumentName) {
    if (value == null) {
      return againstNullOrUndefined(value, argumentName);
    }
    final RegExp regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!regExp.hasMatch(value)) {
      return GuardResult(succeeded: false, message: '$argumentName is invalid');
    }

    return const GuardResult(succeeded: true);
  }

  static GuardResult againstInvalidPhoneNumber(
      String? value, String argumentName) {
    if (value == null) {
      return againstNullOrUndefined(value, argumentName);
    }

    final RegExp regExp = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

    if (!regExp.hasMatch(value)) {
      return GuardResult(succeeded: false, message: '$argumentName is invalid');
    }

    return const GuardResult(succeeded: true);
  }

  static GuardResult againstInvalidOption<T>(
      T? value, List<T> options, String argumentName) {
    if (value == null) {
      return againstNullOrUndefined(value, argumentName);
    }

    if (options.where((T e) => e == value).isEmpty) {
      return GuardResult(
          succeeded: false,
          message: 'Value is invalid ${argumentName.toLowerCase()}');
    }

    return const GuardResult(succeeded: true);
  }

  static GuardResult againstEmptyMap(
      Map<dynamic, dynamic> value, String argumentName) {
    if (value.keys.isEmpty) {
      return GuardResult(succeeded: false, message: '$argumentName is empty');
    } else {
      return const GuardResult(succeeded: true);
    }
  }

  static GuardResult againstEmptyList(
      List<dynamic> value, String argumentName) {
    if (value.isEmpty) {
      return GuardResult(succeeded: false, message: '$argumentName is empty');
    } else {
      return const GuardResult(succeeded: true);
    }
  }

  static GuardResult againstNullOrUndefinedBulk(List<GuardArgument> args) {
    for (final GuardArgument arg in args) {
      final GuardResult result =
          againstNullOrUndefined(arg.argument, arg.argumentName);
      if (!result.succeeded) {
        return result;
      }
    }
    return const GuardResult(succeeded: true);
  }

  static GuardResult againstEmptyStringBulk(List<GuardArgument> args) {
    for (final GuardArgument arg in args) {
      final GuardResult result =
          againstEmptyString(arg.argument, arg.argumentName);
      if (!result.succeeded) {
        return result;
      }
    }
    return const GuardResult(succeeded: true);
  }

  static GuardResult againstInvalidDateBulk(List<GuardArgument> args) {
    for (final GuardArgument arg in args) {
      final GuardResult result =
          againstInvalidDate(arg.argument, arg.argumentName);
      if (!result.succeeded) {
        return result;
      }
    }
    return const GuardResult(succeeded: true);
  }
}
