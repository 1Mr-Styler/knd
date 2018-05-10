package knd

class Staff {

    String username
    String password
    Date lastlogin
    String llIP

    static constraints = {
        username nullable: false
        password nullable: false
        lastlogin nullable: true
        llIP nullable: true
    }
}
