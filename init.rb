require 'redmine'
# require_dependency "redmine_git_remote/repositories_helper_patch"

Redmine::Scm::Base.add "GitRemote"

Redmine::Plugin.register :redmine_git_remote do
  name 'Redmine Git Remote'
  author 'Alex Dergachev'
  url 'https://github.com/dergachev/redmine_git_remote'
  description 'Automatically clone and fetch remote git repositories'
  version '0.0.2'

  settings :default => {
    'git_remote_repo_clone_path' => Pathname.new(__FILE__).join("../").realpath.to_s + "/repos",
  }, :partial => 'settings/git_remote_settings'
end
