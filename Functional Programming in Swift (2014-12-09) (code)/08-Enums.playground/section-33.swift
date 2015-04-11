enum Add<T, U> {
    case InLeft(Box<T>)
    case InRight(Box<U>)
}