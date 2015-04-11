func incrementOptional(optional: Int?) -> Int? {
    if let x = optional {
        return x + 1
    } else {
        return nil
    }
}