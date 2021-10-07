//
//  BusinessSection.swift
//  City Sights
//
//  Created by Alex Cannizzo on 07/10/2021.
//

import SwiftUI

struct BusinessSection: View {
    var title: String
    var businesses: [Business]
    var body: some View {
        
        Section(header: BusinessSectionHeader(title: title)) {
            ForEach(businesses) { business in
                
                NavigationLink {
                    BusinessDetail(business: business)
                } label: {
                    BusinessRow(business: business)
                }

                
            }
        }
    }
}
