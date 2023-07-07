//
//  ContentView.swift
//  Dice Roll
//
//  Created by HARDIK SHARMA on 07/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        VStack{
            Text("Dice Roll")
                .foregroundColor(.cyan)
                .bold()
                .fontWeight(.black)
                .font(.system(size: 50))
            
            Spacer()
            
            Button {
                leftDiceNumber = Int.random(in: 1...6)
                rightDiceNumber = Int.random(in: 1...6)
            } label: {
                Text("Click me to roll the dice!")
                    .font(.title)
            }
            
            Spacer()
            
            HStack{
                Image("dice\(leftDiceNumber)")
                    .resizable()
                    .frame(width:200,height:200)
                Image("dice\(rightDiceNumber)")
                    .resizable()
                    .frame(width:200,height:200)
            }
            .offset(y:-200)
            .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
