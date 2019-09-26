import UIKit

public class TurtleColor {
    public static let defaultInk = UIColor.black.withAlphaComponent(0.5)
    public static let black = UIColor.black
    public static let white = UIColor(hex: "fdfdfd")
    public static let green = UIColor(hex: "5b9279")
    public static let red = UIColor(hex: "ff3a20")
    public static let yellow = UIColor(hex: "ffd447")
    public static let blue = UIColor(hex: "3c6997")
    
    public static func from(hex: String) -> UIColor {
        return UIColor(hex: hex)
    }
}

extension UIColor {
    public convenience init(hex: String, alpha: Double = 1.0) {
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
            self.init(hex: "7f7f7fff")
        }
    }
}
