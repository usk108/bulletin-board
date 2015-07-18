class Post < ActiveRecord::Base
	validates :username, presence: { message: "入力してください"}
	validates :comment, presence: { message: "入力してください"}
end
