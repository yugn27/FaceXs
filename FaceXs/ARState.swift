//
//  ARState.swift
//  FaceXs
//
//  Created by Yash Nayak on 19/03/19.
//  Copyright © 2019 Yash Nayak. All rights reserved.
//

import ARKit

final class ARState {
    enum Change {
        case node(SCNNode?)
    }
    
    var onChange: ((ARState.Change) -> Void)?
    
    var node: SCNNode? {
        didSet{ onChange?(.node(node))}
    }
}
