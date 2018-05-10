package knd

class Sliders {

    String title
    String body
    String bg
    String btn
    String btnlink
    Boolean hasLink = false

    static constraints = {
        btnlink nullable: true
    }
}
