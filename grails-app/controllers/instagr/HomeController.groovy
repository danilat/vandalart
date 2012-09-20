package instagr

class HomeController {
    def instagramService

    def index() {
        def model = [photos:Photo.list(max:45, order: 'desc', sort:'id', offset: params.int('offset')), total: Photo.count()]
        if(request.xhr){
            render(template:'list', model: model)
        }else{
            return model
        }
    }
    
    def show() {
        def photo = Photo.get(params.id)
        if(photo){
            [photo:photo]
        }else{
            redirect action:'index'
        }
    }

    def map(){
        def photos = Photo.findAllByLatitudeIsNotNullAndLongitudeIsNotNull(max:50, order: 'desc', sort:'id')
        return [photos: photos]
    }
}

/*
curl -F 'client_id=f5388b6c7b7140adb6f1893af465237f' \
     -F 'client_secret=ceca24b8fd0a4ac4b2f4f9befa46fe47' \
     -F 'object=tag' \
     -F 'aspect=media' \
     -F 'object_id=urbanart' \
     -F 'callback_url=http://vandalart.danilat.cloudbees.net/home/store' \
     https://api.instagram.com/v1/subscriptions/
curl -F 'client_id=f5388b6c7b7140adb6f1893af465237f' \
     -F 'client_secret=ceca24b8fd0a4ac4b2f4f9befa46fe47' \
          -F 'object=tag' \
          -F 'aspect=media' \
          -F 'object_id=arteurbano' \
          -F 'callback_url=http://vandalart.danilat.cloudbees.net/home/store' \
          https://api.instagram.com/v1/subscriptions/

*/
