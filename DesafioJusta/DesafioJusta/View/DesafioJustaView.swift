//
//  ContentView.swift
//  DesafioJusta
//
//  Created by Carol Bezerra on 19/06/23.
//

import SwiftUI

struct DesafioJustaView: View {
    @State private var input: String = "" // texto escrito por usuária
    @State private var output: String = "" // retorno à usuária

    @StateObject var testeJustaViewModel = DesafioJustaViewModel()

    var body: some View {
        VStack {
            TextField("", text: $input)
                .padding(8) // espaço interno
                .overlay( // sobrepõe a borda
                    RoundedRectangle(cornerRadius: 200) // bordas arredondadas
                        .stroke(Color("Justa-blue"), lineWidth: 2) // cor customizada e largura da linha
                )

            Button("show") { // label
                output = testeJustaViewModel.longestWord(sen: input) // ação
            }
            .padding(8) // espaço interno
            .buttonStyle(.borderedProminent) // estilo onde a cor preenche todo botão
            .tint(Color("Justa-blue")) // cor customizada

            Text(output) // saída da função

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DesafioJustaView()
    }
}
