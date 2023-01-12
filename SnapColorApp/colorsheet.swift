//
//  colorsheet.swift
//  color picker
//
//  Created by noor alotibi on 11/06/1444 AH.
//

import SwiftUI
struct colorsheet: View {
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
struct showSheetView: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: 0.58, green: 0.77, blue: 0.98))
                    .frame(width: 331.00, height: 161.00)
                    .padding(.bottom, 11.0)
                Text("social media")
                  .font(Font.custom("Inter-Regular", size: 24))
                  .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                  .frame(minWidth: 141.00, minHeight: 29.00, alignment: .topLeading)
            }
            Text("HEX: 94C4F9")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 131.0)
                .frame(minWidth: 198.00, minHeight: 38.00,alignment: .leading)
            Text("CMYK: 40,21,0,2")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 99.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
            Text("RGB: 148,196,249")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 83.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
        }
    }
}
struct colorsheet_Previews: PreviewProvider {
    static var previews: some View {
        colorsheet()
    }
}
