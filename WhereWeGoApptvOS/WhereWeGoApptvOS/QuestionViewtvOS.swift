//
//  ContentView.swift
//  VistaQuiztvOS
//
//  Created by Stefano Leva on 03/07/22.
//

import SwiftUI
import AVKit
import AVFoundation

struct QuestionViewtvOS: View {
    var bounds = UIScreen.main.bounds

    let avPlayer = AVPlayer(url: Bundle.main.url(forResource: "Alicante", withExtension: "mp4")!)
    
    var body: some View {
        
        
        
        ZStack{
            VideoPlayer(player: avPlayer)
                
                .onAppear(){
//                    avPlayer.play()
                }
            VStack(spacing:100){
                HStack(spacing:100){
                    let redButton =
                    Text("1")
                    .tint(.white)
                    .font(.system(size: 100.0, weight: .bold, design: .default))
                    .frame(width: bounds.size.width * 0.25, height: bounds.size.height * 0.25)

                    redButton.background(.red)

                    Spacer()

                    let greenButton =
                        Text("2")
                        .tint(.black)
                        .font(.system(size: 100.0, weight: .bold, design: .default))
                        .frame(width: bounds.size.width * 0.25, height: bounds.size.height * 0.25)

                    greenButton.background(.green)
                }
                .frame(width: 1700, height: 400)

                Spacer()

                HStack(spacing:100){
                    let blueButton =
                    Text("3")
                    .tint(.white)
                    .font(.system(size: 100.0, weight: .bold, design: .default))
                    .frame(width: bounds.size.width * 0.25, height: bounds.size.height * 0.25)

                    blueButton.background(.blue)

                    Spacer()

                    let purpleButton =                         Text("4")
                        .tint(.white)
                        .font(.system(size: 100.0, weight: .bold, design: .default))
                        .frame(width: bounds.size.width * 0.25, height: bounds.size.height * 0.25)

                    purpleButton.background(.purple)
                }
                .frame(width: 1700, height: 400)
            }
            HStack{
                Spacer()

                Rectangle()
                .cornerRadius(200)
                .frame(width: bounds.size.width * 0.3, height: bounds.size.height * 0.3)

                Spacer()
            }

            HStack{
                Spacer()

                Text("Domanda")
                    .foregroundColor(.black)
                    .font(.system(size: 70.0, weight: .bold, design: .default))
                    .frame(width: bounds.size.width * 0.3, height: bounds.size.height * 0.3)

                Spacer()
            }
        }
    }
}

struct QuestionViewtvOS_Previews: PreviewProvider {
    static var previews: some View {
        QuestionViewtvOS()
    }
}
