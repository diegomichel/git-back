class RepositoriesController < ApplicationController
  def index
    repos = Github.repos.list user: params[:user]
    repos_clean = []
    repos.each do |r|
      repos_clean << {name:r[:name], url:r[:html_url]}
    end
    render json: repos_clean
  end
end
