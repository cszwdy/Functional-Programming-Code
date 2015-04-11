enum Tree<T> {
    case Leaf
    case Node(Box<Tree<T>>, T, Box<Tree<T>>)
}