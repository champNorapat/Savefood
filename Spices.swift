import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า spices
struct Spices: View {
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                Image(uiImage: UIImage(named:"spices.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.top, 5)
            Text("Spices")
                .fontWeight(.bold)
                .offset(y: -15)
                .font(.system(.largeTitle))
                .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                VStack{
                    Text("What should I do before storing?")
                        .fontWeight(.bold)
                        .offset(y: 10)
                    Text("=Put the spices in a container and write the names of the spices on them.")
                        .offset(y: 20)
                    Text("should be kept at?")
                        .fontWeight(.bold)
                        .offset(y: 30)
                    Text("= Store in a place that is not exposed to sunlight and heat, such as in a drawer.")
                        .offset(y: 40)
                    Text("What container should be put in?")
                        .fontWeight(.bold)
                        .offset(y: 50)
                    Text("=tea glass bottle")
                        .offset(y: 60)
                    Text("Storage time?")
                        .fontWeight(.bold)
                        .offset(y: 70)
                    Text("=Fresh spices 5-7 days Ground spices 2-3 years Dry spices 2-3 years Extracted spices 4-5 years")
                        .offset(y: 80)
                    Text("advice?")
                        .fontWeight(.bold)
                        .offset(y: 90)
                    Text("=If the spice is heated or exposed to sunlight The spice will quickly lose its flavor intensity. Keep condiments as far away from the stove as possible.")
                        .offset(y: 100)
                }
            Spacer()
            }
        }
    }
}
