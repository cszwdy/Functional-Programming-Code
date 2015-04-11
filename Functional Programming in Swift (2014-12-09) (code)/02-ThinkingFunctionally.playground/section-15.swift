func circle2(radius: Distance, center: Position) -> Region {
    return { point in
        let shiftedPoint = Position(x: point.x - center.x,
                                    y: point.y - center.y)
        return sqrt(shiftedPoint.x * shiftedPoint.x +
                    shiftedPoint.y * shiftedPoint.y) <= radius
   }
}