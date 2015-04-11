func single<T>(x: T) -> Tree<T> {
    return Tree.Node(Box(Tree.Leaf), Box(x), Box(Tree.Leaf))
}