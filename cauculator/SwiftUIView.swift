//
//  SwiftUIView.swift
//  cauculator
//
//  Created by Hayden Chan on 2024-01-15.
//

import SwiftUI

struct SwiftUIView: View {
    @State var base: Int = 1
    @State var base2: Int = 1
    var sum: Int{
        return base - base2
    }
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("\(base)")
                    .font(.system(size: 50))
                    .padding()
            }
            HStack{
                Stepper(value: $base, label:{ Text("select first number")
                })
                .padding()
            }
            HStack{
                Image(systemName: "minus")
                    .resizable()
                    .scaledToFit()
                    .frame(width:30)
                    .padding()
                Spacer()
                Text("\(base2)")
                    .font(.system(size: 50))
                    .padding()
            }
            HStack{
                Stepper(value: $base2, label:{ Text("select second number")
                })
                .padding()
            }
            HStack{
                Spacer()
                Text("\(sum)")
                    .font(.system(size: 50))
                    .padding()
              
            }
            
        }
  
    }
}

#Preview {
    SwiftUIView()
}
