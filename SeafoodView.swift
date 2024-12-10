import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า seafood
struct SeafoodView: View {
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                Image(uiImage: UIImage(named:"seafood.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.top, 5)
                Text("Seafood")
                    .fontWeight(.bold)
                    .offset(y: -15)
                    .font(.system(.largeTitle))
                    .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                VStack{
                    Text("What should I do before storing?")
                        .fontWeight(.bold)
                        .offset(y: 10)
                    Text("= Fish, shrimp and squid, wash thoroughly and blot dry.")
                        .offset(y: 20)
                    Text("should be kept at?")
                        .fontWeight(.bold)
                        .offset(y: 30)
                    Text("temperature below 0 degrees Celsius or in the freezer")
                        .offset(y: 40)
                    Text("What container should be put in?")
                        .fontWeight(.bold)
                        .offset(y: 50)
                    Text("= Fish, shrimp and squid put in a zip-lock bag. or a box with a tight lid.")
                        .offset(y: 60)
                    Text("Storage time?")
                        .fontWeight(.bold)
                        .offset(y: 70)
                    Text("=frozen in a temperature below minus 18 degrees Celsius,it can be stored for no more than 3 months.")
                        .offset(y: 80)
                    Text("advice?")
                        .fontWeight(.bold)
                        .offset(y: 90)
                    Text("=not re-freeze because it is easier to lose ")
                        .offset(y: 100)
                }
                Spacer()
            }
        }
    }
}
