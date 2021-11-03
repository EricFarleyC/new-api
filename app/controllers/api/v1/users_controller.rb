module Api
  module V1
    class UsersController < ApiController
      # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      def index
        initialize_render_concern(index_user_interactor)

        render_result
      end

      def show
        initialize_render_concern(show_user_interactor)

        render_result
      end

      # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


      # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      private

      # == Interactor =============================================================================

      def index_user_interactor
        UserInteractor::Index.call
      end

      def show_user_interactor
        UserInterctor::Show.call(user_params_id: user_params_id)
      end


      # == Method =================================================================================

      # == Params =================================================================================
      def user_params
        params.require(:user).permit(:name, :age)
      end

      def user_params_id
        params.require(:id)
      end
      

      # == Id =====================================================================================

      # == Poros ==================================================================================

      # == Scope ==================================================================================

      # == Serializer =============================================================================
    end
  end
end
