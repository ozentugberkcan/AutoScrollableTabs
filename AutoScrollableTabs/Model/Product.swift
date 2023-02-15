//
//  Product.swift
//  AutoScrollableTabs
//
//  Created by Tuğberk Can Özen on 15.02.2023.
//

import Foundation

struct Product: Identifiable, Hashable{
    var id: UUID = UUID()
    var type: ProductType
    var title: String
    var subtitle: String
    var price: String
    var productImage: String = ""
}

enum ProductType: String, CaseIterable {
    case iphone = "iPhone"
    case ipad = "iPad"
    case macbook = "MacBook"
    case desktop = "Mac Desktop"
    case appleWatch = "Apple Watch"
    case airpods = "Airpods"
}

var products: [Product] = [Product(type: .iphone, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .iphone, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .iphone, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .iphone, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .iphone, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .iphone, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),

                           Product(type: .ipad, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .ipad, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .ipad, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .ipad, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .ipad, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000"),
                           Product(type: .ipad, title: "iPhone", subtitle: "iPhone iyidir", price: "41.000")

]
