func map<T, U>(region: Region<T>, transform: T -> U) -> Region<U> {
    return Region { pos in transform(region.value(pos)) }
}