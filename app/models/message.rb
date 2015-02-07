class Message
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :body, :phone
  validates_presence_of :name, :email, :subject, :body, :message => " - поле обязательно для заполнения"
  validates_format_of :email, :with =>  /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\Z/i ,
                      :message => "неверный формат"
  validates_numericality_of :phone, :message => "должен состоять только из цифр"

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end



end