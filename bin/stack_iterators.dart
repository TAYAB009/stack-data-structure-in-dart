//Creating Stacks from an Iterable

class Stack<E> {
  final List<E> _storage;
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);
  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}

void main(List<String> args) {
  // const myList = [1, 2, 3, 4, 5];
  // final oneTwoThree = Stack.of(myList);
  // print(oneTwoThree);
  const list = ['S', 'M', 'I', 'L', 'E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
}
