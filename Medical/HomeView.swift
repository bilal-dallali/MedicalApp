//
//  HomeView.swift
//  Medical
//
//  Created by Bilal Dallali on 18/02/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchBar = ""
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 32) {
                VStack(spacing: 20) {
                    HStack {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Bonjour, Sam")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(Color("FontColor1"))
                            Text("Trouvez le bon médecin")
                                .font(.system(size: 21, weight: .semibold))
                                .foregroundColor(Color("FontColor2"))
                        }
                        Spacer()
                        Image(systemName: "bell.fill")
                            .padding(3)
                    }

                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 21, height: 21)
                                .foregroundColor(Color("SearchIconFont"))
                                .padding(.leading, 15)
                                
                            TextField("Recherchez", text: $searchBar)
                                .padding(.leading, 10)
                        }
                        .padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(10)
                        .frame(width: 280, height: 45)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 100, x: 0, y: 3)
                        Spacer()
                        Button {
                            print("Mes filtres")
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.white)
                                .frame(width: 45, height: 45)
                                .background(Color("MainColor"))
                                .cornerRadius(10)
                        }
                    }
                    HStack {
                        Text("Catégories")
                            .foregroundColor(Color("FontColor1"))
                            .font(.system(size: 24, weight: .semibold))
                        Spacer()
                    }
                    ScrollView(.horizontal) {
                        HStack(spacing: 10) {
                            ForEach(categoryList, id: \.name) { category in
                                NavigationLink {
                                    CategoryView(category: categoryList[2])
                                } label: {
                                    CategoryView(category: category)
                                }
                            }
                        }
                    }
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 100, x: 0, y: 3)
                        
                }
                
                VStack(spacing: 8) {
                    HStack {
                        Text("Spécialistes les plus proches")
                            .foregroundColor(Color("FontColor1"))
                            .font(.system(size: 24, weight: .semibold))
                        Spacer()
                    }
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(doctorList, id: \.doctorName) { doctor in
                                NavigationLink {
                                    DoctorCellView(doctor: doctorList[2])
                                } label: {
                                    DoctorCellView(doctor: doctor)
                                }
                            }
                        }
                    }
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 100, x: 0, y: 3)
                }
                
                
            }
            .padding(.horizontal)
            .padding(.top, 60)
            .background(Color("Background"))
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
