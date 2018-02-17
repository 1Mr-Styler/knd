package knd

class SliderTagLib {
    def slidersService
    static defaultEncodeAs = [taglib: 'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    def main = {

        def datA = slidersService.load()

        out << """

<div class="carousel-inner">
        <div class="item slide-one active">
            <div class="container">
                <div class="carousel-caption">
                    <h3>${datA[0].title}</h3>
                    <p class="lead">${datA[0].body}</p>
                    <p>
                    <a class="btn btn-lg btn-primary" href="charity-donation.html" role="button">
                    ${datA[0].btn} &rarr;</a></p>
                </div>
            </div>
        </div>
        <div class="item slide-two">
            <div class="container">
                <div class="carousel-caption">
                    <h2>${datA[1].title}</h2>
                    <p class="lead">${datA[1].body}</p>
                    <p><a class="btn btn-lg btn-primary" href="ministry.html" role="button">${datA[1].btn} &rarr;</a></p>
                </div>
            </div>
        </div>
        <div class="item slide-three">
            <div class="container">
                <div class="carousel-caption">
                    <h2>${datA[2].title}</h2>
                    <p class="lead">${datA[2].body}</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">${datA[2].btn}
                    &rarr;</a></p>
                </div>
            </div>
        </div>
    </div>
"""
    }

}
