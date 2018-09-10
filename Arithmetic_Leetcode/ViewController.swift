//
//  ViewController.swift
//  Arithmetic_Leetcode
//
//  Created by Hanser on 2018/9/10.
//  Copyright © 2018 Mr.H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @objc public var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ArithemeticList"
        
        initComponent()
    }
    
    func initComponent() {
        tableView = UITableView(frame: self.view.bounds)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TopicCell.classForCoder(), forCellReuseIdentifier: "TopicCell")
        self.view.addSubview(self.tableView)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath)
        cell.backgroundColor = UIColor.yellow
        cell.selectionStyle = UITableViewCellSelectionStyle(rawValue: 0)!
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        self.navigationController?.pushViewController(TestViewController(), animated: true)
    }
}
















