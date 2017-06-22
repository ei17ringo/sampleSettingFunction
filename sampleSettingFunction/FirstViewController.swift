//
//  FirstViewController.swift
//  sampleSettingFunction
//
//  Created by Eriko Ichinohe on 2017/06/21.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var articleTextView: UITextView!
    
    @IBOutlet weak var newsImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var myDefault = UserDefaults.standard
        
        //UserDefaultからdataをとりだす
        //もし保存されている情報が存在しない場合、trueを初期値とする
        var imageSwitchFlag = true
        
        if myDefault.object(forKey: "imageSwitchFlag") != nil {
            imageSwitchFlag = myDefault.object(forKey: "imageSwitchFlag") as! Bool
        }
        
        if imageSwitchFlag as! Bool {
            newsImage.isHidden = false
            
        }else{
            // imageSwitchFlagにFalseが入っていたら画像を隠す
            newsImage.isHidden = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

