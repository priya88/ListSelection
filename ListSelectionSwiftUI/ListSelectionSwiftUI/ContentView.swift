import SwiftUI

struct Book: Identifiable, Hashable {
    let name: String
    let id = UUID()
}
private var books = [
    Book(name: "SwiftUI"),
    Book(name: "Swift"),
    Book(name: "Objective-C"),
    Book(name: "C#"),
    Book(name: "Java"),
    Book(name: "SwiftUI"),
    Book(name: "Swift"),
    Book(name: "Objective-C"),
    Book(name: "C#"),
    Book(name: "Java")
]

struct ContentView: View {
    @State private var booksSelection = Set<Book>()
    var body: some View {
        NavigationView {
            List(books, id: \.self, selection: $booksSelection) {
                Text($0.name)
            }
            .navigationTitle("Books")
            .toolbar { EditButton() }
        }
        Text("Selected \(booksSelection.count) books")
    }
}






