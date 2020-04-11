//
//  CorgiInfoView.swift
//  StatePreservationDemo
//
//  Created by Tigran Simonyan on 4/11/20.
//  Copyright © 2020 Scriptomania. All rights reserved.
//

import SwiftUI
private let text = "The Welsh Corgi, sometimes known as just a Corgi (/ˈkɔːrɡi/, Welsh for \"dwarf dog\";[5] plural \"Corgis\" or occasionally the etymologically consistent \"Corgwn\"; /ˈkɔːrɡuːn/), is a small type of herding dog that originated in Wales, United Kingdom.[6] Two separate breeds are recognized: the Pembroke Welsh Corgi and the Cardigan Welsh Corgi. Historically, the Pembroke has been attributed to the influx of dogs alongside Flemish weavers from around the 10th century, while the Cardigan is attributed to the dogs brought with Norse settlers, in particular a common ancestor of the Swedish Vallhund. A certain degree of interbreeding between the two types has been suggested to explain the similarities between the two. \n The Pembroke is the more popular breed of the two, with the Cardigan Welsh Corgi appearing on The Kennel Club's list of Vulnerable Native Breeds. There are several physical differences between the two types according to the breed standards: the Cardigan is larger overall, both in weight and in height. Traditionally, the tails were of different shapes, but docking had previously been used. With regards to their health, according to a 2004 survey, they both had similar lifespans, although kidney or urethral conditions are more likely in the Pembrokes. Furthermore, Pembroke Corgis were more likely to have eye problems than the Cardigan breed. The Pembroke Welsh Corgi gained its popularity over the Cardigan Welsh Corgi because Queen Elizabeth II preferred the Pembroke. The favored corgis had longer bodies, thick coats of fur, and some are born without a tail.[5] Welsh Corgis have a strong association with Queen Elizabeth II, who has personally owned more than 30 dogs, either Pembrokes or Corgi-Dachshund crosses (known as dorgis)."

struct CorgiInfoView: View {
    @State var isShowingMore = false
    var body: some View {
        VStack (spacing: 30) {
            ScrollView (isShowingMore ? .vertical : [], showsIndicators: isShowingMore) {
                Text(text)
            }
            Button(isShowingMore ? "Show Less" : "Show More") {
                self.isShowingMore = !self.isShowingMore
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: isShowingMore ? .infinity : 300)
         .padding()
         .navigationBarTitle("Info", displayMode: .inline)
    
    }
}

struct CorgiInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CorgiInfoView()
    }
}
