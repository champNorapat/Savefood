import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า meat
struct MeatView: View {
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                Image(uiImage: UIImage(named:"meat.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.top, 5)
                Text("Meat")
                    .fontWeight(.bold)
                    .offset(y: -15)
                    .font(.system(.largeTitle))
                    .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                VStack{
                    Text("What should I do before storing?")
                        .fontWeight(.bold)
                        .offset(y: 10)
                    Text("=clean the whole piece They are then divided into bite-sized pieces that are suitable for each cooking and stored in clean containers.")
                        .offset(y: 20)
                    Text("should be kept at?")
                        .fontWeight(.bold)
                        .offset(y: 30)
                    Text("=temperature below 0 degrees Celsius or in the freezer.")
                        .offset(y: 40)
                    Text("What container should be put in?")
                        .fontWeight(.bold)
                        .offset(y: 50)
                    Text("=Store in a clean container.")
                        .offset(y: 60)
                    Text("Storage time?")
                        .fontWeight(.bold)
                        .offset(y: 70)
                    Text("=about 6 months")
                        .offset(y: 80)
                    Text("advice?")
                        .fontWeight(.bold)
                        .offset(y: 90)
                    Text("=When you want to use it, take it out one by one. Set aside in the refrigerator to thaw. and should be used up")
                        .offset(y: 100)
                }
                Spacer()
            }
        }
    }
}
