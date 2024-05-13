//
//  MenuView.swift
//  Masal
//
//  Created by Özge Oğuz on 3.02.2024.
//
import SwiftUI
import AVFAudio
struct TalesView: View {
    @State private var selectedTab: Tab = .person
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
            
        NavigationStack{
            
            ZStack {
                VStack{
                    TabView(selection: $selectedTab) {
                        ForEach(Tab.allCases, id: \.rawValue) { tab in
                            HStack {
                                ZStack {
                                    Color.colorPurple.ignoresSafeArea(.all)
                                    ScrollView(.vertical, showsIndicators: false) {
                                            VStack(alignment: .center) {
                                                Text("Fairy Tales")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 25))
                                                    .bold()
                                                
                                                HStack{
                                                    NavigationLink {
                                                        PlayView1(audioPlayer: AVAudioPlayer())
                                                    } label: {
                                                        ZStack(alignment: .bottomLeading) {
                                                            Image("Cinderella")
                                                                .resizable()
                                                                .frame(width: 330, height: 330)
                                                                .opacity(0.8)
                                                            VStack(alignment:.leading) {
                                                                Text("Cinderella")
                                                                Text("Listen time: 12 min")
                                                            }
                                                            .padding()
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            .opacity(0.8)
                                                        }
                                                    }
                                                    .cornerRadius(30)
                                                    .shadow(color:.purple, radius: 10)
                                                }
                                                HStack{
                                                    NavigationLink {
                                                        PlayView2(audioPlayer: AVAudioPlayer())
                                                    } label: {
                                                        ZStack(alignment: .bottomLeading) {
                                                            Image("TheUglyDuckling")
                                                                .resizable()
                                                                .frame(width: 330, height: 330)
                                                                .opacity(0.8)
                                                            VStack(alignment:.leading) {
                                                                Text("The Ugly Duckling")
                                                                Text("Listen time: 2 min")
                                                            }
                                                            .padding()
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            .opacity(0.8)
                                                        }
                                                    }
                                                    .cornerRadius(30)
                                                }
                                                HStack{
                                                    NavigationLink {
                                                        PlayView3(audioPlayer: AVAudioPlayer())
                                                    } label: {
                                                        ZStack(alignment: .bottomLeading) {
                                                            Image("TheLittleMermaid")
                                                                .resizable()
                                                                .frame(width: 330, height: 330)
                                                                .opacity(0.8)
                                                            VStack(alignment:.leading) {
                                                                Text("The Little Mermaid")
                                                                Text("Listen time: 2 min")
                                                            }
                                                            .padding()
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            .opacity(0.8)
                                                        }
                                                    }
                                                    .cornerRadius(30)
                                                }
                                                HStack{
                                                    NavigationLink {
                                                        PlayView4(audioPlayer: AVAudioPlayer())
                                                    } label: {
                                                        ZStack(alignment: .bottomLeading) {
                                                            Image("Rapunzel")
                                                                .resizable()
                                                                .frame(width: 330, height: 330)
                                                                .opacity(0.8)
                                                            VStack(alignment:.leading) {
                                                                Text("Rapunzel")
                                                                Text("Listen time: 7 min")
                                                            }
                                                            .padding()
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            .opacity(0.8)
                                                            
                                                        }
                                                    }
                                                    .cornerRadius(30)
                                                }
                                                HStack{
                                                    NavigationLink {
                                                        PlayView5(audioPlayer: AVAudioPlayer())
                                                    } label: {
                                                        ZStack(alignment: .bottomLeading) {
                                                            Image("SnowWhiteandtheSevenDwarfs")
                                                                .resizable()
                                                                .frame(width: 330, height: 330)
                                                                .opacity(0.8)
                                                            VStack(alignment:.leading) {
                                                                Text("Snow White and the Seven Dwarfs")
                                                                Text("Listen time: 7 min")
                                                            }
                                                            .padding()
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            .opacity(0.8)
                                                            
                                                        }
                                                    }
                                                    .cornerRadius(30)
                                                }
                                                HStack{
                                                    NavigationLink {
                                                        PlayView6(audioPlayer: AVAudioPlayer())
                                                    } label: {
                                                        ZStack(alignment: .bottomLeading) {
                                                            Image("Pinocchio")
                                                                .resizable()
                                                                .frame(width: 330, height: 330)
                                                                .opacity(0.8)
                                                            VStack(alignment:.leading) {
                                                                Text("Pinocchio")
                                                                Text("Listen time: 3 min")
                                                            }
                                                            .padding()
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            .opacity(0.8)
                                                            
                                                        }
                                                    }
                                                    .cornerRadius(30)
                                                }
                                                HStack{
                                                    NavigationLink {
                                                        PlayView7(audioPlayer: AVAudioPlayer())
                                                    } label: {
                    //                                    Text("Puss In Boots")
                    //                                    Spacer()
                    //                                    Image(systemName: "plus")
                                                        ZStack(alignment: .bottomLeading) {
                                                            Image("PussInBoots")
                                                                .resizable()
                                                                .frame(width: 330, height: 330)
                                                                .opacity(0.8)
                                                            VStack(alignment:.leading) {
                                                                Text("Puss In Boots")
                                                                Text("Listen time: 5 min")
                                                            }
                                                            .padding()
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            
                                                            
                               
                                                        }
                                                    }
                                                    .padding()
                                                    .frame(width: 330,height: 330)
                                                    .cornerRadius(30)
                                                    .foregroundColor(.white)
                                                }
                                                Spacer()
                                                
                                            }
                                        }
                                    }
                            }
                            .tag(tab)
                        }
                    }
                }
                    VStack {
                        Spacer()
                        TabBarView(selectedTab: $selectedTab)
                    
                }
            }
            }
        }
    }

#Preview {
    TalesView()
}

