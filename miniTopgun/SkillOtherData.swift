//
//  SkillOtherData.swift
//
//  Created by itthipon wiwatthanasathit on 7/31/2560 BE
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class SkillOtherData: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let iD = "ID"
    static let iDJSK = "ID_JSK"
    static let sKILLLEVELTH = "SKILL_LEVEL_TH"
    static let iDRESUME = "ID_RESUME"
    static let sKILLLEVELEN = "SKILL_LEVEL_EN"
    static let sKILLNAME = "SKILL_NAME"
    static let lEVELSKILL = "LEVEL_SKILL"
  }

  // MARK: Properties
  public var iD: String?
  public var iDJSK: String?
  public var sKILLLEVELTH: String?
  public var iDRESUME: String?
  public var sKILLLEVELEN: String?
  public var sKILLNAME: String?
  public var lEVELSKILL: String?

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
    iD = json[SerializationKeys.iD].string
    iDJSK = json[SerializationKeys.iDJSK].string
    sKILLLEVELTH = json[SerializationKeys.sKILLLEVELTH].string
    iDRESUME = json[SerializationKeys.iDRESUME].string
    sKILLLEVELEN = json[SerializationKeys.sKILLLEVELEN].string
    sKILLNAME = json[SerializationKeys.sKILLNAME].string
    lEVELSKILL = json[SerializationKeys.lEVELSKILL].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = iD { dictionary[SerializationKeys.iD] = value }
    if let value = iDJSK { dictionary[SerializationKeys.iDJSK] = value }
    if let value = sKILLLEVELTH { dictionary[SerializationKeys.sKILLLEVELTH] = value }
    if let value = iDRESUME { dictionary[SerializationKeys.iDRESUME] = value }
    if let value = sKILLLEVELEN { dictionary[SerializationKeys.sKILLLEVELEN] = value }
    if let value = sKILLNAME { dictionary[SerializationKeys.sKILLNAME] = value }
    if let value = lEVELSKILL { dictionary[SerializationKeys.lEVELSKILL] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.iD = aDecoder.decodeObject(forKey: SerializationKeys.iD) as? String
    self.iDJSK = aDecoder.decodeObject(forKey: SerializationKeys.iDJSK) as? String
    self.sKILLLEVELTH = aDecoder.decodeObject(forKey: SerializationKeys.sKILLLEVELTH) as? String
    self.iDRESUME = aDecoder.decodeObject(forKey: SerializationKeys.iDRESUME) as? String
    self.sKILLLEVELEN = aDecoder.decodeObject(forKey: SerializationKeys.sKILLLEVELEN) as? String
    self.sKILLNAME = aDecoder.decodeObject(forKey: SerializationKeys.sKILLNAME) as? String
    self.lEVELSKILL = aDecoder.decodeObject(forKey: SerializationKeys.lEVELSKILL) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(iD, forKey: SerializationKeys.iD)
    aCoder.encode(iDJSK, forKey: SerializationKeys.iDJSK)
    aCoder.encode(sKILLLEVELTH, forKey: SerializationKeys.sKILLLEVELTH)
    aCoder.encode(iDRESUME, forKey: SerializationKeys.iDRESUME)
    aCoder.encode(sKILLLEVELEN, forKey: SerializationKeys.sKILLLEVELEN)
    aCoder.encode(sKILLNAME, forKey: SerializationKeys.sKILLNAME)
    aCoder.encode(lEVELSKILL, forKey: SerializationKeys.lEVELSKILL)
  }

}
