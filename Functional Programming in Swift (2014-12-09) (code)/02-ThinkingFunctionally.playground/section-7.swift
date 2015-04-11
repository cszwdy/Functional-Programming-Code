let minimumDistance: Distance = 2.0

func inRange3(target: Position, ownPosition: Position, 
              range: Distance) -> Bool {
              
    let dx = ownPosition.x - target.x
    let dy = ownPosition.y - target.y
    let targetDistance = sqrt(dx * dx + dy * dy) 
    return targetDistance <= range
           && targetDistance >= minimumDistance
}