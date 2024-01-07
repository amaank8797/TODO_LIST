//
//  NoItemsView.swift
//  TodoList
//
//  Created by Amaan Amaan on 07/01/24.
//

import SwiftUI

struct NoItemsView: View {
    let secondaryAccentColor = Color("SecondaryAccentColor")
    @State var animate: Bool = false
    var body: some View {
        ScrollView{
            VStack(spacing : 10){
                Text("there are no items!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                Text("Are you a productive person ? I think you should click the add button to add bunch of items in your todo list!")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView(), label: {
                    Text("Add Something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(10)
                        .onAppear(perform: addAnimation)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(color: animate ? animate ? Color.red : Color.accentColor.opacity(0.7) : Color.accentColor.opacity(0.7), radius: animate ? 30 : 10, x: 0, y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            ){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
            .navigationTitle("Title")
    }
}
