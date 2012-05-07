package instagr

class HomeController {
    def instagramService

    def index() {
        instagramService.pullData("urbanart")
        [photos:Photo.list(max:45, order: 'desc', sort:'id')]
    }
    
    def show() {
        def photo = Photo.get(params.id)
        if(photo){
            [photo:photo]
        }else{
            redirect action:'index'
        }
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
