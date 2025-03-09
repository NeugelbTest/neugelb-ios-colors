import SwiftUI
import UIKit

// swiftlint:disable all
public struct ColorAsset: Hashable {

    public static var onError: ((String) -> Void)?

    fileprivate let name: String
    fileprivate let opacity: Double?

    fileprivate init(name: String, opacity: Double?) {
        self.name = name
        self.opacity = opacity
    }

}

extension ColorAsset {

    public static var black100: ColorAsset { .init(name: "black-100", opacity: nil) }
    public static func black100(opacity: Double) -> ColorAsset { .init(name: "black-100", opacity: opacity) }
    public static var green100: ColorAsset { .init(name: "green-100", opacity: nil) }
    public static func green100(opacity: Double) -> ColorAsset { .init(name: "green-100", opacity: opacity) }
    public static var green20: ColorAsset { .init(name: "green-20", opacity: nil) }
    public static func green20(opacity: Double) -> ColorAsset { .init(name: "green-20", opacity: opacity) }
    public static var grey10: ColorAsset { .init(name: "grey-10", opacity: nil) }
    public static func grey10(opacity: Double) -> ColorAsset { .init(name: "grey-10", opacity: opacity) }
    public static var grey100: ColorAsset { .init(name: "grey-100", opacity: nil) }
    public static func grey100(opacity: Double) -> ColorAsset { .init(name: "grey-100", opacity: opacity) }
    public static var grey20: ColorAsset { .init(name: "grey-20", opacity: nil) }
    public static func grey20(opacity: Double) -> ColorAsset { .init(name: "grey-20", opacity: opacity) }
    public static var grey30: ColorAsset { .init(name: "grey-30", opacity: nil) }
    public static func grey30(opacity: Double) -> ColorAsset { .init(name: "grey-30", opacity: opacity) }
    public static var grey40: ColorAsset { .init(name: "grey-40", opacity: nil) }
    public static func grey40(opacity: Double) -> ColorAsset { .init(name: "grey-40", opacity: opacity) }
    public static var grey50: ColorAsset { .init(name: "grey-50", opacity: nil) }
    public static func grey50(opacity: Double) -> ColorAsset { .init(name: "grey-50", opacity: opacity) }
    public static var grey60: ColorAsset { .init(name: "grey-60", opacity: nil) }
    public static func grey60(opacity: Double) -> ColorAsset { .init(name: "grey-60", opacity: opacity) }
    public static var grey70: ColorAsset { .init(name: "grey-70", opacity: nil) }
    public static func grey70(opacity: Double) -> ColorAsset { .init(name: "grey-70", opacity: opacity) }
    public static var grey80: ColorAsset { .init(name: "grey-80", opacity: nil) }
    public static func grey80(opacity: Double) -> ColorAsset { .init(name: "grey-80", opacity: opacity) }
    public static var grey90: ColorAsset { .init(name: "grey-90", opacity: nil) }
    public static func grey90(opacity: Double) -> ColorAsset { .init(name: "grey-90", opacity: opacity) }
    public static var orange100: ColorAsset { .init(name: "orange-100", opacity: nil) }
    public static func orange100(opacity: Double) -> ColorAsset { .init(name: "orange-100", opacity: opacity) }
    public static var red10: ColorAsset { .init(name: "red-10", opacity: nil) }
    public static func red10(opacity: Double) -> ColorAsset { .init(name: "red-10", opacity: opacity) }
    public static var red100: ColorAsset { .init(name: "red-100", opacity: nil) }
    public static func red100(opacity: Double) -> ColorAsset { .init(name: "red-100", opacity: opacity) }
    public static var white100: ColorAsset { .init(name: "white-100", opacity: nil) }
    public static func white100(opacity: Double) -> ColorAsset { .init(name: "white-100", opacity: opacity) }

}
// swiftlint:enable all

// MARK: - Color Asset

public extension ColorAsset {

    var uiColor: UIColor {
        guard let color = UIColor(named: name, in: .module, compatibleWith: nil) else {
            ColorAsset.onError?("Could not find color named \(name) in assets")
            return .clear
        }
        if let opacity {
            return color.withAlphaComponent(CGFloat(opacity))
        } else {
            return color
        }
    }

    var color: Color {
        let color = Color(name, bundle: .module)
        if let opacity {
            return color.opacity(opacity)
        } else {
            return color
        }
    }

    var cgColor: CGColor {
        uiColor.cgColor
    }

}
