import Parchment
import SwiftUI
import UIKit

struct DefaultView: View {
    @State var name: String = ""
    
    var body: some View {
        PageView {
            Page { _ in
                Image(systemName: "star.fill")
                    .padding()
            } content: {
                Text("Page 1: \(name)")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            }
            
            Page { _ in
                Image(systemName: "star")
                    .padding()
            } content: {
                Text("Page 2: \(name)")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            }

            Page { _ in
                Image(systemName: "circle.fill")
                    .padding()
            } content: {
                Text("Page 3: \(name)")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            }
        }
        .onAppear {
            name = "Hung"
        }
    }
}
