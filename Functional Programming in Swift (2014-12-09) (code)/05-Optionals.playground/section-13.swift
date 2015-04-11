func incrementOptional2(optional: Int?) -> Int? {
    return optional.map { x in x + 1 }
}