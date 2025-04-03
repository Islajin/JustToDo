//
//  AddViewController.swift
//  JustToDo
//
//  Created by yeonjin on 4/3/25.
//

import UIKit

class AddViewController: UIViewController {

    
    var listVC: ListViewController?
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    

    @IBAction func save(_ sender: Any) {
        guard let text = inputField.text else {
            
            let alert = UIAlertController(title: "알림", message: "메시지를 입력해 주세요.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
            return
                    }
        
        listVC?.toDoList.append(text)
        listVC?.toDoTableView.reloadData()
        //아울렛은 인스턴스 프로퍼티라서 바로 접근이 가능하고, 이건 테이블 뷰에게 새로운 데이터가 있다고 알려주는 것임
        dismiss(animated: true)
    }
    
    
      override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
