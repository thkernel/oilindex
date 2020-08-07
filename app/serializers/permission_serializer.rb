class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
end
