//
//  HomeView.swift
//  loggler
//
//  Created by Dimerson Nunez on 12/29/23.
//

import SwiftUI

let headerHeight: CGFloat = 35
let tabBarHeight: CGFloat = 50

struct HomeView: View {
    // Properties
    
    let journalEntries = [
        JournalEntry(title: "Entry 1", text: " Entry 1 Entry 1 Entry 1v Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1v Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1v Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1 Entry 1",  likes: 10),
           JournalEntry(title: "Entry 2", text: "Text for entry 2", likes: 20),
           JournalEntry(title: "Entry 1", text: "Text for entry 1", likes: 10),
           JournalEntry(title: "Entry 2", text: "Text for entry 2", likes: 20),
           // Add more entries as needed
       ]
    @State private var currentIndex = 0

   
    init() {
        UIScrollView.appearance().bounces = false
    }

    var body: some View {
            VStack {
                Image("log") // Header image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 35)

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(journalEntries) { entry in
                            JournalEntryView(entry: entry)
                                .frame(width: UIScreen.main.bounds.width)
                        }
                    }
                }
            }
        }
}


struct Home_Preview: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}

extension View {
    func getRect() ->CGRect{
        UIScreen.main.bounds
    }
}
