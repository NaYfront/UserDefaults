//
//  ViewController.swift
//  UserDefaults
//
//  Created by Алексей Горбунов on 02.11.2021.
//

import UIKit

class ViewController: UIViewController {

    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userSettings = createSettings()
        let encoder = JSONEncoder()
        let encodedUserSettings = try? encoder.encode(userSettings)
        
        userDefaults.set(encodedUserSettings, forKey: UserKeys.appSettings)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let encodedSettings = userDefaults.object(forKey: UserKeys.appSettings) as! Data
        let decoder = JSONDecoder()
        let userSettings = try? decoder.decode(UserSettings.self, from: encodedSettings)
        
        print(userSettings)
    }

}
