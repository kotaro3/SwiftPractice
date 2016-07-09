//
//  ViewController.swift
//  swiftpractice
//
//  Created by kotaro on 2016/06/11.
//  Copyright © 2016年 kotaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var charactorImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAction(sender: AnyObject) {
        let imageNameKaede = UIImage(named:"kaede_is_god")
        let imageNameGorira = UIImage(named:"ゴリラもどき")
        let imageNameAntoni = UIImage(named:"アントニー")

        if self.charactorImage.image == imageNameKaede {
            self.mainTitle.hidden = false
            self.mainTitle.text = "殺伐としたアプリに小泉花陽が！！"
            self.label.text = "前川さん"
        }else if self.charactorImage.image == imageNameGorira {
            self.mainTitle.hidden = false
            self.mainTitle.text = "ウホッウホッウホッウホッウホッウホッウホッウホッウホッウホッ"
            self.label.text = "ウホッウホッ"
        }else if self.charactorImage.image == imageNameAntoni {
            self.mainTitle.hidden = false
            self.mainTitle.text = "アントニー"
            self.label.text = "あっ、ピザだ！！"
        }
    }

    @IBAction func selectImage(sender: AnyObject) {
        let selectCharactorImage:UIAlertController = UIAlertController(title:"画像選択",
                                                        message: "好きなキャラを選んでください",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
        let kaede:UIAlertAction = UIAlertAction(title: "高垣楓", style: UIAlertActionStyle.Default) { (action:UIAlertAction) -> Void in
            let imageName = UIImage(named:"kaede_is_god")
            self.charactorImage.image = imageName
        }
        
        let gorira:UIAlertAction = UIAlertAction(title: "ゴリラ", style: UIAlertActionStyle.Default) { (action:UIAlertAction) -> Void in
            let imageName = UIImage(named:"ゴリラもどき")
            self.charactorImage.image = imageName
        }
        
        let antni:UIAlertAction = UIAlertAction(title: "アントニー", style: UIAlertActionStyle.Default) { (action:UIAlertAction) -> Void in
            let imageName = UIImage(named:"アントニー")
            self.charactorImage.image = imageName
        }
        
        selectCharactorImage.addAction(kaede)
        selectCharactorImage.addAction(gorira)
        selectCharactorImage.addAction(antni)
        
        presentViewController(selectCharactorImage, animated:true, completion: nil)
    }
}

