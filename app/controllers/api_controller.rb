class ApiController < ApplicationController
  include RenderConcern

  def render_result
    return if render_error?

    render json: @result.output
  end

  def render_error?
    return render_error(@result.errors, @error_status) unless @result.success?

    false
  end
end
