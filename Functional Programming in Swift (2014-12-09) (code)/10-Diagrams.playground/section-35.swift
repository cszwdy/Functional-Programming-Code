        case .Align(let vec, let d):
            let diagram = d.unbox
            let frame = fit(vec, diagram.size, bounds)
            draw(context, frame, diagram)
    }
}