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

        def slider = Sliders.findOrSaveWhere(id: params.long('pos'))

        slider.title = params.title
        slider.body = params.body
        slider.btn = params.btn
        slider.btnlink = params.btnlink
        slider.hasLink = !(slider.btnlink == '#' || slider.btnlink.empty)

        if (params.bg) {
            def bg = params.bg as CommonsMultipartFile
            new FileOutputStream(
                    "/apps/knd/grails-app/assets/images/bg/${bg.originalFilename}")
                    .leftShift(params.bg.getInputStream())

            slider.bg = bg.originalFilename
        } else slider.bg = ""



        slider.save(flush: true)

        flash.message = "Added Slide!"
        render view: 'index'
    }
}
