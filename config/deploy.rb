# config valid only for current version of Capistrano
lock '3.4.0'
set :default_shell, '/bin/bash -l'

deploy_user = "vagrant"

# setup app name
set :application, 'liveinfo'

# setup user deploy
set :deploy_user, deploy_user

# set :rvm_ruby_string, :local
# set :rvm_autolibs_flag, "read-only"
set :rvm_ruby_version, '2.2.0'
# setup repo details
set :repo_url, 'https://github.com/tungpt247/liveinfo.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :branch, :master
# set :deploy_to, '/var/www/my_app_name'
set :deploy_to, "/home/#{deploy_user}/liveinfo"

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# set :use_sudo, true

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
set :pty, true
# set :sudo_prompt, ""

# Files we want symlinking to specific entries in shared.
# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/nginx.production.conf', 'config/secrets.yml', 'config/unicorn.rb', 'config/unicorn_init.sh')

# Dirs we want symlinking to shared
# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Set temp dir
set :tmp_dir, "/home/#{deploy_user}/#{fetch(:application)}/tmp"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

namespace :deploy do

  # task :setup do
  #   on roles(:app), in: :sequence, wait: 5 do
  #     execute "rvm:install_rvm"
  #     execute "rvm:install_ruby"
  #   end
  # end

  %w{start stop restart}.each do |command|
    desc "#{command} unicorn server"
    task command do
      on roles(:app) do
        execute "sudo service unicorn_#{fetch(:application)} #{command}"
      end
    end
  end

  %w{start stop restart}.each do |command|
    desc "#{command} nginx server"
    task command do
      on roles(:app) do
        execute "sudo service nginx #{command}"
      end
    end
  end
  after :finishing, :restart

  # after :restart, :clear_cache do
  #   on roles(:web), in: :groups, limit: 3, wait: 10 do
  #     # Here we can do anything such as:
  #     # within release_path do
  #     #   execute :rake, 'cache:clear'
  #     # end
  #   end
  # end

  # after :finishing, 'deploy:cleanup'
  # after 'deploy', 'nginx:reload'

end
