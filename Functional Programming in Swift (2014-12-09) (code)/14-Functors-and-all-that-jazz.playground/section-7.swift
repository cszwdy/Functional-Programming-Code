func pure<A>(value: A) -> Region<A> {
    return Region { pos in value }
}

func <*><A,B>(regionF: Region<A -> B>, 
              regionX: Region<A>) -> Region<B> {
              
    return Region { pos in regionF.value(pos)(regionX.value(pos)) }
}