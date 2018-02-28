package knd

import grails.transaction.Transactional

@Transactional
class BulletinService {

    def getLatest() {
        def s = Bulletin.executeQuery("from Sermons s ORDER BY s.date desc", [max: 4])

        return s
    }
}
