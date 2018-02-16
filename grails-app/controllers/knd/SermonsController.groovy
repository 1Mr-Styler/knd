package knd

import org.springframework.web.multipart.commons.CommonsMultipartFile

class SermonsController {

    def index() {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }


    }

    def save() {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
            return
        }

        def newdate = new Date().parse("dd/mm/yyyy", params.datec)


        def audio = params.audio as CommonsMultipartFile
        new FileOutputStream(
                "/Users/mac/IdeaProjects/KND/grails-app/assets/audio/${audio.originalFilename}")
                .leftShift(params.audio.getInputStream())

        def sermon = new Sermons(
                title: params.title,
                note: params.desc,
                length: params.length,
                author: params.author,
                date: newdate,
                fname: audio.originalFilename
        ).save(flush: true)


        flash.message = "Added Slide!"
        render view: 'index'
    }

    def list() {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        render(view: 'list', model: [sermons: Sermons.list(params)])
    }

    def delete(Sermons sermon) {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        if (sermon != null) {
            flash.message = "Deleted " + sermon.title
            new File('/Users/mac/IdeaProjects/KND/grails-app/assets/audio/' + sermon.fname).delete()
            sermon.delete(flush: true)
        } else {
            flash.message = "Invalid ID"
        }

        render(view: 'list', model: [sermons: Sermons.list(params)])

    }

    def edit(Sermons sermon) {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        if (sermon != null) {
            render(view: 'edit', model: [sermon: sermon])
            return
        }

        render "invalid ID"
    }

    def update() {
        if (session['user'] == null) {
            redirect(controller: 'staff', action: 'login')
        }

        if (params.id != null) {
            def sermon = Sermons.findWhere(id: params.long('id'))

            sermon.title = params.title
            sermon.note = params.desc
            sermon.author = params.author
            sermon.length = params.length
            sermon.date = params.date

            sermon.save(flush: true)

            flash.message = "Record Updated!"
        } else flash.message = "Update failed!"

        render(view: 'index')
    }
}
