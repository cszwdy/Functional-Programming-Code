func flatten<T>(xss: [[T]]) -> [T] {
    var result : [T] = []
    for xs in xss {
        result += xs
    }
    return result
}