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

        def newdate = new Date().parse("dd/MM/yyyy", params.datec)
        println(params.dump())

        def audio = params.audio

        def sermon = new Sermons(
                title: params.title,
                note: params.desc,
                length: params.length,
                author: params.author,
                date: newdate,
                fname: audio,
                category: params.cat,
        )

        if (sermon.save(flush: true)) {
            flash.message = "Sermon Uploaded!"

            def proc = "find /apps/contents/audio -mindepth 2 -type f -print -exec mv {}  /apps/contents/audio ;".execute()
            def b = new StringBuffer()
            proc.consumeProcessErrorStream(b)

            println proc.text
            println b.toString()
        } else {
            flash.message = "Error, couldn't save data."
            println("Errors: ${sermon.errors}")
        }


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
            new File('/apps/contents/audio/' + sermon.fname).delete()
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

    def f5k() {
        def newdate = new Date().parse("dd/MM/yy", params.datec)


        def audio = params.audio

        def sermon = new Sermons(
                title: params.title,
                note: params.desc,
                length: params.length,
                author: params.author,
                date: newdate,
                fname: audio,
                category: params.cat,
        )


        if (sermon.save(flush: true)) {
            respond "Done"
        } else {
            respond "cant"
        }
    }

}
