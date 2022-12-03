//
//  static_json_data_generators.swift
//  
//
//  Created by Jeremy Bannister on 12/3/22.
//

///
public extension Data {
    
    ///
    static func jsonData (from value: some Encodable) throws -> Self {
        try value.asJSONData()
    }
}

///
public extension Data {
    
    ///
    static func jsonDouble (_ double: Double) -> Self {
        try! double.asJSONData()
    }
}

///
public extension Data {
    
    ///
    static func jsonInt (_ int: Int) -> Self {
        try! int.asJSONData()
    }
}

///
public extension Data {
    
    ///
    static func jsonBool (_ bool: Bool) -> Self {
        try! bool.asJSONData()
    }
}
