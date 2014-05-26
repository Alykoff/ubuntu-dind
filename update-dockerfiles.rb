#!/usr/bin/env ruby
require "erb"
require "fileutils"

class Dist
  def initialize(version, use_docker_io)
    @version = version
    @use_docker_io = use_docker_io
  end

  def render
    ERB.new(File.read("Dockerfile.erb")).result binding
  end
end

[
  { version: "12.04", use_docker_io: false },
  { version: "12.10", use_docker_io: false },
  { version: "13.04", use_docker_io: false },
  { version: "13.10", use_docker_io: false },
  { version: "14.04", use_docker_io: true },
]. each do |dist|
  File.open("#{dist[:version]}/Dockerfile", "w") do |f|
    f.write Dist.new(dist[:version], dist[:use_docker_io]).render
  end

  FileUtils.cp "dind", "#{dist[:version]}/dind"
end
