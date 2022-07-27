//
//  ViewController.swift
//  UINavigationViewController2
//
//  Created by Дмитрий Процак on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        //creating switch
        let simpleSwitch = UISwitch()
        simpleSwitch.isOn = true
        simpleSwitch.addTarget(self, action: #selector(switchIsChange(param:)), for: .valueChanged)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: simpleSwitch)
        
        
        
       //creating bar button item
       navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(performAdd(parameter:)))
        
    
      
        //createImageTitleView()
        
    }
    
   
    //MARK: - Method switch
    @objc func switchIsChange(param: UISwitch) {
        if param.isOn {
            print("switch is on")
        } else {
            print("switch is off")
        }
    }
    
    
    
    
    
    //MARK: - Method bar button item
     @objc func performAdd(parameter: UIBarButtonItem) {
        print("Add click")
    }
    
    
    
    
    
    
    
    
    
    
    
    //MARK: - Method creating image
    /*
    fileprivate func createImageTitleView() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        imageView.contentMode = .scaleAspectFit
        //подтянули фотку
        let image = UIImage(named: "apple")
        //присвоили
        imageView.image = image
        
        //добавление тайтла картинки
        navigationItem.titleView = imageView
    }

     */
    
}

