func lookup<T: Hashable>(key: [T], trie: Trie<T>) -> Bool {
    if let (head, tail) = key.decompose {
        if let subtrie = trie.children[head] {
            return lookup(tail, subtrie)
        } else {
            return false
        }
    } else {
        return trie.isElem
    }
}