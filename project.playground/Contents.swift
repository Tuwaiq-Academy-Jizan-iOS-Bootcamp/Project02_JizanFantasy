struct Player{
    var name : String
    var lifePoint :Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
    var specialLP : Int
    var specialPD:Int
    //func lp
    mutating func power (){
        let number = Int.random(in: 0...20)
        var capacityy = false
        switch number {
        case 0...9 :
        lifePoint = lifePoint - (defense - powerDamage)
        case 10...19:
            lifePoint = lifePoint - (defense - weaponDamage)
        case 20:
            lifePoint += specialLP
            weaponDamage += specialPD
            capacityy = true
            
    }
    mutating func weapon(){
        lifePoint = lifePoint - (defense - weaponDamage)
    }
    mutating func capacityLP(){
       lifePoint += specialLP
    }
    mutating func capacityPD(){
        weaponDamage += specialPD
        //capacityy = true
    }
}
var knight = Player(name: "Knight", lifePoint: 60, defense: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100, specialLP: 5, specialPD: 10)
var wizard = Player(name: "Wiza", lifePoint: 90, defense: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50, specialLP: 35, specialPD: 10)
var thief = Player(name: "Thief", lifePoint: 65, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75, specialLP: 5, specialPD: 35)
var boss1 = Player(name: "Boos1", lifePoint: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 100, specialLP: 5, specialPD: 22)
var boss2 = Player(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75, specialLP: 5, specialPD: 32)

func rolling(){
    let number = Int.random(in: 0...20)
    var capacityy = false
    switch number {
    case 0...9 :
        <#code#>
    default:
        <#code#>
    }
        
        
    }
    if (number >= 0 && number <= 9) {
        knight.power()
        wizard.power()
        thief.power()
        boss1.power()
        boss2.power()
    }
    else if (number >= 10 && number <= 19){
        knight.weapon()
        wizard.weapon()
        thief.weapon()
        boss1.weapon()
        boss2.weapon()
    }else{
        knight.specialLP
        knight.specialPD
        capacityy = true
        wizard.specialPD
        capacityy = true
        wizard.specialLP
        thief.specialLP
        thief.specialPD
        capacityy = true
        boss1.specialLP
        boss1.specialPD
        capacityy = true
        boss2.specialLP
        boss2.specialPD
        capacityy = true

    }}
//}
//func capacity(){
//lifePoint += specialLP
//weaponDamage += specialPD
//}
