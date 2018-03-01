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
                    ${
            (datA[0].hasLink) ? "<p><a class=\"btn btn-lg btn-primary\" href=\"${datA[0].btnlink}\" role=\"button\">" +
                    "                    ${datA[0].btn}</a></p>": ""
        }
                </div>
            </div>
        </div>
        <div class="item slide-two">
            <div class="container">
                <div class="carousel-caption">
                    <h2>${datA[1].title}</h2>
                    <p class="lead">${datA[1].body}</p>

${
            (datA[1].hasLink) ? "<p><a class=\"btn btn-lg btn-primary\" href=\"${datA[1].btnlink}\" role=\"button\">" +
                    "                    ${datA[1].btn}</a></p>" : ""
        }
                </div>
            </div>
        </div>
        <div class="item slide-three">
            <div class="container">
                <div class="carousel-caption">
                    <h2>${datA[2].title}</h2>
                    <p class="lead">${datA[2].body}</p>
                    ${
            (datA[2].hasLink) ? "<p><a class=\"btn btn-lg btn-primary\" href=\"${datA[2].btnlink}\" role=\"button\">" +
                    "                    ${datA[2].btn}</a></p>": ""
        }
                </div>
            </div>
        </div>
    </div>
"""
    }

    def slidersBG = {
        def datA = slidersService.load()

        out << """
<style type="text/css">
        .slide-one {
    background: url("${assetPath(src: "bg/${datA[0].bg}")}") no-repeat;
    background-size: cover;
}

.slide-two {
    background: url("${assetPath(src: "bg/${datA[1].bg}")}") no-repeat;
    background-size: cover;
}

.slide-three {
    background: url("${assetPath(src: "bg/${datA[2].bg}")}") no-repeat;
    background-size: cover;
}
</style>
"""
    }

}
