//
//  Observable:StateObject.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 22/09/23.
//

import SwiftUI

struct FruitModel: Identifiable{
    var id: String = UUID().uuidString
    let fruit: String
    let count: Int
}

class FruitViewModel: ObservableObject{
    
    /**
     @Published is the same as @State, the difference is just that it is used for classes that are not of type View where @State is used for structs of type View
     */
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruits() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(FruitModel(fruit: "apple", count: 5))
            self.fruitArray.append(FruitModel(fruit: "orange", count: 12))
            self.fruitArray.append(FruitModel(fruit: "banana", count: 55))
            self.isLoading = false
        }
    }
}

struct Observable_StateObject: View {
    
    //@State var fruitArray: [FruitModel] = []
    
    /**
     @StateObject           -> Use this whene creation of screen / init
     @ObservedObject    -> Use this to pass the data of variable on to the next screen or subviews
     
     @ObservedObject and @StateObject are the same as @State, the difference is just that these iare used for custom type objects where as @State is used for default data types
     
     A downside of @ObservedObject is that if ever View gets reloaded, the variable with this wrapper also gets reloaded and our app might not require that extra reload
     
     Thus, @StateObject is a better choice than @ObservedObject in case of where data is getting initialised suvh that initialisation task does not reload if even View reloads.
     */
    
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.fruit)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
//            .onAppear{
//                fruitViewModel.getFruits()
//            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        SecondFruitScreen(fruitViewModel: fruitViewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                    }

                }
            }
        }
    }
}

struct SecondFruitScreen: View{
    
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text("\(fruit.fruit)     \(fruit.count)")
                }
            }
        }
    }
}

struct Observable_StateObject_Previews: PreviewProvider {
    static var previews: some View {
        Observable_StateObject()
    }
}
