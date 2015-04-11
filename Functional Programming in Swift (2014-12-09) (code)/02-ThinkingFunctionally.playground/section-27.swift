func inRange(ownPosition: Position, target: Position, 
             friendly: Position, range: Distance) -> Bool {
             
    let rangeRegion = difference(circle(range), 
                                 circle(minimumDistance))
    let targetRegion = shift(ownPosition, rangeRegion)
    let friendlyRegion = shift(friendly, circle(minimumDistance))
    let resultRegion = difference(targetRegion, friendlyRegion)
    return resultRegion(target)
}