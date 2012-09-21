package instagr

import groovy.json.JsonSlurper
import org.codehaus.groovy.grails.commons.ConfigurationHolder as CH

class InstagramService {

    def pullData(tag){
        def clientId = CH.config.instagram.clientId
        def url = "https://api.instagram.com/v1/tags/${tag}/media/recent?client_id=${clientId}"
        def data = new URL(url).getText()
        def slurper = new JsonSlurper()
        def result = slurper.parseText(data)
        def importedData = result.data.reverse()
        importedData.each{
            def photo = Photo.findByInstagramId(it.id)
            if(!photo){
                def description = it.caption?.text?.replaceAll("[^\\d\\sa-zA-Z]", "")
                photo = new Photo(
                        instagramId: it.id,
                        url: it.images.standard_resolution.url,
                        thumb: it.images.low_resolution.url,
                        username: it.user.username,
                        //fullName: it.user.full_name,
                        //bio: it.user.bio,
                        website: it.user.website,
                        profile: it.user.profile_picture,
                        //description: description,
                        createdTime: it.caption?.created_time,
                        instagram: it.link)
                if(it.location){
                    photo.latitude = it.location.latitude
                    photo.longitude = it.location.longitude
                }
            }
            photo.save()
        }
        
        println Photo.count()
    }
}
