//
//  TextPicker.swift
//  ToDoList
//
//  Created by Алишер Маликов on 21.08.2023.
//

import UIKit

class TextPicker {
    func showPicker(in viewController: UIViewController, competion: @escaping ((String) -> Void)) {
        let alertController = UIAlertController(title: "ToDoItem", message: nil, preferredStyle: .alert)
        alertController.addTextField()
        
        let actionOk = UIAlertAction(title: "Ok", style: .default) { _ in
            if let text = alertController.textFields?.first?.text, text != "" {
                competion(text)
            }
        }
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        
        viewController.present(alertController, animated: true)
    }
}
