import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้าแรก
struct SircleImageView: View {
    @State private var iPresenting = false //ปุ่ม Type of food
    @State private var advicePresenting = false //ปุ่ม advice
    var body: some View {
        HStack{
            Button(action:{
                iPresenting.toggle()
            }){
                VStack {
                    Image(uiImage: UIImage(named:"Type_of_food.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                    Text("Type of Food")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                }
                .background(Color.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.5), lineWidth: 1))
                .shadow(radius: 15)
            }
            .fullScreenCover(isPresented: $iPresenting){
                Type_of_foodView()
            }
            Button(action:{
                advicePresenting.toggle()
            }){
                VStack {
                    Image(uiImage: UIImage(named:"advice.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                    Text("Advice")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                }
                .background(Color.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.5), lineWidth: 1))
                .shadow(radius: 15)
            }
            .fullScreenCover(isPresented: $advicePresenting){
                advice()
            }
        }
    }
}
