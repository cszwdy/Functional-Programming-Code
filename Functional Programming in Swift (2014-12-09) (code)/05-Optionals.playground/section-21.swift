func addOptionals2(optionalX: Int?, optionalY: Int?) -> Int? {
    return optionalX >>= { x in
        optionalY >>= { y in
            x + y
        }
    }
}

func populationOfCapital2(country: String) -> Int? {
    return capitals[country] >>= { capital in
        cities[capital] >>= { population in
            return population * 1000
        }
    }
}