import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า vegetable_and_fruit
struct Vegetable_And_FruitView: View {
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                Image(uiImage: UIImage(named:"vegetable")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.top, 5)
                Text("Vegetable")
                    .fontWeight(.bold)
                    .offset(y: -15)
                    .font(.system(.largeTitle))
                    .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                VStack{
                    Text("What should I do before storing?")
                        .fontWeight(.bold)
                        .offset(y: 10)
                    Text("= Leafy vegetables should be soaked in water.")
                        .offset(y: 20)
                    Text("should be kept at?")
                        .fontWeight(.bold)
                        .offset(y: 30)
                    Text("= Vegetables should be stored in the vegetable compartment.")
                        .offset(y: 40)
                    Text("What container should be put in?")
                        .fontWeight(.bold)
                        .offset(y: 50)
                    Text("clean or sealed container.")
                        .offset(y: 60)
                    Text("Storage time?")
                        .fontWeight(.bold)
                        .offset(y: 70)
                    Text("can stay for about 10-15 days")
                        .offset(y: 80)
                    Text("advice?")
                        .fontWeight(.bold)
                        .offset(y: 90)
                    Text("Fruits and vegetables should not be stored in the same bag.")
                        .offset(y: 100)
                }

                Spacer()
            }
        }
    }
}
