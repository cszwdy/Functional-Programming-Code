func count<T>(tree: Tree<T>) -> Int {
    switch tree {
        case let Tree.Leaf:
            return 0
        case let Tree.Node(left, x, right):
            return 1 + count(left.unbox) + 
                   count(right.unbox)
    }
}