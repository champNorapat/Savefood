import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// หน้า advice
struct advice: View {
    @State private var z = false
    @State private var vicePresenting = false
    var body: some View {
        ZStack {
            Color.init(red: 238/255, green: 237/255, blue: 222/255)
            VStack {
                HStack{
                    Button(action:{
                        vicePresenting.toggle()
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
                Text("Advice")
                    .fontWeight(.bold)
                    .font(.system(.largeTitle))
                    .foregroundColor(Color(red: 20/255, green: 30/255, blue: 39/255))
                Rectangle()
                    .frame(width: .infinity, height: 5, alignment: .center)
                    .foregroundColor(Color(red: 32/355, green: 50/255, blue: 57/255))
                    .padding(5)
                // กรอบประเภทอาหาร
                ScrollView(.vertical, showsIndicators: false) {
                    // ปุ่มประเภทอาหาร
                        AdviceView(Name: "Always note the date of receipt, date of manufacture, and expiration date.", say: "Always note the date of receipt, date of manufacture, and expiration date", image_advice: "pencil.png")
                    // ปุ่มประเภทอาหาร
                        AdviceView(Name: "Stick a label on the product and take note of the quantity", say: "Stick a label on the product and take note of the quantity",  image_advice: "label.png")
                    // ปุ่มประเภทอาหาร
                        AdviceView(Name: "Always keep cooked food over uncooked food. and always have a container And let the containers cool down every time before putting them in the refrigerator", say: "Always keep cooked food over uncooked food. and always have a container And let the containers cool down every time before putting them in the refrigerator",  image_advice: "food-container.png")
                    // ปุ่มประเภทอาหาร
                        AdviceView(Name: "When defrosting fish, meat or chicken, use the microwave", say: "When defrosting fish, meat or chicken, use the microwave",  image_advice: "microwave-oven")
                    // ปุ่มประเภทอาหาร
                        AdviceView(Name: "Frozen food should not be allowed to thaw without a cover. to prevent contaminants that food may come into contact with", say: "Frozen food should not be allowed to thaw without a cover. to prevent contaminants that food may come into contact with",  image_advice: "bowl.png")
                    // ปุ่มประเภทอาหาร
                        AdviceView(Name: "Manage leftover food properly to minimize wastage", say: "Manage leftover food properly to minimize wastage",  image_advice: "garbage-2.png")
                }
            }

                .fullScreenCover(isPresented: $vicePresenting)
                {
                    MainView()
            }
        }
    }
}
