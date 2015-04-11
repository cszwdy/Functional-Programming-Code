func everywhere() -> Region<Bool> {
    return pure(true)
}

func invert(region: Region<Bool>) -> Region<Bool> {
    return pure(!) <*> region
}

func intersection(region1: Region<Bool>, 
                  region2: Region<Bool>) -> Region<Bool> {
                  
    return pure(curry{ x, y in x && y }) <*> region1 <*> region2
}