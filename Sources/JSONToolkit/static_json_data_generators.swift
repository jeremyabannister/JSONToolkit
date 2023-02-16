//
//  static_json_data_generators.swift
//  
//
//  Created by Jeremy Bannister on 12/3/22.
//

///
extension Data {
    
    ///
    public static var emptyJSONObject: Self { "{}".utf8Data }
}

///
extension Data {
    
    ///
    public static func jsonData (from value: some Encodable) throws -> Self {
        try value.asJSONData()
    }
}

///
extension Data {
    
    ///
    public static func jsonDouble (_ double: Double) -> Self {
        try! double.asJSONData()
    }
}

///
extension Data {
    
    ///
    public static func jsonInt (_ int: Int) -> Self {
        try! int.asJSONData()
    }
}

///
extension Data {
    
    ///
    public static func jsonBool (_ bool: Bool) -> Self {
        try! bool.asJSONData()
    }
}
