import 'package:flutter_test/flutter_test.dart';
import 'package:my_counter_app/presentation/home/home_controller.dart';

void main() {
  test('increment counter', () {
    final homeBloc = new HomeBloc();

    homeBloc.increment();
    expect(1, homeBloc.counter);
  });
}
