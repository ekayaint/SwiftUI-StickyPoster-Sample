//
//  ContentView.swift
//  SwiftUI-StickyPoster-Sample
//
//  Created by ekayaint on 18.08.2023.
//

import SwiftUI
var mesaj = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with
"""
struct ContentView: View {
  
    var body: some View {
        Home()
    }
}

struct Home : View{
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            GeometryReader {gr in
                Image("kapak")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y: -gr.frame(in: .global).minY)
                    .frame(width: UIScreen.main.bounds.width,
                           height: gr.frame(in: .global).minY > 0 ? gr.frame(in: .global).minY + 480 : 480)
                
            /*    VStack(spacing: 10){
                    Text("Min : \(gr.frame(in: .global).minY)")
                        .font(.system(size: 41))
                        .foregroundColor(.red)
                        .background(Color.gray)
                    Text("Max : \(gr.frame(in: .global).maxY)")
                        .font(.system(size: 41))
                        .foregroundColor(.blue)
                        .background(Color.gray)
                    
                } //: VStack
                .padding(.top, 45)
                .padding(.leading, 25)*/
                
            }  //: GR
            .frame(height: 480)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Toys Story")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.white)
                HStack(spacing: 15){
                    ForEach(1...5, id: \.self) {_ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                    }
                }  //: HStack
                
                Text("It has survived not only five centuries, but also the leap into electronic typesetting, remaining")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.top, 15)
                
                Text(mesaj)
                    .padding(.top, 10)
                    .foregroundColor(.white)
                Button(action: {}, label: {
                    Text("Sample")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            } //: VStack
            .padding(.top, 25)
            .padding(.horizontal)
            .background(Color.black)
            .cornerRadius(20)
            .offset(y: -35)
            
            
        }  //: ScrollView
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
