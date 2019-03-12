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
        0:Professional(title: "Developer", imageName:"developer.jpg", description: "One who programs computers or designs the system to match the requirements of a systems analyst."),
        1:Professional(title: "UXDesigner", imageName:"designer.png", description: "Measure and optimise applications (usually web based) to improve ease of use (usability), and create the best user experience."),
        2:Professional(title: "Project Manager", imageName:"projectManager.jpg", description: "The person in charge of a specific project or projects within a company. As the project manager, your job is to plan, budget, oversee and document all aspects of the specific project you are working on.")
    ]
    
    override func awakeFromNib(){
        super.awakeFromNib()
        self.splitViewController?.delegate = self
    }
    
    @IBAction func chooseButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Choose Job", sender: sender)
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
            if let button = sender as? UIButton{
                jdvc.professionalToDisplay = professionals[button.tag]
            }
        }
    }


}

