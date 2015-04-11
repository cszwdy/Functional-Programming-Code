func empty<T: Hashable>() -> Trie<T> {
    return Trie(isElem:false,  children: [T: Trie<T>]())
}