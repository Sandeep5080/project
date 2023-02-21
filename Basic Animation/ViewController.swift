//
//  ViewController.swift
//  Basic Animation
//
//  Created by Sandeep Reddy on 04/01/23.
//

import UIKit

class ViewController: UIViewController {
    let myview = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myview.backgroundColor = .blue
        myview.center = view.center
        view.addSubview(myview)
    
    let mybutton = UIButton(frame: CGRect(x: (view.frame.size.width-200)/2, y: view.frame.size.height - 220, width: 200, height: 60))
     mybutton.backgroundColor = .systemGreen
        
        mybutton.setTitleColor(.white, for: .normal)
        mybutton.setTitle("start", for: .normal)
        mybutton.addTarget(self, action: #selector(animate), for: .touchUpInside)
        view.addSubview(mybutton)
    }
    
    @objc func animate() {
        UIView.animate(withDuration: 1, animations: {
            
            self.myview.frame = CGRect(x: 0, y:0, width: 400, height: 400)
            self.myview.center = self.view.center
        }, completion: { done in
            if done {
                self.shrink()
            }
            
        })
    }
    func shrink() {
        UIView.animate(withDuration: 1, animations: {
            self.myview.frame = CGRect(x: 0, y:0, width: 200, height: 200)
            self.myview.center = self.view.center
        }, completion: { done in
            if done {
                self.animate()
            }
            
        })
        
        
    }
    
    
}

