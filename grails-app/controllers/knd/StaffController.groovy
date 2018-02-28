package knd

import org.springframework.web.multipart.commons.CommonsMultipartFile


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

    def bulletin() {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
            return
        }

        render view: 'bulletinIndex'
    }

    def bulletinSave() {

        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
            return
        }


        def bg = params.bg as CommonsMultipartFile
        new FileOutputStream( // TODO: change to prod server
                "/Users/styl3r/IdeaProjects/KND/grails-app/assets/images/bg/${bg.originalFilename}")
                .leftShift(params.bg.getInputStream())

        def bull = new Bulletin(
                title: params.title,
                message: params.desc,
                author: params.author,
                bg: bg.originalFilename,
        )


        flash.message = bull.save(flush: true) ? "Added Bulletin!" : "Failed. Try again."

        render view: 'bulletinIndex'

    }

    def bulletinList() {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        render(view: 'bulletinList', model: [bulletins: Bulletin.list(params)])
    }

    def bulletinDelete(Bulletin bulletin) {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        if (bulletin != null) {
            flash.message = "Deleted " + bulletin.title
            new File('/Users/styl3r/IdeaProjects/KND/grails-app/assets/images/bg/' + bulletin.bg).delete()
            bulletin.delete(flush: true)
        } else {
            flash.message = "Invalid ID"
        }

        render(view: 'bulletinList', model: [bulletins: Bulletin.list(params)])

    }
}
