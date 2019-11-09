//
//  AddViewController.swift
//  TODOAPP
//
//  Created by Kan Nakamura on 2019/11/09.
//  Copyright © 2019 Kan Nakamura. All rights reserved.
//
//  AddViewController.swift
import UIKit

//インスタンスの作成
var TODOS = [TODO]()

class AddViewController: UIViewController {

    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!
    
    //セル背景色の配列作成
    var bgcolor:Int = 0
    
    //色指定ボタンの設定
    @IBAction func BlueButton(_ sender: Any) {
        bgcolor = 0
        print("青ボタンの確認", bgcolor)
        
    }
    @IBAction func RedButton(_ sender: Any) {
         bgcolor = 1
         print("赤ボタンの確認", bgcolor)
    }
    
    //追加ボタンの設定
    @IBAction func TodoAddButton(_ sender: Any) {
        //変数に入力内容を入れる
        let todos = TODO(todo: TodoTextField.text!, color: bgcolor )
        print("todosの中身の確認", todos.todo!, todos.color!)
        TODOS.insert(todos, at: 0)
        //追加ボタンを押したらフィールドを空にする
       TodoTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set(NSKeyedArchiver.archivedData(withRootObject: TODOS), forKey: "TodoList")
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
