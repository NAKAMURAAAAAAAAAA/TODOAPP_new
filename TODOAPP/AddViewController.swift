//
//  AddViewController.swift
//  TODOAPP
//
//  Created by Kan Nakamura on 2019/11/09.
//  Copyright © 2019 Kan Nakamura. All rights reserved.
//
//  AddViewController.swift
import UIKit

//変数の設置
var TodoKobetsunonakami = [String]()

class AddViewController: UIViewController {

    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!
    

    //追加ボタンの設定
    
    @IBAction func TodoAddButton(_ sender: Any) {
        //変数に入力内容を入れる
        TodoKobetsunonakami.append(TodoTextField.text!)
        //追加ボタンを押したらフィールドを空にする
       TodoTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set( TodoKobetsunonakami, forKey: "TodoList" )
    }


    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
