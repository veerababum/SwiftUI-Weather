//
//  WeatherView.swift
//  SwiftUI-Weather
//
//  Created by Veerababu Mulugu on 2/16/24.
//

import SwiftUI


struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroudColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroudColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
        
    }
}

