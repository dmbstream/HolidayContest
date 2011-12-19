class HomeController < ApplicationController
  def index
    if params.has_key?(:signed_request)
      if cookies[:has_submitted].present?
        return redirect_to thank_you_path
      end
      p = params['signed_request'].split('.')[1]
      json = Base64.decode64(p + "=" * (4 - p.size % 4))
      data = ActiveSupport::JSON.decode(json)
      liked = data["page"]["liked"]
      if liked
        return redirect_to new_submission_path
      end
    end
  end

end
