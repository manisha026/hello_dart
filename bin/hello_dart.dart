const global = 'Hello, world';

abstract class Weather {
  const Weather();

  String getAdvice();

  const factory Weather.sunny() = Sunny;
  const factory Weather.snowy() = Snowy;
  const factory Weather.cloudy() = Cloudy;
  const factory Weather.rainy() = Rainy;
}

final class Sunny implements Weather {
  const Sunny();
  @override
  String getAdvice() => 'Put on sunscreen.';
}

final class Snowy implements Weather {
  const Snowy();
  @override
  String getAdvice() => 'Get your skis.';
}

final class Cloudy implements Weather {
  const Cloudy();
  @override
  String getAdvice() => 'No need to bring anything special.';
}

final class Rainy implements Weather {
  const Rainy();
  @override
  String getAdvice() => 'Bring an umbrella.';
}

void main() {
  // Using polymorphism (abstract class + factory constructors)
  final weatherToday = const Weather.snowy();
  print(weatherToday.getAdvice());

  var sum = 0;
  do {
    sum += (1 + 3 - 2 * 4 + 8);
  } while (sum < 10);
  print('do-while loop sum: $sum');

  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  // fibonacci numbers
  fibonacci(10);
  var sums = 0;
  for (var i = 0; i <= 5; i++) {
    sums += i;
    print('sums are ........  $sums');
  }

  for (var i = 10; i >= 0; i--) {
    print('Countdown: $i');
  }

  // 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.
  for (var i = 0; i <= 10; i++) {
    double value = i * 0.1;
    print(value.toStringAsFixed(1)); // Format to 1 decimal place
  }
  print(youAreWonderful(name: 'Manisha'));
  print('are of circle is  ${areaOfCircle(5)}');
  print('is number divisible ${isNumberDivisible(9, 2)}');

  print(isPrime(1));
}

int fibonacci(int n) {
  if (n < 0) {
    throw ArgumentError('Number should be positive');
  }
  if (n == 1 || n == 2) {
    return 1;
  }
  var previous = 1;
  var current = 1;
  for (var i = 3; i <= n; i++) {
    var next = previous + current;
    previous = current;
    current = next;
    print(current);
  }
  return current;
}

String youAreWonderful({required String name, int numberPeople = 30}) {
  return 'You are wonderful, $name!, $numberPeople people think so.';
}

double areaOfCircle(double radius) => 3.14 * radius * radius;

bool isNumberDivisible(int number, int divisor) {
  return number % divisor == 0;
}

bool isPrime(int number) {
  if (number <= 1) return false;
  for (var i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
