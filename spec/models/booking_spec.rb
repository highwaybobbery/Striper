require 'spec_helper'

describe Booking do
  it { should have_db_column :time }
  it { should have_db_column :email }
  it { should have_db_column :description }

  it { should have_db_index :email }

  it { should validate_presence_of :time }
  it { should validate_numericality_of :time }
  it { should validate_presence_of :email }
  it { should validate_presence_of :description }
end
