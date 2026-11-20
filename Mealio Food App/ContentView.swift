import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var add = 0
    
    func increase(){
        add += 1
    }
    
    func decrease(){
        
        if (add != 0){
            add -= 1
        }
        
    }
    var body: some View {
        Text("Hello, world! \(add)")
            .padding()
        Button(action: increase){
            Text("Add")
        }
        
        Button(action: decrease){
            Text("Sub")
        }
        
        
        
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
