//
//  DoctorCellView.swift
//  Medical
//
//  Created by Bilal Dallali on 19/02/2023.
//

import SwiftUI

struct DoctorCellView: View {
    
    
    var body: some View {
        HStack(spacing: 14) {
            Image("doctor-1")
                .resizable()
                .frame(width: 82, height: 110)
                .cornerRadius(5)
            
            VStack {
                HStack {
                    Text("Dr. Alana Rueter")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color("FontColor1"))
                    Spacer()
                }
                HStack {
                    Text("Dentiste")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(Color("FontColor3"))
                    Spacer()
                }
                HStack {
                    Text("83 avenue Foch, 76600 Le Havre")
                        .font(.system(size: 12, weight: .light))
                        .foregroundColor(Color("FontColor3"))
                    Spacer()
                }
                HStack {
                    Button {
                        print("prendre rdv")
                    } label: {
                        Text("PRENDRE RENDEZ-VOUS")
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .medium))
                    }
                    .frame(width: 200, height: 28)
                    .background(Color("MainColor"))
                    .cornerRadius(5)
                    Spacer()
                    Button {
                        print("horaires du médecin")
                    } label: {
                        Image(systemName: "clock.fill")
                            .foregroundColor(Color("MainColor"))
                    }
                    .frame(width: 28, height: 28)
                    .background(Color("HourIconColor"))
                    .cornerRadius(5)
                }
            }
            
        }
        
        .padding(.leading, 10)
        .padding(.trailing, 21)
        .frame(height: 130)
        .background(.white)
        .cornerRadius(10)
    }
}

struct DoctorCellView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCellView()
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
