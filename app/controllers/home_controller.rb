class HomeController < ApplicationController
  def index
    if params.has_key?(:signed_request)
      p = params['signed_request'].split('.')[1]
      json = Base64.decode64(p + "=" * (4 - p.size % 4))
      data = ActiveSupport::JSON.decode(json)
      liked = data["page"]["liked"]
      if liked
        redirect_to new_submission_path
      end
    end
  end

end
