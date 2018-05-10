package knd

import org.apache.commons.io.IOUtils

class DownloadsController {

    def index() {
        if (params.id) {
            def file = Sermons.get(params.long('id'))

            if (file) {
                def d = Downloads.findOrSaveWhere(sermon: file.id)

                def fileToDownload = new File("/apps/contents/audio/${file.fname}")

                if (fileToDownload.exists()) {
                    d.downloads += 1
                    d.lastDownload = new Date()
                    d.save(flush: true)

//                    render file: fileToDownload, filename: fileToDownload.name, contentType: "application/octet-stream"

                    response.setContentType("application/octet-stream")
                    response.setHeader("Content-disposition", "attachment;filename=\"${fileToDownload.name}\"")
                    response.outputStream << fileToDownload.bytes
                    return

                } else render "Error!" // appropriate error handling

            }
        }
    }
}
