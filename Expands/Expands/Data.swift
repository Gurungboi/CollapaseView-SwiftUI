//
//  Data.swift
//  Expands
//
//  Created by Sunil on 17/1/22.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let title: String
    let message: String
}

struct MockData {
    static func getData() -> Item {
        let data = Item(title: "What is Lorem Ipsum?",
                        message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
        return data
    }
}
