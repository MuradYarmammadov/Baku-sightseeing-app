//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Heydar Mosque",
            cityName: "Baku",
            coordinates: CLLocationCoordinate2D(latitude: 40.4289551766537, longitude: 49.82418393883518),
            description: "Heydar Mosque is an Azerbaijani mosque named after Heydar Aliyev, in the Binəqədi raion of Baku. The mosque covers a total area of 12,000 m2 and the internal area of the building covers a total area of 4,200 square meters. This mosqueis the largest construction cult-religious architecture not only in Azerbaijan, but also in the entire South Caucasus",
            imageNames: [
                "heydar-mosque-1",
                "heydar-mosque-2",
            ],
            link: "https://en.wikipedia.org/wiki/Heydar_Mosque"),
        Location(
            name: "Maiden Tower",
            cityName: "Baku",
            coordinates: CLLocationCoordinate2D(latitude: 40.36633163816726, longitude: 49.83735448486246),
            description: "The Maiden Tower is a 12th-century monument in the Old City, Baku, Azerbaijan. Along with the Shirvanshahs' Palace, dated to the 15th century, it forms a group of historic monuments listed in 2001 under the UNESCO World Heritage List of Historical Monuments as cultural property.",
            imageNames: [
                "maiden-tower-1",
                "maiden-tower-2",
                "maiden-tower-3",
            ],
            link: "https://en.wikipedia.org/wiki/Maiden_Tower_(Baku)"),
        Location(
            name: "Heydar Aliyev Center",
            cityName: "Baku",
            coordinates: CLLocationCoordinate2D(latitude: 40.396069960492234, longitude: 49.86785801184862),
            description: "The Heydar Aliyev Center is a 57,500 m2 (619,000 sq ft) building complex in Baku, Azerbaijan designed by Iraqi-British architect Zaha Hadid and noted for its distinctive architecture and flowing, curved style that eschews sharp angles.",
            imageNames: [
                "heydar-aliyev-center-1",
                "heydar-aliyev-center-2",
                "heydar-aliyev-center-3",
                "heydar-aliyev-center-4",
            ],
            link: "https://en.wikipedia.org/wiki/Heydar_Aliyev_Center"),
        Location(
            name: "Icheri Sheher Fortress Wall",
            cityName: "Baku",
            coordinates: CLLocationCoordinate2D(latitude: 40.367276170146646, longitude: 49.832634689404756),
            description: "Icherisheher, the Old City of Baku, is enclosed by some majestic Fortress Walls built in the 12th century. The fortress itself is actually the biggest one in the Absheron Peninsula and is also a part of the UNESCO World Heritage. While these walls used to stretch for 1,500 meters (4,921 ft) back in the days, they’re 500 meters (1,640 ft) long today.",
            imageNames: [
                "fortress-wall-1",
                "fortress-wall-2",
                "fortress-wall-3",
            ],
            link: "https://en.wikipedia.org/wiki/Baku_Fortress_Wall"),
        Location(
            name: "Palace of the Shirvanshahs",
            cityName: "Baku",
            coordinates: CLLocationCoordinate2D(latitude: 40.366282736383965, longitude: 49.83357890999648),
            description: "The ancient Palace of the Shirvanshahs is one of the most famous places in Baku for a good reason: UNESCO named it a pearl of Azerbaijani architecture. Built in the 15th century and restored in 2003, this palace is home to a pavilion named Divankhana, a mausoleum, a mosque that the shah used to visit, burial vaults, and the ruins of a bathhouse.",
            imageNames: [
                "palace-of-the-shirvanshahs-1",
                "palace-of-the-shirvanshahs-2",
                "palace-of-the-shirvanshahs-3",
            ],
            link: "https://en.wikipedia.org/wiki/Palace_of_the_Shirvanshahs"),
        Location(
            name: "Fountains Square",
            cityName: "Baku",
            coordinates: CLLocationCoordinate2D(latitude: 40.37093347684279, longitude: 49.836931580737826),
            description: "Fountain Square is home to tons of restaurants, shops, cafés, and bars, this square is definitely one of the most vibrant places to see in Baku. Things to do there are endless, from shopping for souvenirs to people-watching. The good news is that some of the best restaurants in town are also located around this square, so make sure to sample the best of the local cuisine while you’re there!",
            imageNames: [
                "nizami-street-1",
                "nizami-street-2",
                "nizami-street-3",
                "nizami-street-4",
            ],
            link: "https://en.wikipedia.org/wiki/Fountains_Square,_Baku"),
        Location(
            name: "Baku Boulevard",
            cityName: "Baku",
            coordinates: CLLocationCoordinate2D(latitude: 40.370652665312036, longitude: 49.84992728116075),
            description: "The Boulevard along the Caspian is a beautiful, several kilometer long parkway that is a real gem of the city. The boulevard contains an amusement park, yacht club and musical fountain, and various statues and monuments. The park is popular with dog-walkers and joggers, and is convenient for tourists, being adjacent to newly built International Center of Mugham and musical fountain.",
            imageNames: [
                "baku-boulevard-1",
                "baku-boulevard-2",
                "baku-boulevard-3",
            ],
            link: "https://en.wikipedia.org/wiki/Baku_Boulevard"),
    ]
    
}
