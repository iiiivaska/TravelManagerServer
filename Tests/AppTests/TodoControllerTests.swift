//
//  TodoControllerTests.swift
//  TravelManagerServer
//
//  Created by Василий Буланов on 01.05.2025.
//

import VaporTesting
import Testing
import XCTest
@testable import App


@Suite("TodoDTO Tests")
struct TodoDTOTests {
    @Test("TodoDTO initialization works correctly")
    func testInitialization() throws {
        let dto = TodoDTO(id: UUID(), title: "Sample Title")
        #expect(dto.title == "Sample Title")
        #expect(dto.id != nil)
    }

    @Test("TodoDTO equality works")
    func testEquality() throws {
        let id = UUID()
        let dto1 = TodoDTO(id: id, title: "Title")
        let dto2 = TodoDTO(id: id, title: "Title")
        let dto3 = TodoDTO(id: id, title: "Different")

        #expect(dto1 == dto2)
        #expect(dto1 != dto3)
    }
}

