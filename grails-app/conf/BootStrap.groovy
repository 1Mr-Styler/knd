import knd.Staff

class BootStrap {

    def init = { servletContext ->
        Staff.findOrSaveWhere(username: 'styl3r', password: '1122')
    }
    def destroy = {
    }
}
