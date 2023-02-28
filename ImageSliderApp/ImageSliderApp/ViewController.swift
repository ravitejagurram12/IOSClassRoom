//
//  ViewController.swift
//  ImageSliderApp
//
//  Created by Ajay Bandi on 9/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImageOutlet: UIImageView!
    
    @IBOutlet weak var crsNumOutlet: UILabel!
    
    @IBOutlet weak var crsTitleOutlet: UILabel!
    
    @IBOutlet weak var semOfferedOutlet: UILabel!
    
    @IBOutlet weak var previousButtonOutlet: UIButton!
    
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    let courses = [
        ["img01", "44555", "Network Security", "fall 2022"],
        
        ["img02", "44643", "Mobile Edge Computing", "Spring 2023"],
        
        ["img03", "44656", "Data Streaming", "Summer 2023"]]
    
    var imageNum = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Display the first course (0th index) details.
        updateDetails(0)
        
        //Previous button is disabled.
        previousButtonOutlet.isEnabled = false
    }

    @IBAction func onClickPrevious(_ sender: Any) {
        //decrementing image number.
        imageNum -= 1;
        
        //display course details.
       updateDetails(imageNum)
        
        //Enable next button
        nextButtonOutlet.isEnabled = true;
        
        //once we are at the begining of array, the previous should be disabled.
        if(imageNum == 0){
            previousButtonOutlet.isEnabled = false;
        }
        
    }
    
    
    @IBAction func onClickNext(_ sender: Any) {
        //The details of the next course should be displayed.
        imageNum += 1;
        
        updateDetails(imageNum)
        
        //previous button should be enabled.
        previousButtonOutlet.isEnabled = true;
        
        //Once reaching end of array, next button should be disabled.
        if(imageNum == courses.count-1){
            //next button should be disabled.
            nextButtonOutlet.isEnabled = false
        }
        
    }
    
    func updateDetails(_ imageNum:Int){
        displayImageOutlet.image = UIImage(named: courses[imageNum][0])
        crsNumOutlet.text = courses[imageNum][1]
        crsTitleOutlet.text = courses[imageNum][2]
        semOfferedOutlet.text = courses[imageNum][3]
    }
    
}

