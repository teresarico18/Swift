//
//  ContentView.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 13/10/23.
//

import SwiftUI
import CoreData
 
struct ContentView: View {
    
    @State var name: String = ""
    @State var quantity: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Product.entity(), sortDescriptors: [])
    private var products: FetchedResults<Product>

    var body: some View {
            NavigationView {
                VStack {
                    TextField("Product name", text: $name)
                    TextField("Product quantity", text: $quantity)
                    
                    HStack {
                        Spacer()
                        Button("Add") {
                            
                        }
                        Spacer()
                        Button("Clear") {
                            name = ""
                            quantity = ""
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                    List {
                        ForEach(products) { product in
                            HStack {
                                Text(product.name ?? "Not found")
                                Spacer()
                                Text(product.quantity ?? "Not found")
                            }
                        }
                    }
                    .navigationTitle("Product Database")
                }
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }

    private func addProduct() {
            
            withAnimation {
                let product = Product(context: viewContext)
                product.name = name
                product.quantity = quantity
                
                saveContext()
            }
        }
        
        private func saveContext() {
            do {
                try viewContext.save()
            } catch {
                let error = error as NSError
                fatalError("An error occured: \(error)")
            }
        }
}

private func saveContext() {
    do {
        try viewContext.save()
    } catch {
        let error = error as NSError
        fatalError("An error occured: \(error)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
