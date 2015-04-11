func sum(xs: [Int]) -> Int {
    if let (head, tail) = xs.decompose {
        return (head + sum(tail))
    } else {
        return 0
    }
}