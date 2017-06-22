//
//  SecondViewController.swift
//  sampleSettingFunction
//
//  Created by Eriko Ichinohe on 2017/06/21.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myDefault = UserDefaults.standard
        
        //UserDefaultからdataをとりだす
        //もし保存されている情報が存在しない場合、trueを初期値とする
        var imageSwitchFlag = true
        
        if myDefault.object(forKey: "imageSwitchFlag") != nil {
            imageSwitchFlag = myDefault.object(forKey: "imageSwitchFlag") as! Bool
        }
        
        imageSwitch.isOn = imageSwitchFlag as! Bool
    
    }
    
    @IBAction func changeImageSwitch(_ sender: UISwitch) {
        
        var myDefault = UserDefaults.standard
        
        // データを書き込んで
        myDefault.set(sender.isOn, forKey: "imageSwitchFlag")
        
        // 即反映させる
        myDefault.synchronize()
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

