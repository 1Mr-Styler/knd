package knd

import grails.transaction.Transactional

@Transactional
class SearchService {

    def all(params) {
        return Sermons.list(params)
    }

    def categories() {
        def cats = Sermons.executeQuery("SELECT DISTINCT s.category FROM Sermons s")

        def counts = new LinkedHashMap<String, Long>()

        cats.each {
            def res = Sermons.executeQuery("SELECT count(*) FROM Sermons s WHERE s.category ='${it.toString()}'")
            counts.put(it.toString(), res[0])
        }

        return counts
    }

    def categories(String cat) {
        def res = Sermons.executeQuery("FROM Sermons s WHERE s.category='${cat}'")
        return res
    }

    def search(String query) {
        def crit = Sermons.createCriteria()

        def res = crit.list {
            like('title', "%${query}%")
        }

        return res
    }
}
