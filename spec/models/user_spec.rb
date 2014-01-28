require 'spec_helper'

describe User do

  it "is valid with a username and password" do
    user = User.new(
      name: 'Username',
      password: 'Password',
      password_confirmation: 'Password')
    expect(user).to be_valid
  end

  it "is invalid without a username"
  it "is invalid without a password"
  it "is invalid if it is a duplicate"
  it "always has at least one admin user remaining"
end
