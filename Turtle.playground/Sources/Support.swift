import UIKit

public extension BinaryInteger {
    var toRadians: CGFloat { return CGFloat(self) * .pi / 180 }
}

public extension FloatingPoint {
    var toRadians: Self { return self * .pi / 180 }
    var toDegrees: Self { return self * 180 / .pi }
}

public func createImage(fromText text: String, withFontSize fontSize: CGFloat = 36) -> UIImage {
    let attributes = [
        NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize)
    ]
    let stringBounds = text.boundingRect(with: CGSize(width: 100, height: 100),
                                         options: [],
                                         attributes: attributes,
                                         context: nil)
    let format = UIGraphicsImageRendererFormat.default()
    let renderer = UIGraphicsImageRenderer(size: stringBounds.size, format: format)
    let image = renderer.image { (context) in
        text.draw(with: CGRect(origin: CGPoint.zero, size: stringBounds.size),
                  options: .usesLineFragmentOrigin,
                  attributes: attributes,
                  context: nil)
    }
    return image
}
