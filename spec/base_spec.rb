require "spec_helper"

describe ActiveRecord::SuppressRangeError do
  let (:user) do
    User.all
  end

  it "`where` should not raise RangeError" do
    expect { User.where(magic_point: 2147483648).to_a }.not_to raise_error
  end

  it "`to_sql` should not raise RangeError" do
    expect { User.where(magic_point: 2147483648).to_sql }.not_to raise_error
  end
end
