func inOrder<T>(tree: Tree<T>) -> GeneratorOf<T> {
    switch tree {
        case Tree.Leaf:
            return GeneratorOf { return nil }
        case let Tree.Node(left, x, right):
            return inOrder(left.unbox) + one(x) + inOrder(right.unbox)
    }
}