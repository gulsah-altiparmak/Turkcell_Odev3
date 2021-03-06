//
//  ViewController.swift
//  Turkcell_Odev3
//
//  Created by Gulsah Altiparmak on 17.01.2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    
    let dataSource = ["Belleğin Azmi","Sokak Manzarası","Scuola Di Atene","Göl Kenarı","Yıldızlı Gece","Son Akşam Yemeği","Gece Devriyesi","Guernica","Whistlerin Annesi","Venüs'ün Doğuşu"]
    var arr:[Art] = []
    var selected = 0
    var uiTextDesign = UIDesign()
   
    @IBOutlet weak var txtPictureName: UITextField!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var txtDetail: UITextView!
    @IBOutlet weak var pvImage: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pvImage.dataSource = self
        pvImage.delegate = self
        txtDetail.layer.borderWidth = 0.3
        txtDetail.layer.borderColor = UIColor.systemGray.cgColor
        txtDetail.layer.cornerRadius=5.5
        txtDetail.layer.masksToBounds=true
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAdd(_ sender: UIButton) {
      
        dataResult()
    }
    
    func dataResult() {
       var data = Art()
        data.title = txtPictureName.text!
        data.detail = txtDetail.text!
        data.price = Double(txtPrice.text!)!
        data.image = UIImage(named: "\(selected)")!
        //print(data)
        arr.append(data)
        //print(arr)
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
  
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       selected = row
      
    }
    

    @IBAction func btnSend(_ sender: UIButton) {
        performSegue(withIdentifier: "createList", sender: arr)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if ( segue.identifier == "createList" ) {
            let vc = segue.destination as! ArtTableView
            vc.item = sender as! [Art]
        }
    }
    
    
    
}

