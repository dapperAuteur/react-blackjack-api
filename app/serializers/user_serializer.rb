class UserSerializer < ActiveModel::Serializer
  attributes :token, :win_count, :loss_count
end
