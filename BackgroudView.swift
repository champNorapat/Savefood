import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

struct BackgroudView: View {
    var body: some View {
        Rectangle()
            .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: .center)
            .foregroundColor(.init(red: 238/255, green: 237/255, blue: 222/255))
    }
}
