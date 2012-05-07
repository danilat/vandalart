package instagr

class Photo {
    //static mapWith = "redis"
    
    String instagramId
    String url
    String thumb
    String username
    String fullName
    String bio
    String website
    String profile
    String description
    String createdTime
    String instagram
    String latitude
    String longitude
    
    Date dateCreated

    static constraints = {
        latitude(nullable:true)
        longitude(nullable:true)
        description(nullable:true)
        bio(nullable:true)
        fullName(nullable:true)
    }
    
    static mapping = {
        //instagramId index:true
        //username inex:true
        description type: 'text' 
    }
}
