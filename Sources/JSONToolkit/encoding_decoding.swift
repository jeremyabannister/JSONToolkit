//
//  encoding_decoding.swift
//  
//
//  Created by Jeremy Bannister on 12/3/22.
//

///
public extension Data {
    
    ///
    func jsonDecoded <T: Decodable> (as type: T.Type = T.self) throws -> T {
        do {
            return try JSONDecoder().decode(type, from: self)
        } catch {
            throw "DecodingError: \(error), Data: \(self.humanReadableDescription)".asErrorMessage()
        }
    }
}

///
public extension Encodable {
    
    ///
    func asJSONString () throws -> String? {
        try self
            .asJSONData()
            .utf8String
    }
}

///
public extension Encodable {
    
    ///
    func asJSONData () throws -> Data {
        try JSONEncoder()
            .encode(self)
    }
}
