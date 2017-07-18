class SponsorshipsController < ApplicationController
  def index
    if params[:player_id]
      player = Player.find(params[:player_id])
      sponsorships = player.sponsorships
      render :json => sponsorships.as_json(include: {sponsor: {only: :name}})
    end
    if params[:sponsor_id]
      sponsor = Sponsor.find(params[:sponsor_id])
      sponsorships = sponsor.sponsorships
      render :json => sponsorships.as_json(include: {player: {only: :name}})
    end
  end
end
