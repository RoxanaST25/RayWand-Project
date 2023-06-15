//
//  StoryPromptEntry.swift
//  Story-proj
//
//  Created by Main User on 2023-06-15.
//

import Foundation
import UIKit

class StoryPromptEntry {
  var number = 0
  var verb = ""
  var adjective = ""
  var noun = ""
  var image = UIImage(named: "object-object_box-of-books")
  var genre = StoryPrompts.Genre.scifi
  var text = ""
    

  init() {
    text = StoryPrompts.promptFor(genre: genre)
// this is what initializes the class with the properties made
  }
  func isValid() -> Bool {
    return !(verb.isEmpty && adjective.isEmpty && noun.isEmpty)
  }
}

extension StoryPromptEntry: CustomStringConvertible {
  var description: String {
    return text.replacingOccurrences(of: "<noun>", with: noun)
               .replacingOccurrences(of: "<verb>", with: verb)
               .replacingOccurrences(of: "<number>", with: String(number))
               .replacingOccurrences(of: "<adjective>", with: adjective)
  }
//    i can add static values to vars
//    print or po prints the description of every object
}
