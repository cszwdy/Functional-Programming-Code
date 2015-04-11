func productUsingReduce(xs: [Int]) -> Int {
    return reduce(xs, 1, *)
}

func concatUsingReduce(xs: [String]) -> String {
    return reduce(xs, "", +)
}