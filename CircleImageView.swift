import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// รูป logo หน้าแรก
struct CircleImageView: View {
    var body: some View {
        Image(uiImage: UIImage(named:"logo.png")!)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
