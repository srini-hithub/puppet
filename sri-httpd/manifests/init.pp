class httpd {
class {'::httpd::package':} ->
class {'::httpd::config':} ~>
class {'::httpd::service':}
}
