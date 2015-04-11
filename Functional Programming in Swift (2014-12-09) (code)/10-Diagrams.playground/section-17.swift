func fit(alignment: Vector2D, 
         inputSize: CGSize, rect: CGRect) -> CGRect {
         
    let scaleSize = rect.size / inputSize
    let scale = min(scaleSize.width, scaleSize.height)
    let size = scale * inputSize
    let space = alignment.size * (size - rect.size)
    return CGRect(origin: rect.origin - space.point, size: size)
}