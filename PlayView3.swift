//
//  PlayView3.swift
//  Masal
//
//  Created by Özge Oğuz on 4.02.2024.
//

import SwiftUI
import AVFoundation
struct PlayView3: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var sliderValue: Double = 10
    var isPlaying = false
    var body: some View {
        ZStack {
            Image("stars")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("The Little Mermaid").font(.title)
                    .foregroundColor(.pink)
                Slider(value: $sliderValue)
                    .padding()
                HStack{
                    Button(action: {
                        self.audioPlayer.play()
                    }, label: {
                        Image(systemName: "play.fill")
                    })
                    .padding()
                    Button(action: {
                        self.audioPlayer.pause()
                    }, label: {
                        Image(systemName: "pause.fill")
                    })
                }
            }
        }.onAppear{
            let TheMermaid = Bundle.main.path(forResource: "TheLittleMermaid", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: TheMermaid!))
        }
    }
}

#Preview {
    PlayView3()
}
