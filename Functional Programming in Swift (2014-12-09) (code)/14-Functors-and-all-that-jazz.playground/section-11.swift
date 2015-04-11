func pure<A>(value: A) -> A? {
    return value
}

func <*><A, B>(optionalTransform: (A -> B)?, 
               optionalValue: A?) -> B? {
               
    if let transform = optionalTransform {
        if let value = optionalValue {
            return transform(value)
        }
    }
    return nil
}