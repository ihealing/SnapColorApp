//
//  colorsheet7.swift
//  Snapcolor
//
//  Created by Shifa Alfaisal on 18/06/1444 AH.
//

import SwiftUI

struct colorsheet7: View {
    @State private var showSheet: Bool = false
    var body: some View {
        Button(" show"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet){
            showSheetView()
                .presentationDetents([.medium])
        }
    }
}
struct showSheet7View: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: 0.941, green: 0.009, blue: 0.015))
                    .frame(width: 331.00, height: 161.00)
                    .padding(.bottom, 11.0)
                Text("love             ")
                  .font(Font.custom("Inter-Regular", size: 24))
                  .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                  .frame(minWidth: 141.00, minHeight: 29.00, alignment: .topLeading)
            }
            Text("HEX: DC3022")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 131.0)
                .frame(minWidth: 198.00, minHeight: 38.00,alignment: .leading)
            Text("CMYK: 0,67,73,14")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 99.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
            Text("RGB: 220,48,34")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 123.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
        }
    }
}

struct colorsheet7_Previews: PreviewProvider {
    static var previews: some View {
        colorsheet7()
    }
}
