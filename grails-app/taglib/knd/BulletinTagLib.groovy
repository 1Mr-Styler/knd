package knd

class BulletinTagLib {
    static namespace = 'bulletin'
    static defaultEncodeAs = [taglib: 'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def bulletinService

    def latest = {
        def l = bulletinService.getLatest()

        def bod = ''

        for (int i = 0; i < 4; i++) {
            if (l[i] == null)
                break

            bod += """
<div class="row">
    <div class="col-md-4 col-sm-4">
        <img class="img-responsive center-block" src="${assetPath(src: "bg/${l[i].bg}")}"
                                                    alt="bulletin blog">
    </div>

    <div class="col-md-8 col-sm-8 bulletin">
        <h4 class="media-heading">${l[i].title}</h4>
        <p>on ${g.formatDate(format: "dd MMM yyyy", date: l[i].date)} by <a href="#" class="link-reverse">${l[i].author}</a></p>

        <p class="media-content">
            ${l[i].message.take(150)}...
        </p>
        <a class="btn btn-primary" href="${createLink(controller: 'bulletin')}/${l[i].id}" role="button">Read Article →</a>
    </div>
</div>
"""
        }

        out << bod
    }


}
