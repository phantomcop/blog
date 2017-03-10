class Comment < ApplicationRecord
	validates_presence_of :name, :email, :body
	validate :article_should_be_published

	belongs_to :article

	# after_create :email_article_author

	def article_should_be_published
		errors.add(:article_id, "Is not published yet") if article && !article.published?
	end

	# def email_article_author
	# 	puts " #{article.user.email} in chapter 9"
	# end


end
