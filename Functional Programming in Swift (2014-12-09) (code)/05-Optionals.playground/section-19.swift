infix operator >>= {}

func >>=<U, T>(optional: T?, f: T -> U?) -> U? {
    if let x = optional {
        return f(x)
    } else {
        return nil
    }
}