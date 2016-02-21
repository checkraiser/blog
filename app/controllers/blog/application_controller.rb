module Blog
  class ApplicationController < ::AccountsController
  	before_action :set_account_connection

  	protected
  	def set_account_connection
  	  if current_account and current_account.shard
        ActiveRecord::Base.establish_connection current_account.shard.pg_url
      end
  	end
  end
end
