//
//  TodoListApp.swift
//  TodoList
//
//  Created by Amaan Amaan on 04/01/24.
//

import SwiftUI

/*
 MVVM
 
M- model - data point
V- View - UI
VM- ViewModel - Manages model for views
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()

            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)

        }
    }
}
