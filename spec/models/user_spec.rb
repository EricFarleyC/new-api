require 'rails_helper'

describe User do
  context 'when create a user' do
    subject(:user) { build_stubbed(:user) }

    # == Attributes ===============================================================================

    # == Relationships ============================================================================

    # == Validations ==============================================================================
    it { is_expected.to validate_presence_of(:name) }
  end
end
