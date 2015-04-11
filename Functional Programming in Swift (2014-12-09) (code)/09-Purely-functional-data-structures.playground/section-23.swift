struct Trie<T : Hashable> {
    let isElem : Bool
    let children : [T: Trie<T>]
}