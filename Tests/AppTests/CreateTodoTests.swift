//
//  CreateTodoTests.swift
//  TravelManagerServer
//
//  Created by Василий Буланов on 01.05.2025.
//

import VaporTesting
import Testing
import XCTest
@testable import App

@Suite("TodoDTOTests")
struct TodoDTOCreateTests {
    
    @Test("TodoDTO and Todo conversion")
    func testConversionToDTOAndBack() throws {
        let id = UUID()
        let todo = Todo()
        todo.id = id
        todo.title = "Sample"

        let dto = todo.toDTO()
        #expect(dto.title == "Sample")
        #expect(dto.id == id)
    }
}
