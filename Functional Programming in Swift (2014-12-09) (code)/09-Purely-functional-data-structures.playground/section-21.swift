func setInsert<T: Comparable>(x: T, tree: Tree<T>) -> Tree<T> {
    switch tree {
        case Tree.Leaf:
            return single(x)
        case let Tree.Node(left, y, right) where x == y.unbox:
            return tree
        case let Tree.Node(left, y, right) where x < y.unbox:
            return Tree.Node(Box(setInsert(x, left.unbox)), 
                             y, right)
        case let Tree.Node(left, y, right) where x > y.unbox:
            return Tree.Node(left, y, 
                             Box(setInsert(x, right.unbox)))
        default:
            assert(false, "The impossible occurred")
    }
}