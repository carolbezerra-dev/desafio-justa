//
//  DesafioJustaViewModel.swift
//  TestJusta
//
//  Created by Carol Bezerra on 19/06/23.
//

import Foundation
import SwiftUI

class DesafioJustaViewModel: ObservableObject {

    @Published private(set) var longest: String = "" // resultado da função

    func longestWord(sen: String) -> String {

        let okayChars = Set("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890")
        // caracteres que são aceitáveis
        let noChars = sen.filter {okayChars.contains($0) }
        // remove caracteres que não são aceitáveis da string recebida no parâmetro

        let senSplited = noChars.split(separator: " ")
        // separa a string usando o espaço como referência, cada palavra se torna 1 item do array

        var count = 0 // contar o tamanho
        for word in senSplited { // para cada palavra do array
            if word.count > count && word.count != count {
                // compara se seu tamanho é maior que o tamanho anterior e também é diferente do atual
                count = word.count
                // atualiza o count
                longest = String(word)
                // e também a variável
            }
        }

        return longest
    }
}
