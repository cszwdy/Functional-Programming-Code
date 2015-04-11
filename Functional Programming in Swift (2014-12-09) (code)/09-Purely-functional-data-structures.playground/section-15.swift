func emptySet<T>() -> Tree<T> {
    return Tree.Leaf
}

func isEmptySet<T>(tree: Tree<T>) -> Bool {
    switch tree {
        case let Tree.Leaf:
            return true
        case let Tree.Node(_, _, _):
            return false
    }
}