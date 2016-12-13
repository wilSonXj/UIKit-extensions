//
//  ViewController.swift
//  UIKit+Extensions
//
//  Created by Wilson. on 16/7/12.
//  Copyright © 2016年 Wilson. All rights reserved.
// 66666777888

import UIKit



class Test{
    
    weak var label:UILabel?
    
    static let instance = Test()
    
    
}



class ViewControllerTest: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(title: "Test", style: .Plain, target: self, action: #selector(self.test))
        self.navigationItem.rightBarButtonItem = item
        
    }
    
    func test(){
        print(Test.instance.label)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        print(vc.nameLabel)
        let test = Test.instance
        test.label = vc.nameLabel
        
    }
    
}



class ViewController: UIViewController {

    var nameLabel : UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(nameLabel)
        
        let item = UIBarButtonItem(title: "Test", style: .Plain, target: self, action: #selector(self.test))
        self.navigationItem.rightBarButtonItem = item
        
    }
    
    func test(){
        print(Test.instance.label)
    }
}

