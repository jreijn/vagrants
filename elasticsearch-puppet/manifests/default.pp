class { 'elasticsearch':
  package_url => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.2.deb',
  config => {
    'cluster.name' => 'project-cluster',
    'network' => {
        'host' => '0.0.0.0',
    }
  },
  java_install => true,
}

elasticsearch::instance { 'es-01': }

elasticsearch::plugin{'mobz/elasticsearch-head':
  module_dir => 'head',
  instances => [ 'es-01' ],
}
