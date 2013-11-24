package instagr



class InstagramImporterJob {
    def instagramService
    static triggers = {
      simple repeatInterval: 30*60*1000
    }

    def execute() {
        instagramService.pullData("vandalart")
        instagramService.pullData("graffiti")
        println "imported"
    }
}
