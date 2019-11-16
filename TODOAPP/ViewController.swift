//
//  ViewController.swift
//  TODOAPP
//
//  Created by Kan Nakamura on 2019/11/09.
//  Copyright © 2019 Kan Nakamura. All rights reserved.
//
//  ViewController.swift
import UIKit

//classの継承を追加
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return TODOS.count
    }

    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        //変数の中身を作る
        TodoCell.textLabel!.text = TODOS[indexPath.row].todo
        //背景色を決める
        if TODOS[indexPath.row].color == 0{
            TodoCell.backgroundColor = UIColor.blue
        }else{
            TodoCell.backgroundColor = UIColor.red
        }
        //文字色変える
        TodoCell.textLabel?.textColor = UIColor.white
        
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    
    //Userdefaultにあるデータを表示する
    override func viewDidLoad() {
        super.viewDidLoad()
        let loadedData = UserDefaults().data(forKey: "TodoList")
        if UserDefaults().data(forKey: "TodoList") != nil {
            TODOS = NSKeyedUnarchiver.unarchiveObject(with: loadedData!) as! [TODO]
        }
    }

    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
