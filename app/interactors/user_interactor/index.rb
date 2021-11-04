module UserInteractor
  class Index
    include Interactor

    def call
      context.output = index_users
    end

    private

    delegate to: :context

    def index_users
      User.all
    end
  end
end
