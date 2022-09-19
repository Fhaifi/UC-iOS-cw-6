//
//  ContentView.swift
//  StudentsInfo
//
//  Created by Fatma Alhaifi on 19/09/2022.
//

import SwiftUI
struct StudentsDetails: Identifiable {
    let id = UUID()
    var fullName: String
    var year: Int
    var age: Int
    
}
struct ContentView: View {
    @State var students = [
        StudentsDetails(fullName:"  ساره فهد"  , year: 2 , age: 20),
        StudentsDetails(fullName:"  نوره محمد", year: 4 , age: 22),
        StudentsDetails(fullName:"  راشد علي" , year: 1 , age: 18)
    ]
    

    var body: some View {
        VStack{
            Image("id")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("سجل الطلبة ")
                .font(.largeTitle)
                .padding()
            //HStack {
            ForEach(students){ student in
                VStack(alignment: .trailing) {
                    Text("الاسم:\(student.fullName)")
                    Text("السنه: \(student.year)")
                    Text("العمر: \(student.age)")
                }
                .padding(12)
            }
            Spacer()
            Text("عدد الطلبة المسجلين : \(students.count)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
