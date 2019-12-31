//
//  ContentView.swift
//  TextAndImages
//
//  Created by Shawn Roller on 12/29/19.
//  Copyright © 2019 offensively-bad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    static let taskDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    private var dueDate = Date()
    private var img: UIImage = {
        guard let image = UIImage(named: "fox") else {
            fatalError("poopin")
        }
        return image
    }()
    
    var body: some View {

        /* --shape test
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
//        let conic = RadialGradient(gradient: colors, center: .center, startRadius: 50, endRadius: 200)
        let conic = AngularGradient(gradient: colors, center: .center, startAngle: .zero, endAngle: .degrees(360))
        return Circle()
//            .fill(conic)
            .strokeBorder(conic, lineWidth: 50)
            .frame(width: 400, height: 400)
 */
        
        VStack {
            Spacer()
            Text("this is cool")
                .font(.largeTitle)
                .background(Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 200)
                    .clipped()
            )
            Text("this is cool")
                .font(.largeTitle)
                .background(
                    Image(uiImage: img)
                        .resizable()
                        .frame(width: 100, height: 100)
                    )
            Spacer()
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .padding(-10)
        }
        /*
        VStack {
            Text("ffisdf")
                .font(.custom("AmericanTypeWriter", size: 30))
                .tracking(50)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .top, endPoint: .bottom))
            Text("ffi")
                .font(.custom("AmericanTypeWriter", size: 30))
                .kerning(50)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .leading, endPoint: .bottomTrailing))
            let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
            let conic = RadialGradient(gradient: colors, center: .center, startRadius: 50, endRadius: 200)
            return Circle()
                .fill(conic)
                .frame(width: 400, height: 400)
            Text("This is a really long string and we'll see what happens when it gets truncated. This is a really long string and we'll see what happens when it gets truncated. This is a really long string and we'll see what happens when it gets truncated.")
                .font(.caption)
                .multilineTextAlignment(.center)
                .onTapGesture {
                    self.showingAlert.toggle()
                }
            Text("\nThis is a really long string and we'll see what happens when it gets truncated. This is a really long string and we'll see what happens when it gets truncated. This is a really long string and we'll see what happens when it gets truncated.")
                .lineLimit(3)
                .background(Color.red)
                .foregroundColor(.white)
            Text("\nThis is a really long string and we'll see what happens when it gets truncated. This is a really long string and we'll see what happens when it gets truncated. This is a really long string and we'll see what happens when it gets truncated.")
                .lineLimit(3)
                .truncationMode(.middle)
                .lineSpacing(5)
            Text("Task due date: \(dueDate, formatter: Self.taskDateFormatter)")
            Image(systemName: "cloud.heavyrain.fill")
                .foregroundColor(.yellow)
                .font(.largeTitle)
            Image(uiImage: img)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image(uiImage: img)
                .resizable(capInsets: EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 20), resizingMode: .tile)

        }
        .alert(isPresented: self.$showingAlert) {
            Alert(title: Text("test"))
        }
     */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
