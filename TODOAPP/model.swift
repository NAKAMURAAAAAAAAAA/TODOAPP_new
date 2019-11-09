//
//  model.swift
//  TODOAPP
//
//  Created by Kan Nakamura on 2019/11/09.
//  Copyright © 2019 Kan Nakamura. All rights reserved.
//

import Foundation

//クラスの設置。NSObject, NSCodingを継承する
class TODO: NSObject, NSCoding {

    var todo: String!
    var color: Int!

    init(todo: String, color: Int) {
        self.todo = todo
        self.color = color
    }

    //エンコード、デコード処理を記述する
    required init?(coder aDecoder: NSCoder) {
        self.todo = aDecoder.decodeObject(forKey: "todo") as! String
        self.color = aDecoder.decodeObject(forKey: "color") as! Int
    }
    func encode(with aCoder: NSCoder) {
        if let todo = todo { aCoder.encode(todo, forKey: "todo") }
        if let color = color { aCoder.encode(color, forKey: "color") }
    }
}
