# == Schema Information
#
# Table name: companies
#
#  id         :uuid             not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end