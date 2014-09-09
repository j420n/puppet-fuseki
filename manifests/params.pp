# == Class fuseki::params
#
# === Parameters
#
# [*source_dir*]
#   If defined, the whole fuseki configuration directory content is retrieved recursively from
#   the specified source (parameter: source => $source_dir , recurse => true)
#
# [*source_dir_purge*]
#   If set to true all the existing configuration directory is overriden by the
#   content retrived from source_dir. (source => $source_dir , recurse => true , purge => true)
#
class fuseki::params {
  $fuseki_version   = '1.0.2'
  $fuseki_user      = 'fuseki'
  $fuseki_group     = 'fuseki'
  $fuseki_settings  = '/etc/default/fuseki'

  $fuseki_home      = '/usr/share/fuseki'
  $fuseki_logs      = "${fuseki_home}/logs"
  $fuseki_lib       = '/var/lib/fuseki'
  $fuseki_backups   = "${fuseki_lib}/backups"
  $fuseki_databases = "${fuseki_lib}/databases"

  $service_name     = 'fuseki'
  $config           = 'puppet:///modules/fuseki/'

  case $::osfamily {
    'Debian': {
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
