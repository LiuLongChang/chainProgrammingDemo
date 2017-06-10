//
//  ViewController.swift
//  ChainProgrammingDemo
//
//  Created by 刘隆昌 on 2017/6/10.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var result = NSObject.makeCalculates { (make:CalculateManager) in
            
            
            make.add(value: 1)().add(value: 2)().add(value: 3)().add(value: 4)();
            
            
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


class CalculateManager: NSObject {
    
    var result : Int! = 0
    
    func add(value:Int)->((Void)->CalculateManager){
        return {(Void)->CalculateManager in
            self.result = self.result + value;
            return self;
        }
    }
    
    
    func sub(value:Int)->((Void)->CalculateManager){
        return {Void->CalculateManager in
            self.result = self.result - value;
            return self;
        }
    }
    
    func multiple(value:Int)->((Void)->CalculateManager){
        return {(Void)->CalculateManager in
            self.result = self.result * value;
            return self;
        }
    }
    
    func divide(value:Int)->((Void)->CalculateManager){
        return {(Void)->CalculateManager in
            self.result = self.result / value
            return self;
        }
    }
    
}


extension NSObject{

    class func makeCalculates(block:(CalculateManager)->Void)->Int{
        let mgr = CalculateManager()
        block(mgr)
        return mgr.result;
    }


}















