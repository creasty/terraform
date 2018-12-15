#  Main
#-----------------------------------------------
resource "dnsimple_record" "main-a" {
    domain = "creasty.com"
    name   = ""
    type   = "A"
    value  = "107.178.242.4"
    ttl    = 3600
}

resource "dnsimple_record" "main-www-url" {
    domain = "creasty.com"
    name   = "www"
    type   = "URL"
    value  = "https://creasty.com"
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
