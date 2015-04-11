func compositeSourceOver(overlay: CIImage) -> Filter {
    return { image in
        let parameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name: "CISourceOverCompositing", 
                              withInputParameters: parameters)
        let cropRect = image.extent()
        return filter.outputImage.imageByCroppingToRect(cropRect)
    }
}