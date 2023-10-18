//
//  DetailViewController.swift
//  FinalAssignment2
//
//  Created by on 6/30/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    var addCal:Int = 0
    var masterViewController: MasterViewController!
    var itemIndex = 0
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mealTextField.text = masterViewController.objects[itemIndex].meal
        calorieLabel.text = masterViewController.objects[itemIndex].calories
    }
    
    
    
    
    @IBAction func savedPressed(_ sender: Any) {
        masterViewController.objects[itemIndex].meal = mealTextField.text!
        masterViewController.objects[itemIndex].calories = calorieLabel.text!
        masterViewController.tableView.reloadData()
        
        
    }
    
   
    
    
    @IBOutlet weak var mealTextField: UITextField!
    
    
    @IBOutlet weak var calorieLabel: UILabel!
    
    
   
    
    @IBAction func calorieSlider(_ sender: UISlider) {
        addCal = Int((sender.value))
       
         
         calorieLabel.text = String(Int(sender.value))
        
        
    }
    
    
    
    @IBAction func cancelPressed(_ sender: Any) {
        if masterViewController.newFlag {
        masterViewController.objects.remove(at: itemIndex)
        masterViewController.tableView.reloadData()
            masterViewController.newFlag = false
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
