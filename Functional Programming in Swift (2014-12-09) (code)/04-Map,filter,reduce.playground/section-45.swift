func mapUsingReduce<T, U>(xs: [T], f: T -> U) -> [U] {
    return xs.reduce([]) { result, x in result + [f(x)] }
}

func filterUsingReduce<T>(xs: [T], check: T -> Bool) -> [T] {
    return xs.reduce([]) { result, x in
        return check(x) ? result + [x] : result 
    }
}