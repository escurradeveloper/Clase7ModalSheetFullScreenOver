//
//  ContentView.swift
//  Clase7ShettFullScreenOver
//
//  Created by Escurra Colquis on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    
    var body: some View {
        Text("Sheet y Full Screen")
            .padding([.top, .bottom], 40)
            .bold()
            .foregroundStyle(.black)
            .font(.system(size: 40))
        Button("Mostrar Pantalla") {
            self.showSheet.toggle()
        }
        .buttonStyle(.bordered)
        .tint(.red)
        .fullScreenCover(isPresented: $showSheet) {
            Text("Pantalla Vista")
                .padding(.bottom, 30)
                .presentationDetents([.medium, .large])
            Button("Volver atrás") {
                self.showSheet = false
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
