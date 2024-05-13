//
//  SwiftUIView.swift
//  Masal
//
//  Created by Özge Oğuz on 4.02.2024.
//

import SwiftUI
import AVFoundation
struct PlayView2: View {
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
                Text("The Ugly Duckling").font(.title)
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
            let TheUglyDuckling = Bundle.main.path(forResource: "TheUglyDuckling", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: TheUglyDuckling!))
        }
    }
}

#Preview {
    PlayView2()
}
