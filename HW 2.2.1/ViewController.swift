//
//  ViewController.swift
//  HW 2.2.1
//
//  Created by Denis Medvedev on 26/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var rgbLabels: [UILabel]!
    @IBOutlet var rgbTFs: [UITextField]!
    @IBOutlet var rgbSliders: [UISlider]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for rgbTF in rgbTFs {
            rgbTF.delegate = self
        }
        rgbSlide()
    }
    
    //скрытие клавиатуры по тапу по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //функция кнопки return на клавиатуре
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //скрывает клавиатуру
        textField.resignFirstResponder()
        return true
    }

    //общий IBAction для редактрирования цвета
    @IBAction func rgbSlide() {
        for i in stride(from: 0, to: 3, by: 1){
            rgbLabels[i].text = String(round(rgbSliders[i].value * 100) / 100)
            rgbTFs[i].text = String(round(rgbSliders[i].value * 100) / 100)
        }
        rgbView.backgroundColor = UIColor(red: CGFloat(rgbSliders[0].value),
                                          green: CGFloat(rgbSliders[1].value),
                                          blue: CGFloat(rgbSliders[2].value),
                                          alpha: 1.0)
    }
    
//    Действие при редактрировании текстрового поля
    @IBAction func editTF() {
        for (rgbTF, rgbSlider) in zip(rgbTFs, rgbSliders) {
//          если удалось извлечь цифру
            if let colorValue: Float = Float(rgbTF.text!) {
                rgbSlider.value = colorValue
                rgbSlide()
            }
            else
            {
                let alert = UIAlertController(title: "Error", message: "Please, enter a number in range 0..1", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                present(alert, animated: true)
            }
        }
    }
}

