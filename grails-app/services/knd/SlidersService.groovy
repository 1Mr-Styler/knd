package knd

import grails.transaction.Transactional

@Transactional
class SlidersService {

    def load() {
        def res = Sliders.getAll()

        def data = [res[0], res[1], res[2]]

        return data

    }
}
