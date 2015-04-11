func elements<T: Hashable>(trie: Trie<T>) -> [[T]] {
    var result: [[T]] = trie.isElem ? [[]] : []
    for (key, value) in trie.children {
        result += elements(value).map {xs in [key] + xs}
    }
    return result
}