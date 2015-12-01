class Notice
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :num, :type => Integer
  field :title, :type => String
  field :toname, :type => String
  field :body, :type => String
  field :sig, :type => String
  field :attach, :type => String
  field :sname, :type => String
  field :snumber, :type => String
  field :sorg, :type => String
  field :togroup, :type => Array
  field :tognum, :type => Array
  field :over, :type => String
  field :ack, :type => Boolean
  field :remind, :type => Boolean
  field :status, :type => String
  field :priority, :type => String

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
