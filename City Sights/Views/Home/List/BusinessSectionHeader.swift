//
//  BusinessSectionHeader.swift
//  City Sights
//
//  Created by Alex Cannizzo on 07/10/2021.
//

import SwiftUI

struct BusinessSectionHeader: View {
    var title: String
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
            Text(title)
                .font(.headline)
        }
    }
}

struct BusinessSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        BusinessSectionHeader(title: "Restaurants")
    }
}
