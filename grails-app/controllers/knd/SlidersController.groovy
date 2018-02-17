package knd

import org.springframework.web.multipart.commons.CommonsMultipartFile

class SlidersController {

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

        if (params.bg) {
            def bg = params.bg as CommonsMultipartFile
            new FileOutputStream(
                    "/Users/mac/IdeaProjects/KND/grails-app/assets/images/bg/${bg.originalFilename}")
                    .leftShift(params.bg.getInputStream())

            def slider = Sliders.findOrSaveWhere(id: params.long('pos'))

            slider.title = params.title
            slider.body = params.body
            slider.bg = bg.originalFilename
            slider.btn = params.btn
            slider.save(flush: true)

        }

        flash.message = "Added Slide!"
        render view: 'index'
    }
}
