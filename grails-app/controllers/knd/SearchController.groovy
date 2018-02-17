package knd

class SearchController {

    def searchService

    def index() {
        searchService.categories()

        if (params.category) {
            render view: 'index', model: [
                    'sermons'   : searchService.categories(params.category),
                    'categories': searchService.categories()
            ]
            return
        }

        if (params.search) {
            render view: 'index', model: [
                    'sermons'   : searchService.search(params.search),
                    'categories': searchService.categories()
            ]
            return
        }

        render view: 'index', model: [
                'sermons'   : searchService.all(),
                'categories': searchService.categories()
        ]
    }
}
