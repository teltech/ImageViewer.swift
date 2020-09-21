import UIKit

public enum ImageViewerTheme {
    case light
    case dark
    case custom(background: UIColor, foreground: UIColor)
    
    var color:UIColor {
        switch self {
            case .light:
                return .white
            case .dark:
                return .black
            case .custom(let background, _):
                return background
        }
    }
    
    var tintColor:UIColor {
        switch self {
            case .light:
                return .black
            case .dark:
                return .white
            case .custom(_ , let foreground):
                return foreground
        }
    }
}

extension ImageViewerTheme: Equatable { }
