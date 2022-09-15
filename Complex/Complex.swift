//
//  Complex.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import UIKit
import Foundation

struct Complex {
    let name: String
    let picName: String
    let textView: String
}

extension Complex {
    static func createComplex() -> [Complex] {
        return [Complex(name: "Самолёт", picName: "Самолёт", textView: ""),
                Complex(name: "Большой", picName: "Большой", textView: ""),
                Complex(name: "Гарантия на Карякина", picName: "Гарантия на Карякина", textView: ""),
                Complex(name: "Кубанский", picName: "Кубанский", textView: ""),
                Complex(name: "Лучший", picName: "Лучший", textView: ""),
                Complex(name: "Москва", picName: "Москва", textView: ""),
                Complex(name: "Оскар", picName: "Оскар", textView: ""),
                Complex(name: "Ривьера", picName: "Ривьера", textView: ""),
                Complex(name: "Сказка", picName: "Сказка", textView: ""),
                Complex(name: "Тургенев", picName: "Тургенев", textView: ""),
                Complex(name: "Оникс", picName: "Оникс", textView: ""),
                Complex(name: "Адмирал", picName: "Адмирал", textView: ""),
                Complex(name: "Все Свои", picName: "Все свои", textView: ""),
                Complex(name: "Грин Парк", picName: "Грин Парк", textView: ""),
                Complex(name: "Каскад", picName: "Каскад", textView: ""),
                Complex(name: "Краснодар", picName: "Краснодар", textView: ""),
                Complex(name: "Премьера", picName: "Премьера", textView: ""),
                Complex(name: "Седьмой континент", picName: "Седьмой континент", textView: ""),
                Complex(name: "Центральный", picName: "Центральный", textView: ""),
                Complex(name: "Development Plaza", picName: "Development Plaza", textView: ""),
    
        ]
    }
}

