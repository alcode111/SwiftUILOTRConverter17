//
//  SelectCurrency.swift
//  SwiftUILOTRConverter17
//
//  Created by Ismaïl LP on 01/04/2024.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency = .silverPenny
    @State var bottomCurrency : Currency = .goldPenny
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                IconGrid(currency: topCurrency)
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                IconGrid(currency: bottomCurrency)
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
