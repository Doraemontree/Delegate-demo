//
//  SecondViewController.swift
//  TextDeleaget
//
//  Created by 何吉贵 on 2018/1/31.
//  Copyright © 2018年 何吉贵. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,SecondDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    @IBAction func CreatUIBtnAcion() {
        let myview:SecondView = SecondView(frame:CGRect(x:0,y:0,width:self.view.bounds.size.width,height:self.view.bounds.size.height))
            self.view .addSubview(myview)
            myview.delegate = self
    }
    
  
    @IBAction func BackBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    func  backAction(){
        self.navigationController?.popViewController(animated: true)
    }
   

}
