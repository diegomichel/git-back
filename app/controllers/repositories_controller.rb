class RepositoriesController < ApplicationController
  def index
    repos = Github.repos.list user: params[:user]
    render json: repos.map(&:html_url)
  end
end
