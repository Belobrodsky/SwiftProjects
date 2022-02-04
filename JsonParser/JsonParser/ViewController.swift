//
//  ViewController.swift
//  JsonParser
//
//  Created by Владимир Белобродский on 04.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlString = "https://icodeschool.ru/json1.php"
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let error = error {
                print(error)
                return
            }

            guard let data = data else {return}
//            let jsonString = String(data: data, encoding: .utf8)
//            print(jsonString)
            do{
                let lessons  = try JSONDecoder().decode([Lesson].self, from: data)
                print(lessons[0].name)
            } catch {
                print(error)
            }
            
            
            
            
            
        }.resume()
        
        
    }


}

