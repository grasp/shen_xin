class Users
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :app_id, :type => Array
  field :number, :type => Integer
  field :email, :type => String
  field :mphone, :type => String
  field :name, :type => String
  field :cnumber, :type => String
  field :passwd, :type => String

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
