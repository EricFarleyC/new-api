module RenderConcern
  def initialize_render_concern(result, success_status = :ok, error_status = :bad_request,
                                options = {})
    @result = result
    @success_status = result.status || success_status
    @error_status = result.status || error_status
    @options = result.options || options
  end
end