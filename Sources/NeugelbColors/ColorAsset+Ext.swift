import Foundation

public extension ColorAsset {

    /// `black100` color with `0.1` opacity.
    static var shadow: ColorAsset { .black100(opacity: 0.1) }

    /// Color with `0` opacity.
    static var clear: ColorAsset { .black100(opacity: 0) }

}
