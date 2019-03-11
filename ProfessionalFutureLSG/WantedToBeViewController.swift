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
        "developer":Professional(title: "Developer", imageName:"developer.jpg", description: "One who programs computers or designs the system to match the requirements of a systems analyst."),
        "uxDesigner":Professional(title: "UXDesigner", imageName:"designer.png", description: "Measure and optimise applications (usually web based) to improve ease of use (usability), and create the best user experience."),
        "projectManager":Professional(title: "Project Manager", imageName:"projectManager.jpg", description: "The person in charge of a specific project or projects within a company. As the project manager, your job is to plan, budget, oversee and document all aspects of the specific project you are working on.")
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

