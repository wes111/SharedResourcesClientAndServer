//
//  Candidate+Preview.swift
//  Democracy
//
//  Created by Wesley Luntsford on 3/20/23.
//

import Foundation

public extension Candidate {
    
    static var preview: Candidate {
        Candidate(
            id: UUID().uuidString,
            campaignSlogan: "Build Back Better",
            userName: "hamlin111",
            candidateName: "Bernie-Sanders",
            imageName: "bernie",
            upVotes: 5,
            downVotes: 4,
            score: 1,
            communityId: UUID().uuidString,
            isRepresentative: true,
            summary: "One of my heroes around town, a man who gave us our first dishwasher, was a Marine in Vietnam. He took me around the local Marine Corps League and taught me the meaning of service: selflessness, sacrifice, doing the right thing when no one is looking and expecting nothing in return. So after Yale and then law school at Mizzou, I joined the Marine Corps to honor and serve the community that had done so much for me. Less than a year after I completed training, I deployed to Iraq on my first of three tours of duty in the War on Terror, before later being stationed at the Pentagon. During those 13 years of active duty I learned firsthand what service and sacrifice for your country really means, the same things I had heard about down at the Apache Flats Marine Corps League: Doing the right thing when you’re thousands of miles from home, believing in a mission that’s bigger than yourself, and never forgetting the community you signed up to serve.",
            externalLink: URL(string: "https://lucaskunce.com"),
            repType: .legislator,
            badges: [.candidate, .currentRep, .popular]
        )
    }
    
    static var previewArray: [Candidate] {
        var array: [Candidate] = []
        for _ in 0...20 {
            array.append(
                Candidate(
                    id: UUID().uuidString,
                    campaignSlogan: Candidate.preview.campaignSlogan,
                    userName: Candidate.preview.userName,
                    candidateName: Candidate.preview.candidateName,
                    imageName: Candidate.preview.imageName,
                    upVotes: Candidate.preview.upVotes,
                    downVotes: Candidate.preview.downVotes,
                    score: Candidate.preview.upVotes - Candidate.preview.downVotes,
                    communityId: Candidate.preview.communityId,
                    isRepresentative: Candidate.preview.isRepresentative,
                    summary: Candidate.preview.summary,
                    externalLink: Candidate.preview.externalLink,
                    repType: Candidate.preview.repType,
                    badges: [.candidate, .currentRep, .popular]
                )
            )
        }
        return array
    }
}
