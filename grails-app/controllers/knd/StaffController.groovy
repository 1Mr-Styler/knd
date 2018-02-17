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
        if (params.lgn) {
            String usn = params.usn
            String pss = params.pss

            def usr = Staff.findByUsernameAndPassword(usn, pss)

            if (usr != null) {
                session['user'] = usr.username
                usr.lastlogin = new Date()
                usr.llIP = request.getRemoteAddr()
                usr.save(flush: true)
                redirect action: 'index'
            } else {
                flash.message = 'Screw you'
            }
        }

    }

    def logout() {
        session['user'] = null
        redirect action: 'index'
    }

    def users() {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        render(view: 'users', model: [users: Staff.list(params)])
    }

    def delete(Staff staff) {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        if (staff != null) {
            flash.message = "Deleted " + staff.username
            staff.delete(flush: true)
        } else {
            flash.message = "Invalid ID"
        }

        render(view: 'users', model: [users: Staff.list(params)])

    }

    def newAdmin() {
    }

    def save() {
        def admin = new Staff(username: params.username, password: params.pass)
        admin.lastlogin = new Date()

        if (admin.save(flush: true))
            flash.message = "User added!"
        else
            flash.message = "Saving Failed!"

        render(view: 'newAdmin')

    }
}
