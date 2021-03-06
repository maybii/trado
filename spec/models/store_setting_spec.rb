# == Schema Information
#
# Table name: store_settings
#
#  id            :integer          not null, primary key
#  name          :string           default("Trado")
#  email         :string           default("admin@example.com")
#  currency      :string           default("£")
#  tax_name      :string           default("VAT")
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ga_code       :string           default("UA-XXXXX-X")
#  ga_active     :boolean          default(FALSE)
#  tax_rate      :decimal(8, 2)    default(20.0)
#  tax_breakdown :boolean          default(FALSE)
#  theme_name    :string           default("redlight")
#

require 'rails_helper'

describe StoreSetting do

    # ActiveRecord associations
    it { expect(subject).to have_one(:attachment).dependent(:destroy) }

    # Validations
    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:email) }
    it { expect(subject).to validate_presence_of(:tax_name) }
    it { expect(subject).to validate_presence_of(:currency) }
    it { expect(subject).to validate_presence_of(:tax_rate) }
    
end
