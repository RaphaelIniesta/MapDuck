//
//  ContentView.swift
//  MapDuck
//
//  Created by Raphael Iniesta Reis on 18/02/24.
//

import SwiftUI
import SwiftData
import CoreLocation

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var items: [DataManager]
    @State var text: String = ""
    
    //MARK: SwiftData functions
    func addItem(title: String, memorie: String, lat: Double, long: Double, date: String) {
        let item = DataManager(title: title, memorie: memorie, lat: lat, long: long, date: date)
        
        context.insert(item)
    }
    
    func deleteItem(_ item: DataManager) {
        context.delete(item)
    }
    
    //TODO: Update items
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Location", text: $text)
                        .textFieldStyle(.roundedBorder)
                    
                    Button {
                        addItem(title: text, memorie: text, lat: 0.0, long: 0.0, date: text)
                    } label: {
                        Text("Save")
                    }
                }
                
                List {
                    ForEach(items, id: \.self) { item in
                        Text(item.title)
                    }
                    .onDelete { indexes in
                        for index in indexes {
                            deleteItem(items[index])
                        }
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
