class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
    @members = [ 'raffaele', 'michele', 'serena', 'nicoloo', 'antonella']

    # How to keep the search context using params in your input?
    # read this https://kitt.lewagon.com/camps/432/lectures/05-Rails%2F01-Rails-intro#/0/10/3
    # the next if statement is the implementation
    # for the rest of the implementation check the about.html.erb page
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
