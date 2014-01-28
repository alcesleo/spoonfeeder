require 'spec_helper'

describe User do

  it "is valid with a username and confirmed password" do
    user = User.new(
      name: 'Username',
      password: 'Password',
      password_confirmation: 'Password')
    expect(user).to be_valid
  end

  it "is invalid without a username" do
    expect(User.new(name: nil)).to have(1).errors_on(:name)
  end

  it "is invalid without a password" do
    expect(User.new(password: nil)).to have(1).errors_on(:password)
  end

  it "is invalid without a password confirmation" do
    expect(User.new(password_confirmation: nil)).to have(1).errors_on(:password_confirmation)
  end

  it "is invalid if it is a duplicate" do
    user = User.new(
      name: 'Username',
      password: 'Password',
      password_confirmation: 'Password')

    user.save

    duplicate_user = User.new(
      name: 'Username',
      password: 'Password',
      password_confirmation: 'Password')

    expect(duplicate_user).to be_invalid

  end

  it "always has at least one admin user remaining" do
    # create user
    user = User.create(
      name: 'Username',
      password: 'Password',
      password_confirmation: 'Password')

    user.delete
    expect(User.all.count).to be 1
  end
end
