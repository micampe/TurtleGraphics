import CoreGraphics

public extension BinaryInteger {
    var toRadians: Double { return Double(self) * .pi / 180 }
}

public extension FloatingPoint {
    var toRadians: Self { return self * .pi / 180 }
    var toDegrees: Self { return self * 180 / .pi }
}

// MARK: Trigonometry
public func hypotenuse(_ a: Double, _ b: Double) -> Double {
    return (a * a + b * b).squareRoot()
}

public func angle(fromOpposite opposite: Double, adjacent: Double) -> Double {
    return arctangent(opposite / adjacent)
}

public func sine(_ degrees: Double) -> Double {
    return Double(sin(CGFloat(degrees.toRadians)))
}

public func cosine(_ degrees: Double) -> Double {
    return Double(cos(CGFloat(degrees.toRadians)))
}

public func tangent(_ degrees: Double) -> Double {
    return Double(tan(CGFloat(degrees.toRadians)))
}

public func arcsine(_ z:Double) -> Double {
    return Double(asin(CGFloat(z))).toDegrees
}

public func arccosine(_ z: Double) -> Double {
    return Double(acos(CGFloat(z))).toDegrees
}

public func arctangent(_ z: Double) -> Double {
    return Double(atan(CGFloat(z))).toDegrees
}
