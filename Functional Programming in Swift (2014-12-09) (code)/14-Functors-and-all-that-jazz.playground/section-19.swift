func cartesianProduct2<A, B>(xs: [A], ys: [B]) -> [(A, B)] {
    return xs >>= { x in ys >>= { y in [(x, y)] } }
}