func autocomplete<T: Hashable>(key: [T], 
                               trie: Trie<T>) -> [[T]] {
                               
    if let prefixTrie = withPrefix(key, trie) {
        return elements(prefixTrie)
    } else {
        return []
    }
}