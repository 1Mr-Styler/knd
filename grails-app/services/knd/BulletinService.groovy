package knd

import grails.transaction.Transactional

@Transactional
class BulletinService {

    def getLatest() {
        def b = Bulletin.executeQuery("from Bulletin b ORDER BY b.date desc", [max: 4])

        return b
    }
}
