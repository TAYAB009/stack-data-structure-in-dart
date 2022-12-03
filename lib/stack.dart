class Stack<E> {
  final _storage;
  Stack() : _storage = <E>[];

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }

  void push(E element) => _storage.add(element);
  void pop() => _storage.removeLast();
}

void main(List<String> args) {
  final stackObj = Stack();
  stackObj.push(1);
  stackObj.push(2);
  stackObj.push(3);
  stackObj.push(4);
  print(stackObj);
}
