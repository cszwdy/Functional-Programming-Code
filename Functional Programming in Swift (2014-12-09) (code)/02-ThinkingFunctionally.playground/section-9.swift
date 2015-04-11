func inRange4(target: Position, ownPosition: Position, 
              friendly: Position, range: Distance) -> Bool {
              
    let dx = ownPosition.x - target.x
    let dy = ownPosition.y - target.y
    let targetDistance = sqrt(dx * dx + dy * dy) 
    let friendlyDx = friendly.x - target.x
    let friendlyDy = friendly.y - target.y
    let friendlyDistance = sqrt(friendlyDx * friendlyDx +
                                friendlyDy * friendlyDy)
    return targetDistance <= range
           && targetDistance >= minimumDistance
           && (friendlyDistance >= minimumDistance)
}