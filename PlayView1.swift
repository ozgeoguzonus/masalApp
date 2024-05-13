//
//  DetailView.swift
//  Masal
//
//  Created by Özge Oğuz on 21.01.2024.
//

import SwiftUI
import AVFoundation

struct PlayView1: View {
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
                Text("Cinderella").font(.title)
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
            let Cinderella = Bundle.main.path(forResource: "Cinderella", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: Cinderella!))
        }
    }
}

#Preview {
    PlayView1()
}
