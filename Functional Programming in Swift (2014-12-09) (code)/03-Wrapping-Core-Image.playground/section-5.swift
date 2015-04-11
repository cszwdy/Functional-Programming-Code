func blur(radius: Double) -> Filter {
    return { image in
        let parameters = [
            kCIInputRadiusKey: radius, 
            kCIInputImageKey: image
        ]
        let filter = CIFilter(name: "CIGaussianBlur", 
                              withInputParameters: parameters)
        return filter.outputImage
    }
}