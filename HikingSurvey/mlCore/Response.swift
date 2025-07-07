//
//  Response.swift
//  HikingSurvey
//
//  Created by Dungeon_master on 07/06/25.
//

import Foundation

struct Response: Identifiable {
    var id: UUID = UUID()
    var text: String
    var score: Double
    var sentiment: Sentiment {
        Sentiment(score)
    }
    static let sampleResponses: [String] = [
        "Many view hiking as a paramount way to disconnect from urban stress and immerse oneself fully in nature's beauty, offering a sense of peace and tranquility.",
        "It's widely regarded as an excellent form of exercise, improving cardiovascular health, muscle strength, endurance, and overall physical well-being.",
        "The combination of physical activity and natural surroundings is frequently cited for its positive impact on mental health, reducing stress, anxiety, and improving mood.",
        "Opinions vary on its accessibility, but many appreciate that hiking can range from easy strolls to challenging multi-day treks, catering to diverse fitness levels and preferences.",
        "Reaching a summit, completing a challenging trail, or simply covering a long distance instills a significant sense of achievement and pride.",
        "For many, hiking offers the thrill of exploration, discovering new landscapes, hidden gems, and experiencing the world from a unique perspective.",
        "It can be a solitary activity for introspection or a social one, fostering camaraderie among hiking groups, offering both the chance for quiet reflection and shared experiences.",
        "A common point of discussion is the perceived necessity and cost of specialized gear (boots, backpacks, navigation tools), which can be seen as a barrier to entry for some.",
        "Hiking often cultivates a deeper appreciation for the environment, leading to stronger opinions on conservation and responsible outdoor practices (Leave No Trace).",
        "Opinions on risk vary some embrace the challenge, while others emphasize the critical need for proper preparation, safety precautions, and awareness of weather and trail conditions.",
        "Look, in this chaotic world, hiking is like hitting the reset button. You step away from the endless screens and concrete, and suddenly you're surrounded by actual quiet and beauty. It's not just disconnecting; it's a deep breath, a chance to really feel small and at peace in something much bigger than your daily grind. That sense of calm and tranquility? It's genuinely priceless.",
        "Forget the gym sometimes; hiking is a real workout, often without feeling like one. You're building stamina, strengthening muscles you didn't even know you had, and your heart gets a serious pump. It’s a fantastic way to move your body naturally, and you usually end up feeling much better physically than you would from just about any other exercise.",
        "This is where hiking really shines for me. There's something about being active in nature that just clears your head. All the daily worries and anxieties seem to melt away. You’re focused on the path, the sounds, the smells, and it just… works. It's a powerful mood booster, no doubt about it.",
        "People sometimes think hiking means scaling a mountain, but that's just not true. The beauty of it is that literally anyone can do it. You can take a gentle walk through a park or tackle a brutal multi-day trek. That huge range means there's always a trail for whatever mood or fitness level you're in, which is pretty awesome.",
        "There’s a quiet thrill that comes from hitting a summit, finishing a long, tough trail, or even just pushing yourself further than you thought you could go. It’s not about bragging rights; it’s a deep, personal satisfaction. You really feel like you’ve earned something, and that feeling of accomplishment is incredibly rewarding.",
        "This is the explorer in me. Hiking isn't just walking; it's about uncovering something new. Finding a hidden waterfall, stumbling upon a breathtaking viewpoint you didn't expect, or just seeing the world from a completely different vantage point. It’s a constant invitation to discover and feel a bit of that genuine adventure.",
        "What I love is that hiking can be exactly what you need it to be. Sometimes, you crave that quiet, alone time to just think and clear your head. Other times, sharing the trail with friends or a group creates incredible bonds and shared memories. It perfectly balances that need for both connection and peaceful introspection.",
         "Alright, let's be real about the gear. While some people go all out, you absolutely do not need to spend a fortune to start hiking. Good shoes are important, sure, but you don't need fancy everything. The idea that you must have expensive specialized gear can definitely put people off, and it's a shame because it's just not true for most trails.",
         "Once you spend time out there, really seeing and appreciating nature, it’s hard not to care deeply about protecting it. Hiking genuinely makes you more aware of your impact and makes you want to advocate for conservation. You start to really live and understand the Leave No Trace principles, because you see firsthand why they matter.",
         "Yeah, there's a wild side to hiking, and some people live for that challenge. But it's also about being smart. You have to prepare—know the weather, understand the trail, bring enough water, and tell someone where you're going. Ignoring safety is just plain foolish. It's about respecting nature's power, not just charging into it."
    ]
}
