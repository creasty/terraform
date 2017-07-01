#  Main
#-----------------------------------------------
resource "dnsimple_record" "main-a" {
    domain = "creasty.com"
    name   = ""
    type   = "A"
    value  = "104.199.134.179"
    ttl    = 3600
}

resource "dnsimple_record" "main-www-url" {
    domain = "creasty.com"
    name   = "www"
    type   = "URL"
    value  = "http://creasty.com"
    ttl    = 3600
}

resource "dnsimple_record" "main-dotfiles-url" {
    domain = "creasty.com"
    name   = "dotfiles"
    type   = "URL"
    value  = "https://raw.githubusercontent.com/creasty/dotfiles/master"
    ttl    = 3600
}

resource "dnsimple_record" "main-google-site-verification-txt" {
    domain = "creasty.com"
    name   = ""
    type   = "TXT"
    value  = "google-site-verification=7m9d0EcGD-uRPe0kKv4wRZYEed_B236MHTIkHi5HRTU"
    ttl    = 3600
}

resource "dnsimple_record" "main-gmail-mx-1" {
    domain   = "creasty.com"
    name     = ""
    value    = "aspmx.l.google.com"
    type     = "MX"
    # priority = 1
    ttl      = 300
}

resource "dnsimple_record" "main-gmail-mx-2" {
    domain   = "creasty.com"
    name     = ""
    value    = "alt1.aspmx.l.google.com"
    type     = "MX"
    # priority = 5
    ttl      = 300
}

resource "dnsimple_record" "main-gmail-mx-3" {
    domain   = "creasty.com"
    name     = ""
    value    = "alt2.aspmx.l.google.com"
    type     = "MX"
    # priority = 5
    ttl      = 300
}

resource "dnsimple_record" "main-gmail-mx-4" {
    domain   = "creasty.com"
    name     = ""
    value    = "aspmx2.googlemail.com"
    type     = "MX"
    # priority = 10
    ttl      = 300
}

resource "dnsimple_record" "main-gmail-mx-5" {
    domain   = "creasty.com"
    name     = ""
    value    = "aspmx3.googlemail.com"
    type     = "MX"
    # priority = 10
    ttl      = 300
}


#  From8
#-----------------------------------------------
resource "dnsimple_record" "main-from8-url" {
    domain = "from8.help"
    name   = ""
    type   = "URL"
    value  = "https://p.wantedly.com"
    ttl    = 300
}


#  Panda
#-----------------------------------------------
resource "dnsimple_record" "panada-alias" {
    domain = "panda-meets-panda.com"
    name   = ""
    value  = "panda-meets-pand-to-sync-2006115251.ap-northeast-1.elb.amazonaws.com"
    type   = "ALIAS"
    ttl    = "3600"
}


#  Stay and Coffee
#-----------------------------------------------
resource "dnsimple_record" "stay-and-coffee-a" {
    domain = "creasty.com"
    name   = "stay-and-coffee"
    type   = "A"
    value  = "35.185.164.127"
    ttl    = 3600
}


#  Torinos
#-----------------------------------------------
resource "dnsimple_record" "torinos-api-a" {
    domain = "torinos.io"
    name   = "api"
    type   = "A"
    value  = "104.199.172.214"
    ttl    = 3600
}
