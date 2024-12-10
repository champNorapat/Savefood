import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

struct MainView: View { //เปิด MainView
    var body: some View {
        ZStack {
            BackgroudView()
            VStack{
                CircleImageView()
                    .frame(width: 250, height: 250, alignment: .center)
                    .padding(25)
                // การใส่ข้อความบนหน้าจอ
                Text("Save Food")
                    .fontWeight(.bold)
                    .font(.system(.largeTitle))
                    .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                SircleImageView()
                    .frame(width: 250, height: 250, alignment: .center)
                    .padding(25)
            }
        }
    }
}
