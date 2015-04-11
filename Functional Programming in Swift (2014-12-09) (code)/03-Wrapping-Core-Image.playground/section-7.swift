func colorGenerator(color: NSColor) -> Filter {
    return { _ in
        let parameters = [kCIInputColorKey: color]
        let filter = CIFilter(name: "CIConstantColorGenerator",
                              withInputParameters: parameters)
        return filter.outputImage
    }
}