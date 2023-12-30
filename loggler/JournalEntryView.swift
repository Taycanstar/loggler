//
//  JournalEntryView.swift
//  loggler
//
//  Created by Dimerson Nunez on 12/29/23.
//

import SwiftUI

struct JournalEntry: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var likes: Int
}



struct JournalEntryView: View {
    var entry: JournalEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 10) { // Align VStack contents to the leading edge
            Text(entry.title)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading) // Align title to the leading edge

            Text(entry.text)
                .frame(maxWidth: .infinity, alignment: .leading) // Align text to the leading edge
            Spacer()
            HStack {
                Spacer()
                Text("Likes: \(entry.likes)")
                Image(systemName: "heart")
                 // Pushes content to the left
            }
            .frame(maxWidth: .infinity, alignment: .leading) // Align HStack to the leading edge
        }
        .padding()
    }
}

