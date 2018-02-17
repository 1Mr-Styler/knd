package knd

class SermonsTagLib {
    static namespace = 'sermon'
    static defaultEncodeAs = [taglib: 'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def sermonsService

    def latest = {
        def l = sermonsService.getLatest()

        def bod = '<div class="list-group">'

        for (int i = 0; i < 4; i++) {
            if (l[i] == null)
                break

            bod += """
<a href="${createLink(controller: 'downloads')}/${l[i].id}" class="list-group-item">
                    <p class="list-group-item-heading">${l[i].title}</p>

                    <p class="list-group-item-text">${l[i].length}</p>
                </a>
"""
        }

        bod += "</div>"

        out << bod
    }
}
