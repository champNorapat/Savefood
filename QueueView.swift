import UIKit
import SwiftUI
import CoreGraphics
import Foundation
import AVFoundation

// ปุ่มประเภทอาหาร
struct QueueView: View
{
    var Name : String
//    var Detail : String
    var image : String
    var body: some View
    {
        HStack
        {
            Image(uiImage: UIImage(named: image)!)
                .resizable()
                .frame(width: 100, height: 100, alignment: . center)
            VStack(alignment: .leading)
            {
                HStack
                {
                    Text("\(Name)")
                        .font(.system(.title2, design: .rounded))
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.leading,10)
                .padding(.top,10)
                .padding(.bottom,10)
//                Text("\(Detail)")
//                    .font(.system(.title2, design: .rounded))
//                    .foregroundColor(Color.white)
//                    .fontWeight(.bold)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 224/255, green: 221/255, blue: 170/255), Color(red: 121/255, green: 135/255, blue: 119/255)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
        //        .overlay(
        //            RoundedRectangle(cornerRadius: 10)
        //                .stroke(Color(.sRGB, red: 255/255, green: 123/255, blue: 0/255,
        //                              opacity: 1), lineWidth: 3))
        .padding(5)
    }
}
