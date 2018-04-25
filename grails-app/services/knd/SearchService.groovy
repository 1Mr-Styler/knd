package knd

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class SearchService {

    def all(params) {
        def res = Sermons.executeQuery("SELECT s FROM Sermons s ORDER BY date DESC", [], params)
        return res
    }

    def categories() {
        def cats = Sermons.executeQuery("SELECT DISTINCT s.category FROM Sermons s ORDER BY s.category ASC")

        def counts = new LinkedHashMap<String, Long>()

        cats.each {
            def res = Sermons.executeQuery("SELECT count(*) FROM Sermons s WHERE s.category ='${it.toString()}'")
            counts.put(it.toString(), res[0])
        }

        return counts
    }

    def categories(String cat, GrailsParameterMap params) {
        def res = Sermons.executeQuery("FROM Sermons s WHERE s.category='${cat}'", [], params)
        def total = Sermons.executeQuery("SELECT count(*) FROM Sermons s WHERE s.category='${cat}'")
        return [result: res, total: total.unique()[0]]
    }

    def search(String query) {
        def crit = Sermons.createCriteria()

        def res = crit.list {
            like('title', "%${query}%")
        }

        return res
    }
}
