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
        VStack {
            Text("ffisdf")
                .font(.custom("AmericanTypeWriter", size: 30))
                .tracking(50)
            Text("ffi")
                .font(.custom("AmericanTypeWriter", size: 30))
                .kerning(50)
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
