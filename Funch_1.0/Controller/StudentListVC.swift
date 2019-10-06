//
//  StudentListVC.swift
//  Funch_1.0
//
//  Created by Guillermo Ramos  on 10/5/19.
//  Copyright © 2019 Guillermo Ramos . All rights reserved.
//

import UIKit
class StudentListVC: UIViewController {
    
    var tableView = UITableView()
    var students: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        students = fetchData()
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(StudentCell.self, forCellReuseIdentifier: "StudentCell")
        tableView.pin(to: view)
        
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    

}
extension StudentListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell") as! StudentCell
        let student = students[indexPath.row]
        cell.set(student: student)
        
        return cell
    }
    
    
}

extension StudentListVC {
    func fetchData() -> [Student] {
        let student1 = Student(image: Images.food1, name: "Sarah")
        let student2 = Student(image: Images.food2, name: "Guillermo")
        let student3 = Student(image: Images.food3, name: "Iris")
        let student4 = Student(image: Images.food4, name: "Diego")
        let student5 = Student(image: Images.food5, name: "Mario")
        
        return [student1, student2, student3, student4, student5]
    }
}
