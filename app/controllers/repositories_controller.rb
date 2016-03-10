class RepositoriesController < ApplicationController
  def index
    repos = Github.repos.list user: params[:user]
    repos_clean = []
    repos.each_with_index do |r, i|
      repos_clean << {
        id: i,
        type: 'repository',
        attributes: {name:r[:name], url:r[:html_url]}
      }
    end
    render json: {data: repos_clean}
  end
end
