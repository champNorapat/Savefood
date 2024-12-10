import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า other
struct Other: View {
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                Image(uiImage: UIImage(named:"garlic.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.top, 5)
            Text("Other")
                .fontWeight(.bold)
                .offset(y: -15)
                .font(.system(.largeTitle))
                .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                VStack{
                    Text("What should I do before storing?")
                        .fontWeight(.bold)
                        .offset(y: 10)
                    Text("= Onions, garlic that have a cork attached to the head to tie together.")
                        .offset(y: 20)
                    Text("should be kept at?")
                        .fontWeight(.bold)
                        .offset(y: 30)
                    Text("= Onions, garlic, hang them in an airy place. Good ventilation, not damp")
                        .offset(y: 40)
                    Text("What container should be put in?")
                        .fontWeight(.bold)
                        .offset(y: 50)
                    Text("= Do not put in any container")
                        .offset(y: 60)
                    Text("Storage time?")
                        .fontWeight(.bold)
                        .offset(y: 70)
                    Text("= Onions, garlic can last 8 weeks.")
                        .offset(y: 80)
                    Text("advice?")
                        .fontWeight(.bold)
                        .offset(y: 90)
                    Text("=If the stem is not removed from the terminal, it may cause mold.")
                        .offset(y: 100)
                }
            Spacer()
            }
        }
    }
}
