class Notice
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :num, :type => Integer   #通知的唯一编号
  field :title, :type => String  #通知的标题
  field :toname, :type => String  # 通知的接收人
  field :body, :type => String  #通知主体
  field :sig, :type => String  # 通知签名
  field :attach, :type => String  #通知附件URL
  field :sname, :type => String  # 发送人昵称
  field :snumber, :type => String  #发送人唯一编号
  field :sorg, :type => String  # 发送人组织名称
  field :togroup, :type => Array  # 接收人群名
  field :tognum, :type => Array  # 接收人群名唯一编号
  field :over, :type => String  # 过期时间
  field :ack, :type => Boolean  # 是否需要确认
  field :remind, :type => Boolean  # 是否需要提醒
  field :status, :type => String  # 草稿还是发布态
  field :priority, :type => String  # 通知优先级

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
