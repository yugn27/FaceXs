//
//  DataController.swift
//  FaceXs
//
//  Created by Yash Nayak on 19/03/19.
//  Copyright © 2019 Yash Nayak. All rights reserved.
//

import Foundation
class DataController {
    func loadJson(_ fileName: String) -> [Commencer]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Commencer].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
