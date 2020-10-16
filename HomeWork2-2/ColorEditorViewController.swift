//
//  ColorEditorViewController.swift
//  HomeWork2-2
//
//  Created by Dmitry Shcherbakov on 15.10.2020.
//

import UIKit

class ColorEditorViewController: UIViewController {
    
    @IBOutlet var resultColorView: UIView!
    
    @IBOutlet var redColorValueLabel: UILabel!
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var blueColorValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultColorView.layer.cornerRadius = 10
        
        setupDefaultValuesForSliders()
        setupTextForColorLabels()
        refreshBackgroundColorForResultColorView()
    }

    @IBAction func redSliderAction() {
        refreshTextForRedColorLabel()
        refreshBackgroundColorForResultColorView()
    }
    
    @IBAction func greenSliderAction() {
        refreshTextForGreenColorLabel()
        refreshBackgroundColorForResultColorView()
    }
    
    @IBAction func blueSliderAction() {
        refreshTextForBlueColorLabel()
        refreshBackgroundColorForResultColorView()
    }
    
    private func setupDefaultValuesForSliders() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0.6
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 0.3
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func setupTextForColorLabels() {
        refreshTextForRedColorLabel()
        refreshTextForGreenColorLabel()
        refreshTextForBlueColorLabel()
    }
    
    private func refreshTextForRedColorLabel() {
        redColorValueLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    private func refreshTextForGreenColorLabel() {
        greenColorValueLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    private func refreshTextForBlueColorLabel() {
        blueColorValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func refreshBackgroundColorForResultColorView() {
        resultColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
}
