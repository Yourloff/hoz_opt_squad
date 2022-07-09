class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})

  end

  def register_success
    render json: {
      message: 'Регистрация прошла успешно!',
      user: current_user
    }, status: :ok
  end

  def register_failed
    render json: { message: 'Что-то пошло не так' }, status: :unpocessable_entity
  end
end