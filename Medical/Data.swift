//
//  Data.swift
//  Medical
//
//  Created by Bilal Dallali on 19/02/2023.
//

import Foundation

struct Category {
    let name: String
    let icon: String
}

let categoryList = [
    Category(name: "Dentaire", icon: "mouth.fill"),
    Category(name: "Orthopédie", icon: "figure.australian.football"),
    Category(name: "Cardiologie", icon: "bolt.heart.fill"),
    Category(name: "Pulmonaire", icon: "lungs.fill"),
    Category(name: "Neurologie", icon: "brain"),
    Category(name: "ORL", icon: "ear.fill")
]


struct Doctor {
    let doctorName: String
    let image: String
    let speciality: String
    let adress: String
}

let doctorList = {
    Doctor(doctorName: "Dr. Alana Rueter", image: "doctor-1", speciality: "Dentiste", adress: "82 avenue Foch, 76600 Le Havre");
    Doctor(doctorName: "Dr. Joseph Nichols", image: "doctor-2", speciality: "Cardiologue", adress: "76 rue des Cerisiers, 76620 Le Havre");
    Doctor(doctorName: "Dr. Daphne Figueroa", image: "doctor-3", speciality: "Pneumologue", adress: "7 rue Louis Blanc, 76620 Le Havre")
}
