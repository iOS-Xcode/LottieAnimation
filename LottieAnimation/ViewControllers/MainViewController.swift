//
//  MainViewController.swift
//  LottieAnimation
//
//  Created by Seokhyun Kim on 2020-11-01.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel : UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Main View"
        label.font = UIFont.boldSystemFont(ofSize: 50)
        return label
    }()
    
    let animationView : AnimationView = {
        let aniView = AnimationView(name: "36348-haunted-bag-01")
        aniView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        //set this view, how to show,
        aniView.contentMode = .scaleAspectFill
        return aniView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(animationView)
        animationView.center = view.center
        
        //run animation
        animationView.play{ (finish) in
            print("finish animation")
            //delete animation from view.
            self.animationView.removeFromSuperview()
            self.view.addSubview(self.titleLabel)
            self.view.backgroundColor = .white
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

