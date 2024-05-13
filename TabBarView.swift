//
//  TabBarView.swift
//  Masal
//
//  Created by Özge Oğuz on 7.02.2024.
//

import SwiftUI

enum Tab: String, CaseIterable, Hashable {
    case house
    case message
    case person
    case leaf
    case gearshape
}
struct ContentView: View {
    
    @State private var selectedTab: Tab = .house // Varsayılan olarak "house" sekmesini seçili yapalım

    var body: some View {
            NavigationView {
                ZStack {
                    switch selectedTab {
                    case .house:
                        Text("House View")
                    case .message:
                        Text("Message View")
                    case .person:
                        Text("Person View")
                    case .leaf:
                        Text("Leaf View")
                    case .gearshape:
                        NavigationLink(destination: SettingsView()) {
                            Text("Gearshape View")
                        }
                    }
                    TabBarView(selectedTab: $selectedTab)
                        .edgesIgnoringSafeArea(.bottom)
                }
            }
        }
}

struct TabBarView: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch selectedTab {
        case .house:
            return .blue
        case .message:
            return .green
        case .person:
            return .indigo
        case .leaf:
            return .green
        case .gearshape:
            return .orange
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                Spacer()
                    Image(systemName: selectedTab == tab ? fillImage :
                    tab.rawValue)
                    .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                    .foregroundColor(selectedTab == tab ? tabColor : .gray)
                    .font(.system(size: 22))
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.1)) {
                            selectedTab = tab
                        }
                    }
                Spacer()
                }
            }
                .frame(width: nil, height: 60)
                .background(Color.colorPurple2.opacity(0.9))
                .cornerRadius(30)
                .padding()
            
        }
    }
}

#Preview {
    TabBarView(selectedTab: .constant(.house))
}

