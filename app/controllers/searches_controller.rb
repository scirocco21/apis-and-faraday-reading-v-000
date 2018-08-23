class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = X4DLGFTVWLPN5RHPVWK4OKKVLC4V14PV013MG1EMWXO0VF0I
      req.params['client_secret'] = AZZGT2KOEQKSGXHMAUOMHVNA2B0IM2PP5GRPEBM2P1JH1BAJ
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
