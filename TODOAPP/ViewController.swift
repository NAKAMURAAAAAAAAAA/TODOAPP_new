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
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    
    //読み込み処理では、一度Data型で読み込んだものをNSKeyedUnarchiver.unarchiveObjecを使用してアンアーカイブ（デシリアライズ）します
    func loadSomeObjs() -> [TODO]?{
            if let loadedData = UserDefaults().data(forKey: "TodoList") {
                let todos = NSKeyedUnarchiver.unarchiveObject(with: loadedData) as! [TODO]
                return todos
            }else {
                return nil
            }
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
