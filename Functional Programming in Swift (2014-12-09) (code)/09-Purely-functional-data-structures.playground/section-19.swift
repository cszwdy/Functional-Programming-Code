func setContains<T: Comparable>(x: T, tree: Tree<T>) -> Bool {
    switch tree {
        case Tree.Leaf:
            return false
        case let Tree.Node(left, y, right) where x == y.unbox:
            return true
        case let Tree.Node(left, y, right) where x < y.unbox:
            return setContains(x, left.unbox)
        case let Tree.Node(left, y, right) where x > y.unbox:
            return setContains(x, right.unbox)
        default:
            assert(false, "The impossible occurred")
    }
}