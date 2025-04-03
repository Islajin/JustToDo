//
//  ViewController.swift
//  JustToDo
//
//  Created by yeonjin on 4/3/25.
//

import UIKit

class ListViewController: UIViewController {

    
    @IBOutlet weak var toDoTableView: UITableView!
    var toDoList = [String]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // UIStoryboardSegue 실행중인 segue 객체, sender : Any
        //sender은 호출한 객체 , 다양한 뷰가 sender가 될 수 있음, sender가 없는 경우도 있음
        if let vc = segue.destination.children.first as? AddViewController {
         vc.listVC = self
            //as는 타입캐스팅 연산자
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text=toDoList[indexPath.row]
        return cell
    }
    
    
}

