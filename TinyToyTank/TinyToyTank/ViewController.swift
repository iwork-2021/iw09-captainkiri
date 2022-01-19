//
//  ViewController.swift
//  TinyToyTank
//
//  Created by 李正浩 on 2022/1/18.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    var tankAnchor: TinyToyTank._TinyToyTank?
    
    
    override func viewDidLoad() {
        
        // 1
        super.viewDidLoad()
        // 2
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        // 3
        arView.scene.anchors.append(tankAnchor!)
        
        tankAnchor!.turret?.setParent(
            tankAnchor!.tank, preservingWorldTransform: true)
    }
    

    
    @IBAction func tankLeft(_ sender: Any) {
        tankAnchor!.notifications.tankLeft.post()
    }
    
    @IBAction func tankForward(_ sender: Any) {
        tankAnchor!.notifications.tankForward.post()
    }
    
    @IBAction func tankRight(_ sender: Any) {
        tankAnchor!.notifications.tankRight.post()
    }
    
    
    @IBAction func turrentLeft(_ sender: Any) {
        tankAnchor!.notifications.turretLeft.post()
    }
    
    @IBAction func fire(_ sender: Any) {
        tankAnchor!.notifications.cannonFire.post()
    }
    
    @IBAction func turrentRight(_ sender: Any) {
        tankAnchor!.notifications.turretRight.post()
    }
    
}



