package knd


class StaffController {

    def index() {
        println(session['user'])
        if (session['user'] == null) {
            redirect(action: 'login')
            return
        }

    }

    def login() {
        if(params.lgn) {
            String usn = params.usn
            String pss = params.pss

            def usr = Staff.findByUsernameAndPassword(usn, pss)

            if(usr != null) {
                session['user'] = usr.username
                usr.lastlogin = new Date()
                usr.save(flush: true)
                redirect action: 'index'
            } else{
                flash.message = 'Screw you'
            }
        }

    }

    def logout() {
        session['user'] = null
        redirect action: 'index'
    }
}
