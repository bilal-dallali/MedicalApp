//
//  CategoryView.swift
//  Medical
//
//  Created by Bilal Dallali on 19/02/2023.
//

import SwiftUI

struct CategoryView: View {
    
    let category: Category
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: category.icon)
                .foregroundColor(Color("MainColor"))
            Text(category.name)
                .foregroundColor(Color("MainColor"))
                .font(.system(size: 12, weight: .medium))
        }
        .frame(width: 87, height: 90)
        .background(.white)
        .cornerRadius(10)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: categoryList[0])
            .previewLayout(.sizeThatFits)
    }
}
