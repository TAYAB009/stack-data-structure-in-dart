//Challangep-02

class Stack<E> {
  final List<E> _storage;
  Stack() : _storage = <E>[];
  //Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);
  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  void printInReverseOrder(List<E> listToRecieve) {
    var stack = Stack<E>();
    for (E value in listToRecieve) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}

void main(List<String> args) {
  const list = ['S', 'M', 'O', 'K', 'E'];
  final stack = Stack();
  final test = stack.printInReverseOrder(list);
}
