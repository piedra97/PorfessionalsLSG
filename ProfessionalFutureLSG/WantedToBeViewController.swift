//
//  ViewController.swift
//  ProfessionalFutureLSG
//
//  Created by Alumne on 07/03/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import UIKit

class WantedToBeViewController: UIViewController, UISplitViewControllerDelegate {
    
    let professionals = [
        "developer":Professional(title: "Developer", imageName:"developer.jpg"),
        "uxDesigner":Professional(title: "UXDesigner", imageName:"designer.png"),
        "projectManager":Professional(title: "Project Manager", imageName:"projectManager.jpg")
    ]
    
    override func awakeFromNib(){
        super.awakeFromNib()
        self.splitViewController?.delegate = self
    }
    
    func splitViewController (
        _ splitViewController: UISplitViewController,
        collapseSecondary secondaryViewController: UIViewController,
        onto primaryViewController: UIViewController) -> Bool{
        if let navigationController = primaryViewController as? UINavigationController{
            if navigationController.visibleViewController != nil {
                return true
            }
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jdvc = segue.destination as? JobDescriptionViewController{
            if let segueIdentifier = segue.identifier{
                jdvc.professionalToDisplay = professionals[segueIdentifier]
            }
        }
    }


}

