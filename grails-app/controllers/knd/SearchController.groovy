package knd

class SearchController {

    def searchService

    def index() {
        searchService.categories()
        params.offset = params.offset?: 0
        params.max = params.max?: 10

        if (params.category) {
            def sermons = searchService.categories(params.category)
            render view: 'index', model: [
                    'sermons'   : sermons,
                    'total'     : sermons.size(),
                    'categories': searchService.categories()
            ]
            return
        }

        if (params.search) {
            def sermons = searchService.search(params.search)
            render view: 'index', model: [
                    'sermons'   : sermons,
                    'total'     : sermons.size(),
                    'categories': searchService.categories()
            ]
            return
        }

        render view: 'index', model: [
                'sermons'   : searchService.all(params),
                'total'     : Sermons.count(),
                'categories': searchService.categories()
        ]
    }
}
