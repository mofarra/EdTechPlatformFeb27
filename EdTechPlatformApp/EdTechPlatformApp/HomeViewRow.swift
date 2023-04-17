//
//  HomeViewRow.swift
//  EdTechPlatformApp
//
//  Created by Mohamad Alfarra on 3/6/23.
//
import SwiftUI

struct HomeViewRow: View {
    
    //declaration of string inputs to homeviewrow
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack{
                //image
             
                Image(image)
                    .resizable()
                    .frame(width: 116, height:116)
                    .clipShape(Circle())
                
                Spacer()
                
                //Text
                VStack(alignment:.leading, spacing: 10){
                    //headline
                    Text(title)
                        .bold()
                    //description
                    Text(description)
                        .padding(.bottom, 20)
                    
                    HStack{
                    //icons
                        //number of lessons / questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height:15)
                        Text(count)
                            .font(.caption)
                        
                        Spacer()
                        
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height:15)
                        Text(time)
                            .font(.caption)
                        
                        
                        
                        //time
                        
                    }
                  
                    
                    
                    
                }//end of VStack
                .padding(.leading, 20)
                
                //text
                
            }//end of HStack
            .padding(.horizontal, 20)
        }//end of zstack
        
    }
}


   
//struct HomeViewRow_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeViewRow()
//    }
//}

