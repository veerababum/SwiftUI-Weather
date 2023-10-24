//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Veerababu Mulugu on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : .white)
            VStack(spacing: 10){
                CityTextView(cityName: "Denver, CO")
                MainWeatherStatusView(imageView: "cloud.sun.fill", temparature: 76)
                
                HStack(spacing: 20){
                    
                    WheatherDayView(dayOfWeek: "MON", imageView: "wind.snow", temparature: 74)
                    WheatherDayView(dayOfWeek: "TUE", imageView: "cloud.sun.fill", temparature: 74)
                    WheatherDayView(dayOfWeek: "WE", imageView: "sun.max.fill", temparature: 74)
                    WheatherDayView(dayOfWeek: "THU", imageView: "wind.snow", temparature: 74)
                    WheatherDayView(dayOfWeek: "FRI", imageView: "cloud.sun.fill", temparature: 74)
                    WheatherDayView(dayOfWeek: "SAT", imageView: "sunset.fill", temparature: 74)
                }
                Spacer()
                Button {
                    print("Button Tapped")
                    isNight.toggle()
                }label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}


struct WheatherDayView: View {
    var dayOfWeek: String
    var imageView: String
    var temparature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
            Image(systemName: imageView)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temparature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageView: String
    var temparature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageView)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temparature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
