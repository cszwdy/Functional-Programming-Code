func addOptionals(maybeX: Int?, maybeY: Int?) -> Int? {
    return pure(curry(+)) <*> maybeX <*> maybeY
}