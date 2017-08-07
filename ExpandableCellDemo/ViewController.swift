//
//  ViewController.swift
//  ExpandableCellDemo
//
//  Created by YiSeungyoun on 2017. 8. 6..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit
import ExpandableCell

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = ExpandableTableView()
        tableView.expandableDelegate = self
        tableView.register(UINib(nibName: "ExpandableNormalCell", bundle: nil), forCellReuseIdentifier: ExpandableNormalCell.ID)
        tableView.register(UINib(nibName: "ExpandableExpandedCell", bundle: nil), forCellReuseIdentifier: ExpandableExpandedCell.ID)
        tableView.register(UINib(nibName: "ExpandableExpandableCell", bundle: nil), forCellReuseIdentifier: ExpandableExpandableCell.ID)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: ExpandableDelegate {
    func numberOfSections(in tableView: ExpandableTableView) -> Int {
        return 2
    }

    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectRowAt indexPath: IndexPath, expandableCellStyle: ExpandableCellStyle, isExpanded: Bool) {
        print()
    }
    
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> ExpandableCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0,1,4:
                let cell =
            default:
                <#code#>
            }
        case 1:
            break
        default:
            break
        }
        
        return ExpandableCell()
    }
    
}
