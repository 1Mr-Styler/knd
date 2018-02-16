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
}
