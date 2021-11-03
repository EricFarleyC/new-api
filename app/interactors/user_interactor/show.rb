module UserInteractor
  class Show
    include Interactor

    def call
      context.output = show_user
    end

    private

    delegate :user_params_id, to: :context    

    def show_user
      User.find(user_params_id)
    end
  end
end
