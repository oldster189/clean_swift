//
//  LevelSkillBase.swift
//
//  Created by itthipon wiwatthanasathit on 7/31/2560 BE
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class LevelSkillBase:NSObject, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let data = "data"
    static let success = "success"
  }

  // MARK: Properties
  public var data: [LevelSkillData]?
  public var success: Int?

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
    if let items = json[SerializationKeys.data].array { data = items.map { LevelSkillData(json: $0) } }
    success = json[SerializationKeys.success].int
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = data { dictionary[SerializationKeys.data] = value.map { $0.dictionaryRepresentation() } }
    if let value = success { dictionary[SerializationKeys.success] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.data = aDecoder.decodeObject(forKey: SerializationKeys.data) as? [LevelSkillData]
    self.success = aDecoder.decodeObject(forKey: SerializationKeys.success) as? Int
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(data, forKey: SerializationKeys.data)
    aCoder.encode(success, forKey: SerializationKeys.success)
  }

}
