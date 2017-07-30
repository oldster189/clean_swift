//
//  LevelSkillData.swift
//
//  Created by itthipon wiwatthanasathit on 7/31/2560 BE
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class LevelSkillData:NSObject, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let nAME = "NAME"
    static let iDLEVEL = "ID_LEVEL"
    static let iDLANGUAGE = "ID_LANGUAGE"
  }

  // MARK: Properties
  public var nAME: String?
  public var iDLEVEL: String?
  public var iDLANGUAGE: String?

  // MARK: SwiftyJSON Initializers
  /// Initiates the instance based on the object.
  ///
  /// - parameter object: The object of either Dictionary or Array kind that was passed.
  /// - returns: An initialized instance of the class.
  public convenience init(object: Any) {
    self.init(json: JSON(object))
  }

  /// Initiates the instance based on the JSON that was passed.
  ///
  /// - parameter json: JSON object from SwiftyJSON.
  public required init(json: JSON) {
    nAME = json[SerializationKeys.nAME].string
    iDLEVEL = json[SerializationKeys.iDLEVEL].string
    iDLANGUAGE = json[SerializationKeys.iDLANGUAGE].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = nAME { dictionary[SerializationKeys.nAME] = value }
    if let value = iDLEVEL { dictionary[SerializationKeys.iDLEVEL] = value }
    if let value = iDLANGUAGE { dictionary[SerializationKeys.iDLANGUAGE] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.nAME = aDecoder.decodeObject(forKey: SerializationKeys.nAME) as? String
    self.iDLEVEL = aDecoder.decodeObject(forKey: SerializationKeys.iDLEVEL) as? String
    self.iDLANGUAGE = aDecoder.decodeObject(forKey: SerializationKeys.iDLANGUAGE) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(nAME, forKey: SerializationKeys.nAME)
    aCoder.encode(iDLEVEL, forKey: SerializationKeys.iDLEVEL)
    aCoder.encode(iDLANGUAGE, forKey: SerializationKeys.iDLANGUAGE)
  }

}
