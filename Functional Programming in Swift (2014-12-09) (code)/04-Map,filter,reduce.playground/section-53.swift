cities.filter({ city in city.population > 1000 })
      .map(scale)
      .reduce("City: Population") { result, c in 
          return result + "\n" + "\(c.name) : \(c.population)" 
      }