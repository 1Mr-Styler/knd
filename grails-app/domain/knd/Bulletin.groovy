package knd

class Bulletin {

    String title
    String author
    String message
    String bg
    Date date = new Date()

    static constraints = {
    }

    static mapping = {
        message type: 'text'
    }
}
