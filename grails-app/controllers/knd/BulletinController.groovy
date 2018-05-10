package knd

class BulletinController {

    def index(Bulletin bulletin) {
        render "<title>Koinonia: ${bulletin.title.take(20)}...</title>This page is undergoing maintenance. Please check back later."
    }
}
