func withPrefix<T: Hashable>(prefix: [T], 
                             trie: Trie<T>) -> Trie<T>? {

    if let (head, tail) = prefix.decompose {
        if let remainder = trie.children[head] {
            return withPrefix(tail, remainder)
        } else {
            return nil
        }
    } else {
        return trie
    }
}