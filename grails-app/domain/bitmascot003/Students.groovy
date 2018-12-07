package bitmascot003

class Students {
    String name
    String dept
    String address
    static constraints = {
         name(unique: true)
    }
}
