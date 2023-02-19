//
//  DoctorCellView.swift
//  Medical
//
//  Created by Bilal Dallali on 19/02/2023.
//

import SwiftUI

struct DoctorCellView: View {
    
    let doctor: Doctor
    
    var body: some View {
        HStack(spacing: 14) {
            Image(doctor.image)
                .resizable()
                .frame(width: 82, height: 110)
                .cornerRadius(5)
            
            VStack {
                Spacer()
                HStack {
                    Text(doctor.doctorName)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color("FontColor1"))
                    Spacer()
                }
                Spacer()
                HStack {
                    Text(doctor.speciality)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(Color("FontColor3"))
                    Spacer()
                }
                Spacer()
                HStack {
                    Text(doctor.adress)
                        .font(.system(size: 12, weight: .light))
                        .foregroundColor(Color("FontColor3"))
                    Spacer()
                }
                Spacer()
                HStack {
                    Button {
                        print("prendre rdv")
                    } label: {
                        Text("PRENDRE RENDEZ-VOUS")
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .medium))
                    }
                    .frame(width: 180, height: 28)
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
        .padding(.vertical, 10)
        .frame(height: 130)
        .background(.white)
        .cornerRadius(10)
    }
}

struct DoctorCellView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCellView(doctor: doctorList[2])
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
