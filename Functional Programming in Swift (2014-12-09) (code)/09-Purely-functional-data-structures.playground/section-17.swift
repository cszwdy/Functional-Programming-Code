func isBST<T: Comparable>(tree: Tree<T>) -> Bool {
    switch tree {
        case Tree.Leaf:
            return true
        case let Tree.Node(left, x, right):
            let leftElements = elements(left.unbox)
            let rightElements = elements(right.unbox)
            return all(leftElements) { y in y < x.unbox }
                   && all(rightElements) { y in y > x.unbox }
                   && isBST(left.unbox)
                   && isBST(right.unbox)
    }
}