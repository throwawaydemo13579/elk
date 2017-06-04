class elk {
	include 'elk::classes::install'
	include 'elk::classes::configuration'
	include 'elk::classes::elasticsearch'
	include 'elk::classes::kibana'
	include 'elk::classes::logstash'
}
