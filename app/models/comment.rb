class Comment < ApplicationRecord
	validates_presence_of :name, :email, :body
	validate :article_should_be_published

	belongs_to :article
	after_create :email_article_author
	after_create :send_comment_email

	def article_should_be_published
		errors.add(:article_id, "Is not published yet") if article && !article.published?
	end

	def email_article_author
		NotifierMailer.comment_added(self).deliver
	end
end