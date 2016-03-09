class IssuesController < ApplicationController
  def show
    # render plain: params[:id].inspect
    @issue = Issue.find(params[:id]);
  end

  def destroy
    issue = Issue.find(params[:id])
    issue.destroy
    redirect_to :root
  end
end
