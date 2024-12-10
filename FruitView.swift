import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า meat
struct FruitView: View {
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                Image(uiImage: UIImage(named:"fruit.png")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.top, 5)
                Text("Fruit")
                    .fontWeight(.bold)
                    .offset(y: -15)
                    .font(.system(.largeTitle))
                    .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                VStack{
                    Text("What should I do before storing?")
                        .fontWeight(.bold)
                        .offset(y: 10)
                    Text("= Vegetables or fruits with peels use a cloth to wipe the peel clean.")
                        .offset(y: 20)
                    Text("should be kept at?")
                        .fontWeight(.bold)
                        .offset(y: 30)
                    Text("= Fruits should be stored in plastic boxes with holes for ventilation.")
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
