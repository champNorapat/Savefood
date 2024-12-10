import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า Type of food
struct Type_of_foodView : View {
    @State private var a = false
    @State private var tPre = false
    @State private var popupA = false
    @State private var popupB = false
    @State private var popupC = false
    @State private var popupD = false
    @State private var popupE = false
    @State private var popupF = false
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                HStack{
                    Button(action:{
                        tPre.toggle()
                    }){
                        Image(systemName: "chevron.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding(.leading, 10)
                            .padding(.top, 10)
                            .padding(.trailing, 0.5)
                            .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                        Text("Back")
                            .padding(.top, 10)
                            .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
                    }
                    Spacer()
                }
                Spacer()
                Text("Type of Food")
                    .fontWeight(.bold)
                    .font(.system(.largeTitle))
                    .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                Rectangle()
                    .frame(width: .infinity, height: 5, alignment: .center)
                    .foregroundColor(Color(red: 32/355, green: 50/255, blue: 57/255))
                    .padding(2)
                // กรอบประเภทอาหาร
                ScrollView(.vertical, showsIndicators: false) {
                    // ปุ่มประเภทอาหาร
                    Button(action:{
                        a.toggle()
                        popupA = true
                    }){
                        QueueView(Name: "Meat", image: "meat.png")
                    }
                    .popover(isPresented: $popupA){
                        MeatView()
                    }
                    // ปุ่มประเภทอาหาร
                    Button(action:{
                        a.toggle()
                        popupB = true
                    }){
                        QueueView(Name: "Seafood", image: "seafood.png")
                    }
                    .popover(isPresented: $popupB){
                        SeafoodView()
                    }
                    // ปุ่มประเภทอาหาร
                    Button(action:{
                        a.toggle()
                        popupF = true
                    }){
                        QueueView(Name: "Fruit", image: "fruit.png")
                    }
                    .popover(isPresented: $popupF){
                        FruitView()
                    }
                    // ปุ่มประเภทอาหาร
                    Button(action:{
                        a.toggle()
                        popupC = true
                    }){
                        QueueView(Name: "Vegetable", image: "vegetable.png")
                    }
                    .popover(isPresented: $popupC){
                        Vegetable_And_FruitView()
                    }
                    // ปุ่มประเภทอาหาร
                    Button(action:{
                        a.toggle()
                        popupD = true
                    }){
                        QueueView(Name: "Spices", image: "spices.png")
                    }
                    .popover(isPresented: $popupD){
                        Spices()
                    }
                    // ปุ่มประเภทอาหาร
                    Button(action:{
                        a.toggle()
                        popupE = true
                    }){
                        QueueView(Name: "Other", image: "garlic.png")
                    }
                    .popover(isPresented: $popupE){
                        Other()
                    }
                }
            }
            .fullScreenCover(isPresented: $tPre)
            {
                MainView()
            }
        }
    }
}
