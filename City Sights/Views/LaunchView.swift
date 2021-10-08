//
//  LaunchView.swift
//  City Sights
//
//  Created by Alex Cannizzo on 06/10/2021.
//

import SwiftUI
import CoreLocation

struct LaunchView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        // Detect the authorization status of geolocating the user
        if model.authorizationState == .notDetermined {
            // If undetermined, show onboarding
            OnboardingView()
        }
        else if model.authorizationState == .authorizedAlways || model.authorizationState == .authorizedWhenInUse {
            // If approved, show home view
            HomeView()
        }
        else {
            // If denied, show denied view
            LocationDeniedView()
            
        }
        
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
