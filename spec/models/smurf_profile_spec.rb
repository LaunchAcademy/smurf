require 'spec_helper'

describe SmurfProfile do

  it { should_not have_valid(:name).when('') }
  it { should_not have_valid(:name).when(nil) }

  it { should have_valid(:name).when('Smurfette') }
end
