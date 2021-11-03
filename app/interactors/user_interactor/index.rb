module UserInteractor
  class Index
    include Interactor

    def call
      context.output = index_user        
    end
    
    private

    delegate to: :context    

    def index_user
      User.all
    end
  end
end
