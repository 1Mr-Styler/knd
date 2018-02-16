package knd

import grails.transaction.Transactional

@Transactional
class SermonsService {

    def getLatest() {
        def s = Sermons.executeQuery("from Sermons s ORDER BY s.date desc", [max: 4])

        return s
    }
}
