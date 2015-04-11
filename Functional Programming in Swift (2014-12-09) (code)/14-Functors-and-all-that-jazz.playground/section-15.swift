func pure<A>(value: A) -> [A] {
    return [value]
}

func >>=<A, B>(xs: [A], f: A -> [B]) -> [B] {
    return flatten(xs.map(f))
}