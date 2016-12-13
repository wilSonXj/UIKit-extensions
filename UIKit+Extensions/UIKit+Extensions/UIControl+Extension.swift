//
//  UIControl+Extension.swift
//  UIKit+Extensions
//
//  Created by WilsonXu on 16/7/12.
//  Copyright © 2016年 Wilson. All rights reserved.
//

import UIKit


private extension Selector {
//    static let getureTap = #selector(UITapGestureRecognizer.getureTap(_:))
    static let controlEvent = #selector(UIControl.controlEvent)
    
}


private class ObjectWrapper<T> {
    let value :T
    init(value:T) {
        self.value = value
    }
}

private var tapK = "TapActionComponent.tapK"

//extension UITapGestureRecognizer{
//    
//    typealias VoidHandle = ()->()
//    
//    private var tapHandle: ObjectWrapper<voidHandle>?{
//        get{
//            return objc_getAssociatedObject(self, &tapK) as! ObjectWrapper<voidHandle>?
//        }
//        set{
//            objc_setAssociatedObject(self, &tapK, newValue as! AnyObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
//        }
//    }
//    
//    func tapHandle(handle:voidHandle)->Self{
//        self.tapHandle = ObjectWrapper<voidHandle>(value:handle)
//        self.addTarget(self as! AnyObject, action: .getureTap)
//        return self
//    }
//    
//    func getureTap(ges:UITapGestureRecognizer){
//        self.tapHandle?.value()
//    }
//    
//}



class SingleParamHandle<T>{
    typealias HandleType = (T)->()
    
    let value :HandleType
    
    init(value:HandleType) {
        self.value = value
    }
    
    func handleAction(t:T){
        
    }
}


private var eu_control_k = "eu_control_k"

extension UIControl{
    
    typealias eu_Type = UIControl
    
    private var eu_handle: SingleParamHandle<eu_Type>{
        get{
            return objc_getAssociatedObject(self, &eu_control_k) as! SingleParamHandle<eu_Type>
        }
        set{
            objc_setAssociatedObject(self, &eu_control_k, newValue as AnyObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    
//    func eu_controlEvent<T>(events:UIControlEvents ,_ handle:(T)->()){
//        
////        SingleParamHandle<>
////        eu_handle = handle
////        self.addTarget(self, action: .controlEvent , forControlEvents: events)
//    }

    
    func controlEvent(){
        
    }
    
}



//extension UIButton{
//    
//    typealias eu_type = UIButton
//    
//    func eu_controlEvent(events:UIControlEvents ,_ handle:(eu_type)->()){
//        
//        let handle = SingleParamHandle<eu_type>(value: handle)
//        eu_handle = handle
//        
//        //        self.addTarget(self, action: .controlEvent , forControlEvents: events)
//    }
//}





