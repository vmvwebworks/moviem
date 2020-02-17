module Response
  def json_response(object, status = :ok)
    render json: { content: object, status: status }
  end
end
