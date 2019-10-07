import UIKit

public struct Color {
    public let uiColor: UIColor
    
    public static let defaultInk = Color(withUIColor: UIColor.black.withAlphaComponent(0.5))
    public static let black = Color(withUIColor: UIColor.black)
    public static let white = Color(fromHex: "fdfdfd")
    public static let green = Color(fromHex: "5b9279")
    public static let red = Color(fromHex: "ff3a20")
    public static let yellow = Color(fromHex: "ffd447")
    public static let blue = Color(fromHex: "3c6997")
    
    public init(fromHex hex: String) {
        self.uiColor = UIColor(fromHex: hex)
    }
    
    public init(withUIColor color: UIColor) {
        self.uiColor = color
    }
    
    public func withAlphaComponent(_ alpha: Double) -> Color {
        return Self.init(withUIColor: self.uiColor.withAlphaComponent(CGFloat(alpha)))
    }
}

extension UIColor {
    public convenience init(fromHex hex: String, alpha: Double = 1.0) {
        var colorString = hex
        if (colorString.hasPrefix("#")) {
            colorString.remove(at: colorString.startIndex)
        }
        
        var rgbValue: UInt64 = 0
        Scanner(string: colorString).scanHexInt64(&rgbValue)
        
        if (colorString.count == 6) {
            self.init(
                red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                alpha: CGFloat(alpha))
        } else if (colorString.count == 8) {
            self.init(
                red: CGFloat((rgbValue & 0xFF000000) >> 32) / 255.0,
                green: CGFloat((rgbValue & 0x00FF0000) >> 16) / 255.0,
                blue: CGFloat((rgbValue & 0x0000FF00) >> 8) / 255.0,
                alpha: CGFloat(rgbValue & 0x000000FF) / 255.0)
        } else {
            self.init(fromHex: "7f7f7fff")
        }
    }
}
