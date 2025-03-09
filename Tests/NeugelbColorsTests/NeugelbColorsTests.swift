import Testing
import SwiftUI
@testable import NeugelbColors

struct ColorAssetTests {
    
    @Test
    func test_uiColor_creation() {
        let color = ColorAsset.black100.uiColor
        #expect(color != UIColor.clear, "Color should not be clear if it's found in assets.")
    }
    
    @Test
    func test_uiColor_with_opacity() {
        let color = ColorAsset.black100(opacity: 0.3).uiColor
        #expect(color.cgColor.alpha == 0.3, "Opacity should be applied correctly.")
    }
    
    @Test
    func test_cgColor() {
        let cgColor = ColorAsset.black100.cgColor
        #expect(cgColor != nil, "CGColor should be generated from UIColor.")
    }
    
    @Test
    func test_swift_UIColor() {
        let color = ColorAsset.black100.color
        #expect(color != nil)
    }
}
