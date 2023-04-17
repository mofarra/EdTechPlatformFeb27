//
//  Models.swift
//  EdTechPlatformApp
//
//  Created by Mohamad Alfarra on 3/1/23.
//

import Foundation

struct Module: Decodable, Identifiable{
    var id: Int
    var category: String //fix capital C to small c
    var content: Content
    var quiz: Quiz
    
}

struct Content: Decodable, Identifiable{
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: [Lesson]
}

struct Lesson: Decodable, Identifiable{
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}

struct Quiz: Decodable, Identifiable{
    var id:Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
}

struct Question: Decodable, Identifiable{
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}


