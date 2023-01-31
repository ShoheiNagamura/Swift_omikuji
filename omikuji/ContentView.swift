//
//  ContentView.swift
//  omikuji
//
//  Created by shouhei nagamura on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    
    @State var imageName = "omikuji"
    
    var body: some View {
        VStack(spacing:32){
            Image(imageName)
                .resizable()
                .frame(maxWidth: .infinity)
            HStack(spacing:16){
                Button("リセット"){
                    imageName = "omikuji"
                }
                .frame(maxWidth: .infinity, minHeight: 50) //サイズ
                .background(.red)  //背景のViewを設定するModifier, ColorというViewのgreenを指定(型推論でColorを省略)
                .foregroundColor(.white) //前面に表示されるView(ここでは"おみくじを引く"というText)の色を設定できるModifier
                
                Button("おみくじを引く"){
                    updateOmikujiImageView()
                }
                .frame(maxWidth: .infinity, minHeight: 50) //サイズ
                .background(.green)  //背景のViewを設定するModifier, ColorというViewのgreenを指定(型推論でColorを省略)
                .foregroundColor(.white) //前面に表示されるView(ここでは"おみくじを引く"というText)の色を設定できるModifier
            }
            
        }
        .padding(40.0)
    }
    
    func updateOmikujiImageView() { // 関数名はたいてい動詞が最初にきます
       let luckNumber = Int.random(in: 0...2)
       if luckNumber == 0 {
         imageName = "daikichi"
       } else if luckNumber == 1 {
         imageName = "kichi"
       } else {
         imageName = "kyou"
       }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
