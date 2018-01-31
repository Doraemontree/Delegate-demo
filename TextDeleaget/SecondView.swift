//
//  SecondView.swift
//  TextDeleaget
//
//  Created by 何吉贵 on 2018/1/31.
//  Copyright © 2018年 何吉贵. All rights reserved.
//

import UIKit

 protocol SecondDelegate {
  func  backAction()
}
class SecondView: UIView {
    var delegate :SecondDelegate?
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.red
        UI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func UI() {
        let mybtn :UIButton = UIButton(frame:CGRect(x:140,y:300,width:90,height:50))
        mybtn.backgroundColor = UIColor.green
        mybtn.titleLabel?.text = "何吉贵"
        self .addSubview(mybtn)
        mybtn.addTarget(self, action: #selector(hejigui), for: UIControlEvents.touchUpInside)
        
    }
    @objc func hejigui () {
        print("adadad")
        delegate?.backAction()
    }
    func  backAction(){
        
    }
}
