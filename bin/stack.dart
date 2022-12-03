class Stack<E> {
  final List<E> _storage;
  Stack() : _storage = <E>[];

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }

  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
}

// void main(List<String> args) {
//   final stackObj = Stack();
//   stackObj.push(1);
//   stackObj.push(2);
//   stackObj.push(3);
//   stackObj.push(4);
//   print(stackObj);
//   final ejectedElement = stackObj.pop();
//   print('poppedElement: ${ejectedElement.toString()}');
// }

void main(List<String> args) {
  final stackObj = Stack();
  //stackObj.peek;
  print(stackObj.isNotEmpty);
}
