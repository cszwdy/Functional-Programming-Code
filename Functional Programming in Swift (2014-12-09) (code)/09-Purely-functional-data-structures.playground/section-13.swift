func elements<T>(tree: Tree<T>) -> [T] {
    switch tree {
        case let Tree.Leaf:
            return []
        case let Tree.Node(left, x, right):
            return elements(left.unbox) + [x.unbox] + 
                   elements(right.unbox)
    }
}