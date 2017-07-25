# frozen_string_literal: true

override['travis_docker']['version'] = '17.06.0~ce-0~ubuntu'

default['travis_tfw']['docker_environment']['TRAVIS_DOCKER_TFW'] = 'oooOOOoooo'
default['travis_tfw']['docker_volume_device'] = '/dev/xvdc'
default['travis_tfw']['docker_volume_metadata_size'] = '2G'
default['travis_tfw']['docker_dm_basesize'] = '12G'
default['travis_tfw']['docker_dm_fs'] = 'xfs'
default['travis_tfw']['docker_dir'] = '/mnt/docker'
