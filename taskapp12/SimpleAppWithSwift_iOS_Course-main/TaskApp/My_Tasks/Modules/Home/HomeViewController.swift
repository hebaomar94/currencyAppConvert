//
//  HomeViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 04/11/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    //array contain date
    var myTasksTableViewList = [MyTask]()
    var myTasksCollectionViewList = [MyTask]()

    
    init() {
        super.init(nibName: String(describing: Self.self), 
                   bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "My Tasks"
      
        //tableview
        myTasksTableViewList = CoreDataManager().fetchMyTasks() ?? []
        
        
        
        
        //       .append(.init(title: "Pay Bill", date: "09:00 AM 16 OCT 2023", tag: .init(title: "Finance", color: .init(hex: 0x606AE9))))
//
//        myTasksTableViewList.append(.init(title: "Sugar Tablet", date: "10:30 AM 17 OCT 2023", tag: .init(title: "Health", color: .init(hex:0x53DF61))))
        
        
        
        
        //collectionview
//        myTasksCollectionViewList.append(.init(
//            id: "Task #233 ",
//        title: "Daily Gym Reminder",
//        date: "09:00 AM 16 OCT 2023 08:00 AM",
//        
//        tag: .init(title: "Finance",
//        color: .init(hex:0xE55C5C))))
//
//        myTasksCollectionViewList.append(.init(
//            id: "Task #234 ",
//            title: "Attend office meeting",
//            date: "15 OCT 2022 09:00 AM",
//       
//            tag: .init(title: "Meeting",
//            color: .init(hex:0xE55C5C))))
        
        setupTableView ()
  
    }
    
    
    @IBAction func addAction(_ sender: Any) {
        presentTask()
    }
    func presentTask(_ myTask: MyTask? = nil){
        let vc = addTaskViewController(myTask: myTask)
        present(vc, animated: true)
    }
}


