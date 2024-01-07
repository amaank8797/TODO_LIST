//
//  ListRowView.swift
//  TodoList
//
//  Created by Amaan Amaan on 04/01/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

var item1 = ItemModel(title: "first item ", isCompleted: false)
var item2 = ItemModel(title: "second item ", isCompleted: true)

#Preview {
    Group{
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    .previewLayout(.sizeThatFits)
}
