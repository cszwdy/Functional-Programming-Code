func arbitraryArray<X: Arbitrary>() -> [X] {
    let randomLength = Int(arc4random() % 50)
    return tabulate(randomLength) { _ in return X.arbitrary() }
}