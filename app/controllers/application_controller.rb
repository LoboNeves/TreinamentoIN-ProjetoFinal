class ApplicationController < ActionController::API
    def current_user
        token = request.headers['Authorization']
        JsonWebToken.decode(token)
    end
    def is_logged
        if current_user.present?
            render json: {message: 'Está logado'}
        else
            render json: {message: 'Não está logado'}, status: 404
        end
    end
end
