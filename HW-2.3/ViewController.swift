//
//  ViewController.swift
//  HW-2.3
//
//  Created by Denis Yarets on 30/09/2023.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSliders()
        setLabels()
        
        setColorView()
    }
    
    override func viewDidLayoutSubviews() {
        colorView.layer.cornerRadius = colorView.frame.height * 0.1
    }

    @IBAction func sliderRedAction() {
        setColorView()
        setLabels()
    }
    
    @IBAction func sliderGreenAction() {
        setColorView()
        setLabels()
    }
    
    @IBAction func sliderBlueAction() {
        setColorView()
        setLabels()
    }
    
}

private extension ViewController {
    
    func setSliders() {
        func setSlider(for slider: UISlider, color: UIColor, value: Float) {
            slider.minimumTrackTintColor = color
            slider.minimumValue = Float(0)
            slider.maximumValue = Float(1)
            slider.value = value
        }
        setSlider(for: sliderRed, color: .red, value: 1.0)
        setSlider(for: sliderGreen, color: .green, value: 0.5)
        setSlider(for: sliderBlue, color: .blue, value: 0.15)
    }
    
    func setLabels() {
        labelRed.text = String(format: "%.2f", sliderRed.value)
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
    }
    
    func setColorView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1.0)
    }
    
}
